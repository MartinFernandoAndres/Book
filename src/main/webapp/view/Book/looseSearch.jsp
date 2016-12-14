<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
	<head>
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
		<title> <spring:message code="Busquedalibre"/> </title>
		
	</head>
	<span style="float: top">
	<a href="?language=en">English</a>	<a href="?language=es">Español</a>
</span>
<br><br>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
	
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/> 
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/search.js">
	</script>

	<body>

		<h1> <spring:message code="Busquedalibre"/> </h1>

		<input type="text" onKeyUp="doSearch();" id="searchBox"/>

		<div id="results">
			<spring:message code="resultados"/>	
		</div>
		<br>
		<select id="idSelect">
		</select>
		
	</body>
<html>