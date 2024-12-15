<?php
require 'db_connect.php';

// URL パラメータから slug を取得
$slug = $_GET['board_slug'] ?? null;

if (!$slug) {
    echo "正しいURLでアクセスしてください。板の識別子（slug）が見&#65533;&#65533;&#65533;かりません。";
    exit();
}

// 指定された板の情報を取得
$stmt = $pdo->prepare("SELECT * FROM boards WHERE slug = ?");
$stmt->execute([$slug]);
$board = $stmt->fetch();

if (!$board) {
    echo "指定された板が存在しません。";
    exit();
}

// 指定された板に紐づくスレッドを取得（board_slug を使用）
$stmt = $pdo->prepare("SELECT * FROM threads WHERE board_slug = ? ORDER BY created_at DESC");
$stmt->execute([$slug]);
$threads = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>/<?php echo htmlspecialchars($board['slug'], ENT_QUOTES, 'UTF-8'); ?>/ - <?php echo htmlspecialchars($board['name'], ENT_QUOTES, 'UTF-8'); ?></title>
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
        .board-description {
            font-size: 10pt;
            margin-bottom: 20px;
        }
        .thread-list {
            background-color: #D6DAF0;
            border: 1px solid #B7C5D9;
            padding: 5px;
        }
        .thread-item {
            background-color: #EEF2FF;
            border: 1px solid #B7C5D9;
            margin-bottom: 5px;
            padding: 5px;
        }
        .thread-title {
            color: #0F0C5D;
            font-weight: bold;
            text-decoration: none;
        }
        .thread-title:hover {
            text-decoration: underline;
        }
        .thread-meta {
            font-size: 9pt;
            color: #707070;
        }
        .post-form {
            background-color: #D6DAF0;
            border: 1px solid #B7C5D9;
            padding: 5px;
            margin-top: 20px;
        }
        .post-form input[type="text"] {
            width: 300px;
            margin-bottom: 5px;
        }
        .post-form textarea {
            width: 300px;
            height: 100px;
            margin-bottom: 5px;
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
    </style>
</head>
<body>
    <div class="container">
        <div class="board-nav">
            [<a href="/">Home</a>]
            [<a href="/<?php echo htmlspecialchars($board['slug'], ENT_QUOTES, 'UTF-8'); ?>/">Reload</a>]
            [<a href="#bottom">Bottom</a>]
            [<a href="catalog.php?board=<?php echo htmlspecialchars($board['slug'], ENT_QUOTES, 'UTF-8'); ?>">Catalog</a>]
        </div>

        <header>
            <h1 class="board-header">/<?php echo htmlspecialchars($board['slug'], ENT_QUOTES, 'UTF-8'); ?>/ - <?php echo htmlspecialchars($board['name'], ENT_QUOTES, 'UTF-8'); ?></h1>
            
        </header>

        <form class="post-form" action="create_thread.php" method="POST" enctype="multipart/form-data">
            <input type="text" name="title" placeholder="スレッドタイトル" required>
            <br>
            <textarea name="content" placeholder="本文" required></textarea>
            <br>
            <input type="file" name="image">
            <br>
            <input type="hidden" name="board_slug" value="<?php echo htmlspecialchars($board['slug'], ENT_QUOTES, 'UTF-8'); ?>">
            <input type="submit" value="新規スレッド作成">
        </form>

        <hr>

        <div class="thread-list">
            <?php foreach ($threads as $thread): ?>
                <div class="thread-item">
                    <a href="thread.php?thread_id=<?php echo $thread['id']; ?>" class="thread-title">
                        <?php echo htmlspecialchars($thread['title'], ENT_QUOTES, 'UTF-8'); ?>
                    </a>
                    <span class="thread-meta">
                        (<?php echo date('Y-m-d(D)H:i', strtotime($thread['created_at'])); ?>)
                    </span>
                </div>
            <?php endforeach; ?>
        </div>

        <div class="board-nav">
            [<a href="/">Home</a>]
            [<a href="/<?php echo htmlspecialchars($board['slug'], ENT_QUOTES, 'UTF-8'); ?>/">Reload</a>]
            [<a href="#top">Top</a>]
            [<a href="catalog.php?board=<?php echo htmlspecialchars($board['slug'], ENT_QUOTES, 'UTF-8'); ?>">Catalog</a>]
        </div>

        <footer class="footer">
            <p>All trademarks and copyrights on this page are owned by their respective parties. Images uploaded are the responsibility of the Poster. Comments are owned by the Poster.</p>
        </footer>
    </div>
</body>
</html>

