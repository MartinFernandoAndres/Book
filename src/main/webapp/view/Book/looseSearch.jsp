<html>
	<head>
		<title> Loose Search </title>
		
	</head>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
	
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/> 
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/search.js">
	</script>

	<body>

		<h1> Loose Search </h1>

		<input type="text" onKeyUp="doSearch();" id="searchBox"/>

		<div id="results">
			Results will appear here...
		</div>
		
		<br>
		
		<select id="idSelect">
		</select>
		
	</body>
<html>