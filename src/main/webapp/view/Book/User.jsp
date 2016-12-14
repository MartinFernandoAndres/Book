<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<title>Users</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />

<style type="text/css">
body {
	margin-top: 70px;
}
a{
  font: 130% sans-serif;
}
</style>
<body>
		<div class="page-header">
			<h1>List of Users</h1>
		</div>
		<table class="table table-striped" border = 1>
			<thead>
				<tr>
					<th>Name</th>
					<th>Enable</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty listUser}">
					<c:forEach items="${listUser}" var="user">
						<tr>
							<td><c:out value="${user.username}"></c:out></td>
							<c:if test="${!user.enabled}">
								<td>No</td>
							</c:if>
							<c:if test="${user.enabled}">
								<td>Yes</td>
							</c:if>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty listUser}">
					<tr>
						<td colspan="5">No Users</td>
					</tr>
				</c:if>
			</tbody>
		</table>
		<br>

</body>
</html>
