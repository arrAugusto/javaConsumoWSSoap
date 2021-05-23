<%-- 
    Document   : index
    Created on : 15/05/2021, 19:25:53
    Author     : agr12
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="./plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./dist/css/adminlte.min.css">
</head>
<style>
  .loginBack {
    background-image: url('./templateIMG/imgfondo.png');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
  }
  .cardLogin{
    opacity: 0.2;
  }
</style>


    </head>
<body class="hold-transition login-page loginBack">
  <div class="login-box">
    <div class="login-logo">
      <a href="./index2.html"><b>Corp</b>Email</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
      <div class="card-body login-card-body">
        <p class="login-box-msg">Login</p>
        <form action="usuarioServlet" method="post">
          <div class="input-group mb-3">
            <input type="email" name="usuario" class="form-control" placeholder="Ingrese su correo">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="password" name="password" class="form-control" placeholder="Ingrese su contraseña">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="row">

            <!-- /.col -->
            <div class="col-12">
              <button type="submit" class="btn btn-primary btn-block btn-block">Iniciar sesión</button>
            </div>
            <!-- /.col -->
          </div>
        </form>


        <p class="mb-1 mt-4">
          <a href="forgot-password.html">Olvide mi contraseña</a>
        </p>

        <!-- /.login-card-body -->
      </div>
    </div>
    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="./plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="./plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="./dist/js/adminlte.min.js"></script>
</body>
</html>
