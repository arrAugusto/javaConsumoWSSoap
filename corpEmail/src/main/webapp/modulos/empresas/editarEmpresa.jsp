<%-- 
    Document   : resetPasWord
    Created on : 22/05/2021, 21:22:28
    Author     : agr12
--%>

<%@page import="models.conectionUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Corp Email</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Tempusdominus Bootstrap 4 -->
        <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- JQVMap -->
        <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../dist/css/adminlte.min.css">
        <!-- overlayScrollbars -->
        <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
        <!-- summernote -->
        <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.min.css">
        <link rel="stylesheet" href="../dist/cssTemplate.css">

    </head>
    <body class="hold-transition sidebar-mini layout-fixed">
        <div class="wrapper">

            <!-- Preloader -->
            <div class="preloader flex-column justify-content-center align-items-center">
                <img class="animation__shake" src="../dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
            </div>


            <!-- BARRA SUPERIOR-->

            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-white navbar-light">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="index3.html" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="#" class="nav-link">Contact</a>
                    </li>
                </ul>

                <!-- Right navbar links -->
                <ul class="navbar-nav ml-auto">
                    <!-- Navbar Search -->
                    <li class="nav-item">
                        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                            <i class="fas fa-search"></i>
                        </a>
                        <div class="navbar-search-block">
                            <form class="form-inline">
                                <div class="input-group input-group-sm">
                                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                                    <div class="input-group-append">
                                        <button class="btn btn-navbar" type="submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                        <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- Messages Dropdown Menu -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">
                            <i class="far fa-comments"></i>
                            <span class="badge badge-danger navbar-badge">3</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="https://adminlte.io/themes/dev/AdminLTE/dist/img/user2-160x160.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            Brad Diesel
                                            <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">Call me whenever you can...</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="../dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            John Pierce
                                            <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">I got your message bro</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="../dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            Nora Silvester
                                            <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">The subject goes here</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                        </div>
                    </li>
                    <!-- Notifications Dropdown Menu -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">
                            <i class="far fa-bell"></i>
                            <span class="badge badge-warning navbar-badge">15</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                            <span class="dropdown-item dropdown-header">15 Notifications</span>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-envelope mr-2"></i> 4 new messages
                                <span class="float-right text-muted text-sm">3 mins</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-users mr-2"></i> 8 friend requests
                                <span class="float-right text-muted text-sm">12 hours</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-file mr-2"></i> 3 new reports
                                <span class="float-right text-muted text-sm">2 days</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                            <i class="fas fa-expand-arrows-alt"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                            <i class="fas fa-th-large"></i>
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- BARRA SUPERIOR-->


            <!-- /.navbar -->

            <!-- Main Sidebar Container -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Brand Logo -->
                <a href="index3.html" class="brand-link">
                    <img src="../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                    <span class="brand-text font-weight-light colorText">Corp Capsula</span>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">
                            <img src="https://adminlte.io/themes/dev/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                        </div>
                        <div class="info">
                            <a href="#" class="d-block colorText">Alexander Pierce</a>
                        </div>
                    </div>

                    <!-- Sidebar Menu -->
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                                 with font-awesome or any other icon font library -->

                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="fas fa-user"></i>
                                    <p>
                                        Usuarios
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="../usuarios/crearUsuario.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Crear Usuarios</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../usuarios/resetPasWord.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Recuperar usuarios</p>
                                        </a>
                                    </li>                                    

                                    <li class="nav-item">
                                        <a href="../usuarios/editarUsuarios.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Editar Usuarios</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../usuarios/listUsuarios.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Lista usuarios</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../usuarios/accesos.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Bitacora Accessos</p>
                                        </a>
                                    </li>

                                </ul>
                            </li>

                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="fa fa-server"></i>
                                    <p>
                                        Empresas
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="../empresas/crearEmpresas.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Crear empresas</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../empresas/editarEmpresa.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Editar empresa</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../empresas/listEmpresas.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Mostrar empresas</p>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="../empresas/eliminarEmpresa.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Eliminar empresa</p>
                                        </a>
                                    </li>                                    
                                </ul>

                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fa fa-envelope"></i>
                                    <p>
                                        Opciones de correo
                                        <i class="fas fa-angle-left right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="../correos/recibidos.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Enviados...</p>
                                            <span class="right badge badge-success"><i class="fa fa-paper-plane"></i>&nbsp;&nbsp;&nbsp;</span>

                                        </a>
                                    </li>                                    
                                    <li class="nav-item">
                                        <a href="../correos/recibidos.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Recibidos...</p>
                                            <span class="right badge badge-primary"><i class="fa fa-envelope-open"></i>&nbsp;&nbsp;&nbsp;</span>

                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="../correos/eliminados.jsp" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Eliminados...</p>
                                            <span class="right badge badge-danger"><i class="fa fa-trash"></i>&nbsp;&nbsp;&nbsp;</span>
                                        </a>
                                    </li>
                                </ul>

                            </li>
                        </ul>
                    </nav>
                    <!-- /.sidebar-menu -->
                </div>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Editar Usuario</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active">Dashboard v1</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->

                <!-- CONTENIDO DEL FORMULARIO -->

                <section class="content-header">
                    <!-- /.container-fluid -->
                    <div class="card card-info card-outline">
                        <div class="card-body">
                            <form action="../../editUsurio" method="post">
                                <div class="row">
                                    <%
                                        String idUsuario = request.getParameter("idUsuario");
                                        conectionUser conexionUsuario = new conectionUser();
                                        controladorServlet.ArrayOfString dataUsuario = conexionUsuario.ConsultaUsuarioID(idUsuario);
                                        out.println("<div class='col-lg-6 col-md-12 col-sm-12 mt-4'>");
                                        out.println("<input type='text' class='form-control' name='nitReq' value='"+dataUsuario.getString().get(0)+"' placeholder='Ingresa Nit de Empres a' />");
                                        out.println("<input type='hidden' name='idReq' value='"+dataUsuario.getString().get(7)+"'/>");
                                        out.println("</div>");
                                        out.println("<div class='col-lg-6 col-md-12 col-sm-12 mt-4'>");
                                        out.println("<input type='text' class='form-control'name='nombresReq' value='"+dataUsuario.getString().get(1)+"' placeholder='Ingrese Nombres de Usuario' />");
                                        out.println("</div>");
                                        out.println("<div class='col-lg-6 col-md-12 col-sm-12 mt-4'>");
                                        out.println("<input type='text' class='form-control'name='apellidosReq' value='"+dataUsuario.getString().get(2)+"' placeholder='Ingrese Apellido de Usuario' />");
                                        out.println("</div>");
                                        out.println("<div class='col-lg-6 col-md-12 col-sm-12 mt-4'>");
                                        out.println("<input type='text' class='form-control'name='emailReq' value='"+dataUsuario.getString().get(3)+"' placeholder='Ingrese Email de Usuario' />");
                                        out.println("</div>");
                                        out.println("<div class='col-lg-6 col-md-12 col-sm-12 mt-4'>");
                                        out.println("<input type='password' class='form-control'name='passReq' value='"+dataUsuario.getString().get(4)+"' placeholder='Ingrese Contrase??a de Usuario' />");
                                        out.println("</div>");
                                        out.println("<div class='col-lg-6 col-md-12 col-sm-12 mt-4'>");
                                        out.println("<input type='text' class='form-control'name='telefonoReq' value='"+dataUsuario.getString().get(5)+"'  placeholder='Ingrese Telefono de Usuario' />");
                                        out.println("</div>");
                                        out.println("<div class='col-lg-6 col-md-12 col-sm-12 mt-4'>");
                                        out.println("<div class='form-group'>");
                                        out.println("<select class='form-control' name='nivelReq' id='exampleFormControlSelect1'>");
                                        out.println("<option value='1'>Medio</option>");
                                        out.println("<option value='2'>Alto</option>");
                                        out.println("<option value='3'>Admin</option>");
                                        out.println("</select>");
                                        out.println("</div>");
                                        out.println("</div>");
                                    %>
                                    <div class="col-lg-6 col-md-12 col-sm-12 mt-4">
                                        <button type="submit" class="btn btn-warning btn-block">Editar Nuevo Usuario <i class="fas fa-edit"></i></button>
                                    </div>                                   
                                </div>
                            </form>
                        </div>
                    </div>
                </section>
                <!-- FIN DEL CONTENIDO -->
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <strong>Copyright &copy; 2021 <a href="#">Corporaci??n capsula</a>.</strong>
                All rights reserved.
                <div class="float-right d-none d-sm-inline-block">
                    <b>Version</b> 3.1.0
                </div>
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-ligth colorSidebar">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->
        </div>
        <!-- ./wrapper -->

        <!-- jQuery -->
        <script src="../plugins/jquery/jquery.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button)
        </script>
        <!-- Bootstrap 4 -->
        <script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- ChartJS -->
        <script src="../plugins/chart.js/Chart.min.js"></script>
        <!-- Sparkline -->
        <script src="../plugins/sparklines/sparkline.js"></script>
        <!-- JQVMap -->
        <script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
        <script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="../plugins/jquery-knob/jquery.knob.min.js"></script>
        <!-- daterangepicker -->
        <script src="../plugins/moment/moment.min.js"></script>
        <script src="../plugins/daterangepicker/daterangepicker.js"></script>
        <!-- Tempusdominus Bootstrap 4 -->
        <script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
        <!-- Summernote -->
        <script src="../plugins/summernote/summernote-bs4.min.js"></script>
        <!-- overlayScrollbars -->
        <script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../dist/js/adminlte.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../dist/js/demo.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="../dist/js/pages/dashboard.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    </body>
</html>
