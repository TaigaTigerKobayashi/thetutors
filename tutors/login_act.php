<?php
//最初にSESSIONを開始！！ココ大事！！
session_start();

//1.  DB接続します
include("funcs.php");
$pdo = db_conn();

//2. データ登録SQL作成
$sql = "SELECT * FROM tutors_user_table WHERE lid=:lid AND life_flg=0";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':lid', $_POST["lid"], PDO::PARAM_STR);
$status = $stmt->execute();

//3. SQL実行時にエラーがある場合STOP
if($status==false){
    sql_error();
}

//4. 抽出データ数を取得
$val = $stmt->fetch();         //1レコードだけ取得する方法
//$count = $stmt->fetchColumn(); //SELECT COUNT(*)で使用可能()

//5. 該当レコードがあればSESSIONに値を代入
if(password_verify($_POST["lpw"] ,$val["lpw"])){
  //Login成功時
  $_SESSION["chk_ssid"]  = session_id();
  $_SESSION["USER_TYPE"] = $val['USER_TYPE'];
  $_SESSION["name"]      = $val['name'];
  #tutorならtutor.php、studentならstudent.php、adminならmanage.phpに飛ばす
  if ($_SESSION["USER_TYPE"] == 1){
    header("Location:student.php");
    exit();
  }if($_SESSION["USER_TYPE"] == 2){
    header("Location:tutor.php");
    exit();
  }if($_SESSION["USER_TYPE"] == 0){
    header("Location:manage.php");
    exit();
  }
}else{
  redirect("login.php");
  exit();
}
?>

