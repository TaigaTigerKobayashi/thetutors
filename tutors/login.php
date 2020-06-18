
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
    <label for="inputEmail" class="sr-only">yourname@example.com</label>
    <input type="email" name="lid" id="inputEmail" class="form-control" placeholder="yourname@example.com" required autofocus>
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
</body>
</html>
