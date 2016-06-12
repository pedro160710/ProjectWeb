<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="modelo.Usuario"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AEIS Grocery Manager</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<%@include file="../commons/links.jsp"%>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<!-- Left side column. contains the logo and sidebar -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Editar Usuario
				<!-- <small>Optional description</small> -->
			</h1>

			</section>

			<!-- Main content -->
			<section class="content"> <section class="content">
			<fieldset>
				<legend>Información personal</legend>
				<%Usuario usuario = (Usuario)request.getAttribute("USUARIO"); %>
				<form method="post" action="GuardarCambiosUsuario?id=<%=usuario.getIdUsuario() %>" class="form-horizontal" role="form" data-toggle="validator">
					<div class="form-group">
						<label for="nombre_usuario" class="col-lg-2 control-label">Nombre</label>
						<div class="col-lg-10">
							<input type="text" name="nombre_usuario"
								value="<%=usuario.getUsuNombre()%>">
						</div>
					</div>
					<div class="form-group">
						<label for="nombre_usuario_usuario" class="col-lg-2 control-label">login
							de usuario</label>
						<div class="col-lg-10">
							<input type="text" name="nombre_usuario_usuario"
								class="form-control" value="<%=usuario.getUsuLogin()%>">
						</div>
					</div>
					<div class="form-group">
						<label for="password_usuario" class="col-lg-2 control-label">Password</label>
						<div class="col-lg-10">
							<input type="password" name="password_usuario"
								id="password_usuario" class="form-control"
								value="<%=usuario.getUsuPassword()%>">
						</div>
					</div>

					<div class="form-group">
						<label for="correo_usuario" class="col-lg-2 control-label">Correo</label>
						<div class="col-lg-10">
							<input type="email" name="correo_usuario" id="correo_usuario"
								class="form-control" id="ejemplo_email_3" placeholder="Correo"
								value="<%=usuario.getUsuCorreo()%>">

						</div>
					</div>

					<div class="form-group">
						<label for="nivel_usuario" class="col-lg-2 control-label">Nivel</label>
						<div class="col-lg-10">
							<select class="form-control" name="nivel_usuario" value="<%=usuario.getUsuNivel()%>"
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
							<button type="submit" class="btn btn-success">Guardar cambios</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<button type="submit" class="btn btn-default">Cancelar</button>
						</div>
					</div>
				</form>
			</section> <!-- /.content --> </section>
			<!-- /.content -->
		</div>

		<%@include file="../commons/scripts.jsp"%>
</body>
</html>
