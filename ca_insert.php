<?php
session_start();

include("../../tutors/funcs.php");

$day = $_POST["day"];
$title = $_POST["textTitle"];
$start = $_POST["start"];
$end = $_POST["end"];
$text = $_POST["text"];
$color = $_POST["color"];
$id = $_SESSION["id"];


$pdo = db_conn();

$sql = "INSERT INTO calendar_table(id,STUDENT,title,text,color,day,start,end)VALUES(NULL,:id,:title,:text,:color,:day,:start,:end)";
$stmt = $pdo-> prepare($sql);
$stmt -> bindValue(':id',$id,PDO::PARAM_INT);
$stmt -> bindValue(':title',$title,PDO::PARAM_STR);
$stmt -> bindValue(':text',$text,PDO::PARAM_STR);
$stmt -> bindValue(':color',$color,PDO::PARAM_STR);
$stmt -> bindValue(':day',$day,PDO::PARAM_STR);
$stmt -> bindValue(':start',$start,PDO::PARAM_STR);
$stmt -> bindValue(':end',$end,PDO::PARAM_STR);
$status = $stmt -> execute();

if ($status == false) {
    sql_error($stmt);
} else {
    //５．index.phpへリダイレクト
    redirect("cal.php");
}


?>