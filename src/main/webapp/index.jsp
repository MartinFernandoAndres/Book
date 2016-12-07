<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
 
<html>
<head>
<title>Book</title>

<style type="text/css">
body {
	margin-top: 70px;
}
a{
  font: 130% sans-serif;
}
</style>
</head>

<span style="float: top">
	<a href="?language=en">English</a>	<a href="?language=es">Español</a>
</span>
<br><br>

<div class="container">
	<div class="page-header">
		<h1>Book</h1>
	</div>
</div>


<body>		

	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>		
		<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>
	
	<div class="container">

		<a href="<%=request.getContextPath()%>/Book/"><spring:message code="primer_mensaje"/></a>
		<br>
		<br>
		<a href="<%=request.getContextPath()%>/Book/Add"><spring:message code="segundo_mensaje"/></a>
	</div>

</body>
</html>