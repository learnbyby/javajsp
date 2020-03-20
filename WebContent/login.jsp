<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="css.css" rel="stylesheet">
<script src="scripts.js"></script>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<header>
		User: guest 
		<a href="<c:url value = '/login.jsp'/>">Login</a> 
		<a href="<c:url value = '/register.jsp'/>">Register</a>
	</header>
	<main>
		<h3>Login</h3>
		<form action="<c:url value = '/login'/>" method="POST" name="login">
			<table>
				<tr>
					<th>Account:</th>
					<td>
						<input type="text" name="account">
					</td>
				</tr>
				<tr>
					<th>Password:</th>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
			</table>
		</form>
		<p id="errorText" style="color: red;"></p>
		<p id="loginError" style="color: red;">${loginError}</p>		
		<a href="javascript:login()">Login</a>
	</main>
	<footer> 
		<jsp:include page="footer.jsp"/>
	</footer>
</body>
</html>