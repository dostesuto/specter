<?php
require 'db_connect.php';

// URL パラメータから thread_id を取得
$thread_id = $_GET['thread_id'] ?? null;

if (!$thread_id) {
    echo "スレッドIDが指定されていません。";
    exit();
}

// スレッド情報を取得
$stmt = $pdo->prepare("SELECT threads.*, boards.name AS board_name, boards.slug AS board_slug FROM threads JOIN boards ON threads.board_slug = boards.slug WHERE threads.id = ?");
$stmt->execute([$thread_id]);
$thread = $stmt->fetch();

if (!$thread) {
    echo "指定されたスレッドは存在しません。";
    exit();
}

// レス情報を取得（そのスレッドに対するレス）
$stmt = $pdo->prepare("
    SELECT responses.*, (@rownum := @rownum + 1) AS rownum
    FROM responses, (SELECT @rownum := 0) r
    WHERE thread_id = ?
    ORDER BY created_at ASC
");
$stmt->execute([$thread_id]);
$responses = $stmt->fetchAll(PDO::FETCH_ASSOC);

// URLをリンクに変換する関数
function auto_link($text) {
    // URLを見つけてリンクに変換
    return preg_replace(
        '/(https?:\/\/[^\s]+)/',
        '<a href="$1" target="_blank" rel="noopener noreferrer">$1</a>',
        $text
    );
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>/<?php echo htmlspecialchars($thread['board_slug'], ENT_QUOTES, 'UTF-8'); ?>/ - <?php echo htmlspecialchars($thread['title'], ENT_QUOTES, 'UTF-8'); ?></title>
    <style>
        body {
            font-family: arial,helvetica,sans-serif;
            font-size: 10pt;
            background-color: #EEF2FF;
            color: #000000;
            margin: 0;
            padding: 8px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        .board-header {
            color: #AF0A0F;
            font-size: 24pt;
            font-weight: bold;
        }
        .thread-title {
            color: #0F0C5D;
            font-size: 12pt;
            font-weight: bold;
        }
        .post {
            background-color: #D6DAF0;
            border: 1px solid #B7C5D9;
            padding: 5px;
            margin-bottom: 5px;
        }
        .post-header {
            color: #117743;
            font-weight: bold;
        }
        .post-number {
            color: #000000;
            font-weight: normal;
        }
        .post-name {
            color: #117743;
            font-weight: bold;
        }
        .post-tripcode {
            color: #117743;
        }
        .post-date {
            color: #000000;
        }
        .post-content {
            margin-top: 5px;
        }
        .post-form {
            background-color: #D6DAF0;
            border: 1px solid #B7C5D9;
            padding: 5px;
            margin-top: 20px;
        }
        .post-form input[type="text"], .post-form textarea {
            width: 300px;
            margin-bottom: 5px;
        }
        .post-form textarea {
            height: 100px;
        }
        .post-form input[type="submit"] {
            font-size: 10pt;
            background-color: #EEF2FF;
            border: 1px solid #B7C5D9;
            cursor: pointer;
        }
        .board-nav {
            margin-bottom: 20px;
        }
        .board-nav a {
            color: #34345C;
            text-decoration: none;
            margin-right: 5px;
        }
        .board-nav a:hover {
            text-decoration: underline;
        }
        .footer {
            font-size: 9pt;
            color: #707070;
            margin-top: 20px;
            text-align: center;
        }
        .post-image {
            margin-top: 5px;
            margin-bottom: 5px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="board-nav">
            [<a href="http://naisuweb.starfree.jp/index.php">Home</a>]
            [<a href="/<?php echo htmlspecialchars($thread['board_slug'], ENT_QUOTES, 'UTF-8'); ?>/thread.php?thread_id=">Return</a>]
            [<a href="#bottom">Bottom</a>]
            [<a href="catalog.php?board=<?php echo htmlspecialchars($thread['board_slug'], ENT_QUOTES, 'UTF-8'); ?>">Catalog</a>]
        </div>

        <header>
            <h1 class="board-header">/<?php echo htmlspecialchars($thread['board_slug'], ENT_QUOTES, 'UTF-8'); ?>/ - <?php echo htmlspecialchars($thread['board_name'], ENT_QUOTES, 'UTF-8'); ?></h1>
            <h2 class="thread-title"><?php echo htmlspecialchars($thread['title'], ENT_QUOTES, 'UTF-8'); ?></h2>
        </header>

        <?php foreach ($responses as $response): ?>
            <div class="post" id="p<?php echo $response['rownum']; ?>">  <!-- レス番号をIDに設定 -->
                <div class="post-header">
                    <span class="post-name"><?php echo htmlspecialchars($response['name'] ?: 'Specter', ENT_QUOTES, 'UTF-8'); ?></span>
                    <span class="post-tripcode"></span>
                    <span class="post-date"><?php echo date('Y/m/d(D)H:i:s', strtotime($response['created_at'])); ?></span>
                    <span class="post-number">No.<?php echo $response['rownum']; ?></span>
                </div>
                <?php if ($response['image_path']): ?>
                    <div class="post-image">
                        <a href="<?php echo htmlspecialchars($response['image_path'], ENT_QUOTES, 'UTF-8'); ?>" target="_blank">
                            <img src="<?php echo htmlspecialchars($response['image_path'], ENT_QUOTES, 'UTF-8'); ?>" alt="投稿画像" style="max-width: 200px; max-height: 200px;">
                        </a>
                    </div>
                <?php endif; ?>
                <div class="post-content">
                    <?php 
                    // レスポンス内容内の「>>番号」をリンクに変換
                    $content = nl2br(auto_link($response['content']));
                    $content = preg_replace('/>>(\d+)/', '<a href="#p$1">>>$1</a>', $content);
                    echo $content; 
                    ?>
                </div>
            </div>
        <?php endforeach; ?>

        <form class="post-form" action="create_response.php" method="POST" enctype="multipart/form-data">
            <input type="text" name="name" placeholder="名前" value="">
            <br>
            <textarea name="content" placeholder="コメント" required></textarea>
            <br>
            <input type="file" name="image">
            <br>
            <input type="hidden" name="thread_id" value="<?php echo htmlspecialchars($thread_id, ENT_QUOTES, 'UTF-8'); ?>">
            <input type="submit" value="書き込む">
        </form>

        <div class="board-nav">
            [<a href="http://naisuweb.starfree.jp/index.php">Home</a>]
            [<a href="/<?php echo htmlspecialchars($thread['board_slug'], ENT_QUOTES, 'UTF-8'); ?>/thread.php?thread_id=">Return</a>]
            [<a href="#top">Top</a>]
            [<a href="catalog.php?board=<?php echo htmlspecialchars($thread['board_slug'], ENT_QUOTES, 'UTF-8'); ?>">Catalog</a>]
        </div>

        <footer class="footer">
            <p>All trademarks and copyrights on this page are owned by their respective parties. Images uploaded are the responsibility of the Poster. Comments are owned by the Poster.</p>
        </footer>
    </div>

    <script>
        // ページがリロードされるときに自動的にスクロールして一番下に移動する
        window.onload = function() {
            // スクロール位置を一番下に設定
            window.scrollTo(0, document.body.scrollHeight);
            
            // URLに#pXの形式があれば、その位置にスクロールする
            if (window.location.hash) {
                const target = document.querySelector(window.location.hash);
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth' });
                }
            }
        };

        // レス番号のリンクをクリックした時にそのレスへ移動する
        document.querySelectorAll('a[href^="#p"]').forEach(function(link) {
            link.addEventListener('click', function(e) {
                e.preventDefault();  // デフォルトの動作（ページ移動）を防ぐ
                var target = document.querySelector(this.getAttribute('href'));  // 対象のレスを取得
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth' });  // スムーズにスクロール
                }
            });
        });

        // ページ読み込み時にスクロール位置を調整
        window.onload = function() {
            if (window.location.hash) {
                const target = document.querySelector(window.location.hash);
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth' });
                }
            } else {
                window.scrollTo(0, document.body.scrollHeight);  // 最初はページの下部にスクロール
            }
        };
    </script>
</body>
</html>