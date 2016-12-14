<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
	
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title><spring:message code="segundo_mensaje"/></title>	
		
		<meta name="_csrf" content="${_csrf.token}"/>
		<meta name="_csrf_header" content="${_csrf.headerName}"/> 
		
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
		
		<script type="text/javascript" src ="${pageContext.request.contextPath}/resources/abm.js">
		</script>	
	</head>
	<span style="float: top">
	<a href="?language=en">English</a>	<a href="?language=es">Español</a>
</span>
<br><br>
	<body>
		<h2><spring:message code="titulo_pagina"/></h2>
		<ul id="books"></ul>
		<br>
			
			<p> 
				<spring:message code="lista_titulo"/>: <input type="text" id="title"/>
			</p> 
			<button id="botonID"> <spring:message code="agregar"/></button>
			
			<br>
			<br>
			
			<spring:message code="tituloamodificar"/>: <input type="text" id="modify"/>
	
			<button class="botonModify" id=""  ><spring:message code="modificar"/></button>
		
	</body>
</html>