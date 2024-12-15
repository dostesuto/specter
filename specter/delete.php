<?php
require 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $post_id = $_POST['post_id'];
    $thread_id = $_POST['thread_id'];

    // 投稿を削除
    $stmt = $pdo->prepare("DELETE FROM thread_posts WHERE id = ?");
    $stmt->execute([$post_id]);

    // リダイレクト
    header("Location: thread.php?thread_id=" . $thread_id);
    exit(); // スクリプト終了
}
?>

