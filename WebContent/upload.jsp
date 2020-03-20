<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload file</title>
<link href="css.css" rel="stylesheet">
<script src="scripts.js"></script>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"/>
	</header>
	<main>
<jsp:include page="viewLinks.jsp"/>
		<h3>Upload File To Task</h3>
		<table>
			<tr>
				<th>Date:</th>
				<td>${task.date}</td>
			</tr>
			<tr>
				<th>Text:</th>
				<td>${task.text}</td>
			</tr>
			<tr>
				<th>File:</th>
				<td>
					<form action="<c:url value = '/upload'/>" method="POST"
						name="uploadFile" enctype="multipart/form-data">
						<input name="idTask" type="hidden" value="${task.id}"> 
						<input name="view" type="hidden" value="${param.view}"> 
						<input type="file" name="file" size="50">
					</form>
				</td>
			</tr>
		</table>
		<p id="errorText" style="color: red;"></p>
		<a href="javascript:uploadFile()">Upload File</a>
		<a href="<c:url value = '/main?view=${param.view}'/>">Cancel</a>
	</main>
	<footer> 
		<jsp:include page="footer.jsp"/>
	</footer>
</body>
</html>