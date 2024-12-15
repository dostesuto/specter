<?php
require_once '../db_connect.php';  // db_connect.php をインクルード（相対パスの場合）

// ニュースデータをデータベースから取得
try {
    // SQL クエリの作成
    $stmt = $pdo->prepare('SELECT * FROM news ORDER BY created_at DESC');
    $stmt->execute();

    // 結果がない場合
    if ($stmt->rowCount() == 0) {
        echo 'ニュースがありません。';
    } else {
        // ニュースデータがあれば表示
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            echo '<h2>' . htmlspecialchars($row['title']) . '</h2>';
            echo '<p>' . nl2br(htmlspecialchars($row['content'])) . '</p>';
            echo '<hr>';
        }
    }
} catch (PDOException $e) {
    echo 'データベースエラー: ' . $e->getMessage();
}
?>
