<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Add Book</title>	
		
		<meta name="_csrf" content="${_csrf.token}"/>
		<meta name="_csrf_header" content="${_csrf.headerName}"/> 
		
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
		
		<script type="text/javascript" src ="${pageContext.request.contextPath}/resources/abm.js">
		</script>	
	</head>
	<body>
		<h2>Books</h2>
		<ul id="books"></ul>
		<br>
			
			<p> 
				Title: <input type="text" id="title"/>
			</p> 
			<button id="botonID"> Add</button>
			
			<br>
			<br>
			
			Title to modify: <input type="text" id="modify"/>
	
			<button class="botonModify" id=""  > Modify</button>
		
	</body>
</html>