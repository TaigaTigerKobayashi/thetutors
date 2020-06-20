
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>ログイン画面</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">
    <style>
    .hideForm{
      display:none;
    }
    </style>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
  </head>

  <body class="text-center">
  <form class="form-signin" method="POST" action="login_act.php">
    <h1 class="h3 mb-3 font-weight-normal">ログイン</h1>
    <label for="inputUserID" class="sr-only">ユーザーID</label>
    <input type="text" name="lid" id="inputUserID" class="form-control" placeholder="ユーザーID" required autofocus>
    <label for="inputPassword" class="sr-only">パスワード</label>
    <input type="password" name="lpw" id="inputPassword" class="form-control" placeholder="パスワード" required>
    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> ログイン状態を保持する
      </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">ログイン</button>
    <div class="link-area">
      <a class="password-forget" href="" style="display:block;">パスワードをお忘れですか？</a>
      <a class="register" href="" style="display:block;">会員登録</a>
    </div>
    <p class="mt-5 mb-3 text-muted">&copy; 2020</p>
  </form>
  <div class="hideForm">
  <form method="post" action="user_insert.php">
  <div class="jumbotron">
   <fieldset>
    <legend>ユーザー登録</legend>
     <label>Login ID：<input type="text" name="lid"></label><br>
     <label>Login PW<input type="text" name="lpw"></label><br>
     <label>Login Email<input type="text" name="email"></label><br>
     <label>管理FLG：
      ユーザー / チューター <input type="radio" name="user_type" value="1">　
      管理者<input type="radio" name="user_type" value="0">
    </label>
    <br>
     <!-- <label>退会FLG：<input type="text" name="life_flg"></label><br> -->
     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
</div>
<button id="hideBtn">新規登録の方はこちら</button>

<script>
//新規登録の画面の表示切り替え
const  hideBtn = document.querySelector('#hideBtn');
const  hideForm = document.querySelector('.hideForm')
hideBtn.onclick= function(){
  hideForm.classList.toggle('hideForm')
};

</script>
</body>
</html>
