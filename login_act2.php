<?php 
session_start();//セッション変数を使うよという意味。これで他のファイルでも$_SESSION[];で指定した変数が使用できる
$lid = $_POST['lid'];
$lpw = $_POST['lpw'];
include('funcs.php');



//1.接続します
$pdo = db_conn();

//2.データ登録sql作成（基本のinset.phpやupdate.phpをコピペして編集する）
//表示の基本の書き方：SELECT 表示するカラム FROM テーブル名;
$sql = 'SELECT * FROM tutors_user_table WHERE lid=:lid AND lpw=:lpw AND life_flg=0';//ANDを入れることでidとpαssの両方が合致する人を指定している

//2-2: sql文をstmtに渡す処理
$stmt = $pdo->prepare($sql);

//2-3: 関連付けをして、nameやemailを3-1の同じ文字に紐付ける(ここはinsert.phpから修正している)
$stmt->bindValue(':lid',   h($lid));  //Integer（数値の場合 PDO::PARAM_INT)  第３引数は省略出来るが、セキュリティの観点から記述している(今回は記述していない）。文字列か数値はmysqlのデータベースに登録したものがvarcharaかintかというところで判断する
$stmt->bindValue(':lpw', h($lpw)); 


//2-4: 最後に実行する
$status = $stmt->execute();//このexecuteで上で処理した内容を実行している



//2-5．データ登録処理後（基本コピペ使用でOK)
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("SQLError:".$error[2]);//エラーが起きたらエラーの2番目の配列から取ります。ここは考えず、これを使えばOK
                             // SQLEErrorの部分はエラー時出てくる文なのでなんでもOK
}
//ここではelseの指定はなく下の3以降の処理に進ませる。

//3.抽出データ数を取得
//$count = $stmt->fetchColumn(); //SELECT COUNT(*)で使用可能
$val = $stmt->fetch();//1レコードだけ取得する方法(これは決め打ちコピペOK)

//4.該当レコードがあればSESSIONに値を代入（SESSION idから引っ張ったuidとユーザーネームをサーバー側へ預ける処理記入
if( $val['id'] !=""){ //３で抽出した１レコードにidが含まれているかどうかの判定→つまりidがあるかどうか見ている
 $_SESSION['chk_ssid']  = session_id();//session idとはsession startした時に発行されるユニークキーを取得する関数。$_SESSIONの
  $_SESSION["USER_TYPE"] = $val['USER_TYPE'];
  $_SESSION["lid"]      = $val['lid'];
  $_SESSION["email"]      = $val['email'];
  $_SESSION["id"]      = $val['id'];
 //Login処理OKの場合select.phpへ遷移
 if ($_SESSION["USER_TYPE"] == 1){
  header("Location:../packages/ca.php");
  exit();
}if($_SESSION["USER_TYPE"] == 0){
  header("Location:manage.php");
  exit();
}

}else{
  //Login処理NGの場合login.phpへ遷移
  header('Location: login.php');

}
//処理終了
exit();




?>