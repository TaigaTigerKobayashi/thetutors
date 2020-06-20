<?php
session_start();
include("funcs.php");
$pdo = db2_conn();

$sql = "SELECT TUTOR,COUNT(TUTOR) AS COUNT FROM TUTORS.CALENDAR_TABLE GROUP BY TUTOR";
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
        $view .= $result["TUTOR"] . ":" . $result["COUNT"];;
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
<title>ポイント表示</title>
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
    <h1> POINT</h1>
    <div class="container jumbotron"><?php echo $view; ?></div>
</div>
<!-- Main[End] -->

</body>
</html>
