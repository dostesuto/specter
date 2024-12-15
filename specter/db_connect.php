<?php
$host = 'mysql1.php.starfree.ne.jp'; 
$dbname = 'naisuweb_date';     
$user = 'naisuweb_date';      
$pass = 's1901605642z';          

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "";  // 接続確認メッセージ
} catch (PDOException $e) {
    echo "データベース接続エラー: " . $e->getMessage();
    exit();
}
?>
