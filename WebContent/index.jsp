<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<title>Insert title here</title>
<%@include file="commons/links.jsp" %>
</head>
<body>
	
	
	<% String tituloPagina="Indice"; %>
	<%-- <%@include file="../commons/header.jsp"%> --%>

<%-- <%@include file="../commons/navbar.jsp" %> --%>

<%@include file="../commons/sidebar.jsp" %>

<!-- 
	<form method="post" action="BuscarProveedorCtrl">
		Nombre: <input type="text" name="txtNombre" /> <input type="submit"
			value="Crear" />
	</form> -->
<a href="/interfaces/CrearUsuario.jsp">Nuevo </a>

</body>

<%@include file="commons/scripts.jsp" %>

</html>
