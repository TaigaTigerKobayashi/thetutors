<?php
session_start();
include("funcs.php");
$pdo = db_conn();

$sql = "UPDATE calendar_table SET TUTOR = :TUTOR WHERE id = :id";
 
// // 更新する値と該当のIDは空のまま、SQL実行の準備をする
$stmt = $pdo->prepare($sql);
$stmt->bindParam(':TUTOR', $_POST["TUTOR"], PDO::PARAM_STR); 
$stmt->bindParam(':id', $_POST["id"], PDO::PARAM_INT); 
$stmt->execute();

redirect("update_page.php");

#メールを送るコード
// $fromEmail = "hoge@gmail.com";
// $fromName = "〇〇事務所";
// $header = "From:".mb_encode_mimeheader($fromName)."<$fromEmail>";
// $mail = "taiga.k.5884@gmail.com";
// $subject = "**";
// $body = "**";
// $header = "**";
// mb_send_mail($mail,$subject,$body,$header);


?>
