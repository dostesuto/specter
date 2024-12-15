<?php
include 'db_connect.php';

// 掲示板のタイトルと説明（固定）
$board_title = "0chan";  // 掲示板のタイトル
$board_description = "0chanは、誰でもコメントを投稿したり画像を共有したりできるシンプルな画像掲示板です。プログラミングやビデオゲーム、音楽、写真に至るまで、さまざまなトピックに特化した掲示板があります。ユーザーはコミュニティに参加する前にアカウントを登録する必要はありません。興味のある掲示板を下から選んで、すぐに参加してみてください！
投稿する前に、必ず<a href=\"/rules\">ルール</a>を確認し、サイトの使い方についてもっと知りたい場合は<a href=\"/faq\">FAQ</a>を読んでください。 anonymously.";  // 掲示板の説明

// 板一覧を取得
$stmt = $pdo->query("SELECT * FROM boards");
$boards = $stmt->fetchAll(PDO::FETCH_ASSOC);

// 最新のニュースを取得（データベースから）
$stmt_news = $pdo->query("SELECT * FROM news ORDER BY created_at DESC LIMIT 5");
$news_items = $stmt_news->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= htmlspecialchars($board_title) ?></title>
    <link rel="icon" href="image/favicon.png" type="image/png">

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
            text-align: center;
            margin-bottom: 20px;
        }

        .board-header h1 {
            font-size: 24pt;
            margin: 0;
        }

        .board-description {
            font-size: 10pt;
            margin-top: 5px;
        }

        .board-nav {
            text-align: center;
            margin-bottom: 20px;
        }

        .board-nav a {
            color: #34345C;
            text-decoration: none;
            margin: 0 5px;
        }

        .board-nav a:hover {
            color: #ff0000;
        }

        .board-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .board-item {
            background-color: #D6DAF0;
            border: 1px solid #B7C5D9;
            border-radius: 3px;
            margin-bottom: 10px;
            padding: 5px;
            width: calc(25% - 10px);
            box-sizing: border-box;
        }

        .board-link {
            text-decoration: none;
            color: inherit;
        }

        .board-title {
            color: #AF0A0F;
            font-weight: bold;
            font-size: 11pt;
        }

        .board-title:hover {
            text-decoration: underline;
        }

        .news-section {
            margin-top: 40px;
            background-color: #F5F5F5;
            padding: 20px;
            border-radius: 5px;
        }

        .news-section h2 {
            text-align: center;
            color: #333;
            font-size: 18pt;
        }

        .news-item {
            margin-bottom: 15px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }

        .news-title {
            font-size: 14pt;
            color: #AF0A0F;
            font-weight: bold;
        }

        .news-content {
            font-size: 12pt;
            color: #333;
            margin-top: 5px;
        }

        .footer {
            text-align: center;
            font-size: 9pt;
            color: #666666;
            margin-top: 20px;
        }

        @media (max-width: 600px) {
            .board-item {
                width: calc(50% - 10px);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- 掲示板のタイトルと説明 -->
        <header class="board-header">
            <h1><?= htmlspecialchars($board_title) ?></h1>
            <p class="board-description"><?= $board_description ?></p>
        </header>

        <!-- ナビゲーション -->
        <nav class="board-nav">
            <a href="/index.php">Home</a>
            <a href="/news">News</a>
            <a href="/faq">FAQ</a>
            <a href="/rules">Rules</a>
            <a href="/support">Support 4chan</a>
        </nav>

        <!-- 板の一覧 -->
        <div class="board-list">
            <?php foreach ($boards as $board): ?>
                <div class="board-item">
                    <a href="board.php?board_slug=<?= urlencode($board['slug']) ?>" class="board-link">
                        <div class="board-title"><?= htmlspecialchars($board['name']) ?></div>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>

        <!-- ニュースセクション -->
<div class="news-section">
    <h2>最新のニュース</h2>
    <?php foreach ($news_items as $news): ?>
        <div class="news-item">
            <div class="news-title"><?= htmlspecialchars($news['title']) ?></div>

            <!-- URLをリンクに変換 -->
            <div class="news-content">
                <?= nl2br(auto_link($news['content'])) ?>
            </div>

            <?php if (!empty($news['image'])): ?>
                <img src="<?= htmlspecialchars($news['image']) ?>" alt="news image" class="news-image">
            <?php endif; ?>

            <div class="news-date"><?= htmlspecialchars($news['created_at']) ?></div>
        </div>
    <?php endforeach; ?>
</div>

<?php
// URLをリンクに変換する関数
function auto_link($text) {
    // URLをhttp://またはhttps://で始まるリンクに変換
    $text = preg_replace_callback(
        '#(https?://[^\s]+)#',
        function ($matches) {
            // URL部分だけリンクに変換
            return '<a href="' . htmlspecialchars($matches[0]) . '" target="_blank">' . htmlspecialchars($matches[0]) . '</a>';
        },
        $text
    );
    return $text;
}
?>

        <!-- フッター -->
        <footer class="footer">
            <p>Copyright &#169; 2023 4chan community support LLC. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>
