<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AEIS Grocery Manager</title>
<%@include file="../commons/links.jsp"%>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
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

					<form action="CrearUsuarioCtrl" method="post"
						class="form-horizontal" role="form" data-toggle="validator">
						<div class="form-group">
							<label for="nombre_usuario" class="col-lg-2 control-label">Nombre</label>
							<div class="col-lg-10">
								<input type="text" name="nombre_usuario" id="nombre_usuario"
									class="form-control" id="ejemplo_email_3" placeholder="Nombre">
							</div>
						</div>
						<div class="form-group">
							<label for="login_usuario" class="col-lg-2 control-label">login
								de usuario</label>
							<div class="col-lg-10">
								<input type="text" name="login_usuario" id="login_usuario"
									class="form-control" id="ejemplo_email_3"
									placeholder="login de usuario">
							</div>
						</div>
						<div class="form-group">
							<label for="password_usuario" class="col-lg-2 control-label">Password</label>
							<div class="col-lg-10">
								<input type="password" name="password_usuario"
									id="password_usuario" class="form-control"
									placeholder="Password">
							</div>
						</div>

						<div class="form-group">
							<label for="correo_usuario" class="col-lg-2 control-label">Correo</label>
							<div class="col-lg-10">
								<input type="email" name="correo_usuario" id="correo_usuario"
									class="form-control" id="ejemplo_email_3" placeholder="Correo"
									data-error="Correo invalido">

							</div>
						</div>

						<div class="form-group">
							<label for="nivel_usuario" class="col-lg-2 control-label">Nivel</label>
							<div class="col-lg-10">
								<select class="form-control" name="nivel_usuario"
									id="nivel-usuario">
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
							<label for="foto-usuario" class="col-lg-2 control-label">Seleccione
								un archivo</label>
							<div class="col-lg-10">
								<input name="foto_usuario" id=" input-1a foto_usuario"
									type="file" class="file form-control" data-show-preview="false">
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



		<div class="control-sidebar-bg"></div>
	</div>
	<%@include file="../commons/scripts.jsp"%>
</body>

</html>
