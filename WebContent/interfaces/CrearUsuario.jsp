<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

      <html>
      <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AEIS Grocery Manager</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
      </head>

      <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

          <header class="main-header">

            <a href="index2.html" class="logo">
              <span class="logo-mini"><b>A</b>GM</span>
              <span class="logo-lg"><b>AEIS </b>GM</span>
            </a>

            <!-- Header Navbar -->
            <nav class="navbar navbar-static-top" role="navigation">
              <!-- Sidebar toggle button-->
              <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
              </a>
              <!-- Navbar Right Menu -->
              <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">

                  <!-- User Account Menu -->
                  <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <!-- The user image in the navbar-->
                      <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                      <!-- hidden-xs hides the username on small devices so only the image appears. -->
                      <span class="hidden-xs">Alexander Pierce</span>
                    </a>
                    <ul class="dropdown-menu">
                      <!-- The user image in the menu -->
                      <li class="user-header">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                        <p>
                          Alexander Pierce - Web Developer
                        </p>
                      </li>
                      <!-- Menu Footer-->
                      <li class="user-footer">
                        <div class="pull-left">
                          <a href="#" class="btn btn-default btn-flat">Profile</a>
                        </div>
                        <div class="pull-right">
                          <a href="#" class="btn btn-default btn-flat">Sign out</a>
                        </div>
                      </li>
                    </ul>
                  </li>

                </ul>
              </div>
            </nav>
          </header>
          <!-- Left side column. contains the logo and sidebar -->
          <aside class="main-sidebar">

            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">

              <!-- Sidebar Menu -->
              <ul class="sidebar-menu">
                <li class="header">Menu</li>
                <!-- Optionally, you can add icons to the links -->
                <li class="treeview">
                  <a href="#"><i class="ion-person-stalker"></i> <span>Usuario</span> <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="CrearUsuario.html">Crear</a></li>
                    <li><a href="EditarUsuario.html">Editar</a></li>
                  </ul>
                </li>
                <li class="treeview">
                  <a href="#"><i class="ion-ios-people"></i> <span>Cliente</span> <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="CrearCliente.html">Crear</a></li>
                    <li><a href="EditarCliente.html">Editar</a></li>
                  </ul>
                </li>
                <li class="treeview">
                  <a href="#"><i class="ion-android-contacts"></i> <span>Proveedor</span> <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="CrearProveedor.html">Crear</a></li>
                    <li><a href="EditarCliente.html">Editar</a></li>
                  </ul>
                </li>
                <li class="treeview">
                  <a href="#"><i class="ion-soup-can"></i> <span>Producto</span> <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="CrearProducto.html">Crear</a></li>
                    <li><a href="EditarProducto.html">Editar</a></li>
                  </ul>
                </li>
                <li class="treeview">
                  <a href="#"><i class="ion-ios-cart"></i> <span>Factura</span> <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="CrearFactura.html">Crear</a></li>
                    <li><a href="EditarFactura.html">Editar</a></li>
                  </ul>
                </li>
                <li class="treeview">
                  <a href="#"><i class="ion-cash"></i> <span>Cierre de caja</span> <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="CrearCierreCaja.html">Crear</a></li>
                    <li><a href="EditarCierreCaja.html">Editar</a></li>
                  </ul>
                </li>

              </ul>
              <!-- /.sidebar-menu -->
            </section>
            <!-- /.sidebar -->
          </aside>

          <!-- Content Wrapper. Contains page content -->
          <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
              <h1>
                Registrar Usuario
                <!-- <small>Los campos marcados con * son obligatorios</small> -->
              </h1>

            </section>


            <section class="content">
              <fieldset>
                <legend>Información personal</legend>
                
                <form action="CrearUsuarioCtrl" method ="post" class="form-horizontal" role="form" data-toggle="validator" >                
                  <div class="form-group">
                    <label for="nombre_usuario" class="col-lg-2 control-label">Nombre</label>
                    <div class="col-lg-10">
                      <input type="text" name="nombre_usuario" id="nombre_usuario" class="form-control" id="ejemplo_email_3"
                      placeholder="Nombre">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="login_usuario" class="col-lg-2 control-label">login de usuario</label>
                    <div class="col-lg-10">
                      <input type="text" name="login_usuario" id="login_usuario" class="form-control" id="ejemplo_email_3"
                      placeholder="login de usuario">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="password_usuario" class="col-lg-2 control-label">Password</label>
                    <div class="col-lg-10">
                      <input type="password" name="password_usuario" id="password_usuario" class="form-control"
                      placeholder="Password">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="correo_usuario" class="col-lg-2 control-label">Correo</label>
                    <div class="col-lg-10">
                      <input type="email"  name="correo_usuario" id="correo_usuario" class="form-control" id="ejemplo_email_3" placeholder="Correo" data-error="Correo invalido" >
                     
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="nivel_usuario" class="col-lg-2 control-label">Nivel</label>
                    <div class="col-lg-10">
                      <select class="form-control" name="nivel_usuario" id="nivel-usuario">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="foto-usuario" class="col-lg-2 control-label">Seleccione un archivo</label>
                    <div class="col-lg-10">
                      <input  name="foto_usuario" id=" input-1a foto_usuario" type="file" class="file form-control" data-show-preview="false">
                    </div>                    
                  </div>

                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button type="submit" class="btn btn-success">Guardar</button>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button type="submit" class="btn btn-default">Cancelar</button>
                    </div>
                  </div>
                </form>


              </section>
              <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <!-- Main Footer -->
            <footer class="main-footer">
              <!-- To the right -->
              <!-- Default to the left -->
              <strong>Copyright &copy; 2016 <a href="#">AEIS Grocery Manager</a>.</strong>
            </footer>

            <!-- /.control-sidebar -->
        <!-- Add the sidebar's background. This div must be placed
        immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
      </div>
      <!-- ./wrapper -->

      <!-- REQUIRED JS SCRIPTS -->

      <!-- jQuery 2.2.0 -->
      <script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
      <!-- Bootstrap 3.3.6 -->
      <script src="bootstrap/js/bootstrap.min.js"></script>
      <script src="bootstrap/js-helpers/bootstrap-formhelpers-phone.js"></script>
      <!-- AdminLTE App -->
      <script src="dist/js/app.min.js"></script>

      <!-- Optionally, you can add Slimscroll and FastClick plugins.
           Both of these plugins are recommended to enhance the
           user experience. Slimscroll is required when using the
           fixed layout. -->
         </body>
         </html>
