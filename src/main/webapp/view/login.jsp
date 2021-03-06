<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
		<style>
			.error {padding: 15px; margin-bottom: 20px; border: 1px solid transparent; border-radius: 4px; color: #a94442; background-color: #f2dede; border-color: #ebccd1;}
			.msg {padding: 15px; margin-bottom: 20px; border: 1px solid transparent; border-radius: 4px; color: #31708f; background-color: #d9edf7; border-color: #bce8f1;}
			#login-box {width: 300px; padding: 20px; margin: 100px auto; background: #fff; -webkit-border-radius: 2px; -moz-border-radius: 2px; border: 1px solid #000;}
		</style>
		<title>Book</title>
	</head>
	<br><br>
	<body onload='document.loginForm.username.focus();'>	
		<div id="login-box">
			<h2>Login with Username and Password</h2>
			<c:if test="${param.error != null}">        
				<p>
					Invalid username and password
				</p>
			</c:if>
			<c:if test="${param.logout != null}">       
				<p>
					You have been logged out.
				</p>
			</c:if>
			<form name='loginForm'  action="login" method='POST'>
			<table>
				<tr>
					Username
					<td><input type='text' name='username'></td>
				</tr>
				<tr>
					Password
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
					  value="submit" /></td>
				</tr>
			</table>
			 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</body>
</html> 