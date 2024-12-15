<?php
require 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $thread_id = $_POST['thread_id'] ?? null;
    $name = $_POST['name'] ?? 'specter';  // 名前の取得（デフォルトは "specter"）
    $content = $_POST['content'] ?? '';
    $image_path = null;

    if (!$thread_id || !$content) {
        die('必要な情報が不足しています。');
    }

    // スレ主の名前をクッキーに保存（期限は1週間）
    setcookie('thread_creator', $name, time() + (7 * 24 * 60 * 60), '/');  // 1週間の有効期限

    // 画像のアップロード処理の前に以下のコードを追加
    $upload_dir = 'upload/';
    if (!file_exists($upload_dir)) {
        mkdir($upload_dir, 0755, true);
    }

    // 画像のアップロード処理
    if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
        $file_name = uniqid() . '_' . $_FILES['image']['name'];
        $upload_path = $upload_dir . $file_name;

        if (move_uploaded_file($_FILES['image']['tmp_name'], $upload_path)) {
            $image_path = $upload_path;
        } else {
            $error_message = error_get_last();
            die('画像のアップロードに失敗しました。エラー: ' . $error_message['message']);
        }
    }

    // データベースに保存
    $stmt = $pdo->prepare("INSERT INTO responses (thread_id, name, content, image_path, created_at) VALUES (?, ?, ?, ?, NOW())");
    $stmt->execute([$thread_id, $name, $content, $image_path]);

    // スレッドページにリダイレクト
    header("Location: thread.php?thread_id=" . $thread_id);
    exit();
} else {
    die('不正なアクセスです。');
}
?>
