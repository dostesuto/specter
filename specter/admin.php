<?php
session_start();  // セッション開始

// 設定するパスワード（適切なパスワードを設定）
define('PASSWORD', 'your_password');  // ここに任意のパスワードを設定

// ログインしていない、またはセッション情報が無ければパスワードフォームを表示
if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    // パスワードが送信されていない場合、または不正なパスワードの場合
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['password']) && $_POST['password'] === PASSWORD) {
        $_SESSION['logged_in'] = true;  // セッションにログイン情報を保存
        header('Location: admin.php');   // ログイン後、ページをリロード
        exit;  // リダイレクト後は処理を終了
    } else {
        // パスワードフォームを表示
        echo '<form method="POST" action="admin.php">
                <label for="password">パスワードを入力してください:</label>
                <input type="password" name="password" id="password" required>
                <input type="submit" value="ログイン">
              </form>';
        exit;  // ログインフォームを表示した時点で処理を終了
    }
}

// ログイン後の処理
require_once 'db_connect.php';  // DB接続ファイルをインクルード

// ニュース投稿処理
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['title'], $_POST['content'])) {
    $title = $_POST['title'];
    $content = $_POST['content'];

    // 画像アップロード処理
    $imagePath = null;
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        // アップロードされた画像の確認
        $imageTmpName = $_FILES['image']['tmp_name'];
        $imageName = uniqid('image_', true) . '.' . pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $imageDir = 'uploads/';

        // アップロードされた画像の種類を確認
        $allowedTypes = ['image/jpeg', 'image/png', 'image/gif'];
        $imageType = mime_content_type($imageTmpName);
        if (!in_array($imageType, $allowedTypes)) {
            echo '許可されていない画像形式です。';
            exit;
        }

        // uploadsディレクトリがない場合は作成
        if (!is_dir($imageDir)) {
            mkdir($imageDir, 0777, true);
        }

        $imagePath = $imageDir . $imageName;

        // 画像を指定のディレクトリに保存
        if (!move_uploaded_file($imageTmpName, $imagePath)) {
            echo '画像のアップロードに失敗しました。';
            exit;
        }
    }

    // 入力されたデータの検証（空白でないことを確認）
    if (empty($title) || empty($content)) {
        echo 'タイトルと内容を入力してください。';
    } else {
        try {
            $stmt = $pdo->prepare("INSERT INTO news (title, content, image, created_at) VALUES (:title, :content, :image, NOW())");
            $stmt->bindParam(':title', $title);
            $stmt->bindParam(':content', $content);
            $stmt->bindParam(':image', $imagePath); // 画像パスをデータベースに保存
            $stmt->execute();
            echo 'ニュースが正常に追加されました！';
        } catch (PDOException $e) {
            echo 'ニュースの追加に失敗しました: ' . $e->getMessage();
        }
    }
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ニュース作成</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>ニュース作成</h1>
    <form method="POST" action="admin.php" enctype="multipart/form-data">
        <label for="title">タイトル:</label>
        <input type="text" name="title" id="title" required><br>

        <label for="content">内容:</label><br>
        <textarea name="content" id="content" rows="5" required></textarea><br>

        <label for="image">画像をアップロード:</label>
        <input type="file" name="image" id="image"><br>

        <input type="submit" value="ニュースを作成">
    </form>
</body>
</html>
