<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Task</title>
<link href="css.css" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="scripts.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});	
</script>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"/>
	</header>
	<main>
		<jsp:include page="viewLinks.jsp"/>
		<c:if test="${param.view == 'today'}">
			<h3>Add Task For Today ${util.todayDate}</h3>
		</c:if>
		<c:if test="${param.view == 'tomorrow'}">
			<h3>Add Task For Tomorrow ${util.tomorrowDate}</h3>
		</c:if>
		<c:if test="${param.view == 'someday'}">
			<h3>Add Task For Someday</h3>
		</c:if>
		<form action="<c:url value = '/add'/>" method="POST" name="addTask"
			enctype="multipart/form-data">
			<input type="hidden" name="view" value="${param.view}">
			<table>
				<tr>
					<th>Text:</th>
					<td>
						<textarea name="text"></textarea> 
						<c:if test="${param.view == 'today'}">
							<input type="hidden" name="date" value="${util.slashTodayDate}">
						</c:if> 
						<c:if test="${param.view == 'tomorrow'}">
							<input type="hidden" name="date" value="${util.slashTomorrowDate}">
						</c:if>
					</td>
				</tr>
				<c:if test="${param.view == 'someday'}">
					<tr>
						<th>Date:</th>
						<td>
							<input type="text" id="datepicker" name="date">
						</td>
					</tr>
				</c:if>
				<tr>
					<th>File:</th>
					<td>
						<input type="file" name="file" size="50">
					</td>
				</tr>
			</table>
		</form>
		<p id="errorText" style="color: red;"></p>
		<a href="javascript:addTask()">Add Task</a>
		<a href="<c:url value = '/main?view=${param.view}'/>">Cancel</a>
	</main>
	<footer> 
		<jsp:include page="footer.jsp"/>
	</footer>
</body>
</html>