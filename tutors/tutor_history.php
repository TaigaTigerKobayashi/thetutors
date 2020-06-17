<?php
session_start();

//1.外部ファイル読み込み＆DB接続
//※htdocsと同じ階層に「includes」を作成してfuncs.phpを入れましょう！
//include "../../includes/funcs.php";
include "funcs.php";
sschk();
$pdo = db_conn();

//２．データ登録SQL作成
//本当は、student_listでクリックしたid＝＝STUDENT_iDのデータを表示すする（予約されている全ての過去データから、対象者のみ入れる。
$id =$_GET['id'];
$sql = "SELECT * FROM tutors_history_table WHERE TUTOR_ID =".$id;
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//３．データ表示
$view = "";
if ($status == false) {
    sql_error($stmt);
} else {
    //Selectデータの数だけ自動でループしてくれる
    //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $view .= '<P>';
        $view .= $result["START_DATE"];
        $view .= '　';
        $view .= '</p>';
    }

}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>USER表示</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <h1> 履歴一覧</h1>
    <div class="container jumbotron"><?php echo $view; ?></div>
</div>
<!-- Main[End] -->

</body>
</html>
