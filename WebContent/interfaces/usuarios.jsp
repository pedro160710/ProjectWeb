<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="modelo.Usuario, java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Usuarios</title>

</head>
<body>
			<section>
				<table>
				<tr>
				<th>Nombre</th>
				<th>Login</th>
				<th>Correo</th>
				<th>Nivel</th>
				
				</tr>
					<%
						List<Usuario> usuarios = (List<Usuario>) request
								.getAttribute("USUARIOS");
						if (usuarios != null) {
							for (Usuario u : usuarios) {
					%>
					<tr>
					<td><%=u.getUsuNombre() %></td>
					<td><%=u.getUsuLogin() %></td>
					<td><%=u.getUsuCorreo() %></td>
					<td><%=u.getUsuNivel() %></td>
					<td><a href="TraerUsuarioCtrl?id=<%=u.getIdUsuario()%>">Actualizar</a></td>
					<td>Eliminar</td>
					
					</tr>
					<%
						}
						}
					%>
				</table>
			</section>
</body>
</html>