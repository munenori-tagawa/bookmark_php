<?php
/**
 * 1. index.phpのフォームの部分がおかしいので、ここを書き換えて、
 * insert.phpにPOSTでデータが飛ぶようにしてください。
 * 2. insert.phpで値を受け取ってください。
 * 3. 受け取ったデータをバインド変数に与えてください。
 * 4. index.phpフォームに書き込み、送信を行ってみて、実際にPhpMyAdminを確認してみてください！
 */

//1. POSTデータ取得
$countryname = $_POST['countryname'];
$name = $_POST['name'];
$latitude = $_POST['latitude'];
$longitude = $_POST['longitude'];
$content = $_POST['content'];

//2. DB接続します
try {
    //ID:'root', Password: xamppは 空白 ''
    $pdo = new PDO('mysql:dbname=gs_bookmark;charset=utf8;host=localhost', 'root', '');
} catch (PDOException $e) {
    exit('DBConnectError:'.$e->getMessage());
}

//３．データ登録SQL作成

// 1. SQL文を用意
$stmt = $pdo->prepare("INSERT INTO gs_bm_table(id, countryname, name, latitude, longitude, content, date) VALUES (NULL, :countryname, :name, :latitude, :longitude, :content, sysdate())");

//  2. バインド変数を用意
$stmt->bindValue(':countryname', $countryname, PDO::PARAM_STR);
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':latitude', $latitude, PDO::PARAM_STR);
$stmt->bindValue(':longitude', $longitude, PDO::PARAM_STR);
$stmt->bindValue(':content', $content, PDO::PARAM_STR);

//  3. 実行
$status = $stmt->execute();
//４．データ登録処理後
if ($status === false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit('ErrorMessage:'.$error[2]);
} else {
    //５．index.phpへリダイレクト
    header('Location: index.php');
}