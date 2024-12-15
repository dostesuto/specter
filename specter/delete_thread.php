<?php
require 'db_connect.php';

// スレッドIDとパスワードを取得
$thread_id = $_POST['thread_id'];
$password = $_POST['password'];

// スレッドのパスワードを取得
$stmt = $pdo->prepare("SELECT password FROM threads WHERE id = ?");
$stmt->execute([$thread_id]);
$thread = $stmt->fetch();

if ($thread) {
    // パスワードが設定されている場合、入力されたパスワードと比較
    if ($thread['password'] && password_verify($password, $thread['password'])) {
        // パスワードが一致する場合、スレッドを削除
        $delete_stmt = $pdo->prepare("DELETE FROM threads WHERE id = ?");
        $delete_stmt->execute([$thread_id]);

        // 関連する投稿も削除
        $delete_posts_stmt = $pdo->prepare("DELETE FROM thread_posts WHERE thread_id = ?");
        $delete_posts_stmt->execute([$thread_id]);

        echo "スレッドが削除されました。";
    } else {
        echo "パスワードが間違っています。";
    }
} else {
    echo "スレッドが存在しません。";
}
?>
