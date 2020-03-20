<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css.css" rel="stylesheet">
<script src="scripts.js"></script>
<title>Main</title>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"/>
	</header>
	<main>
		<form name="deleteFile" action="<c:url value = '/deleteFile'/>"	method="POST">
			<input name="idTask" type="hidden"> 
			<input name="view" type="hidden" value="${param.view}">
		</form>			
		<jsp:include page="viewLinks.jsp"/>			
		<h3>${viewTitle}</h3>			
		<c:if test="${not empty tasks}">
			<form action="<c:url value = '/main'/>" method="POST" name="tasks">
				<input type="hidden" name="operation" value="no"> 
				<input type="hidden" name="view" value="${param.view}">
				<table>
					<tr>
						<th>
							<input type="checkbox" onClick="toggle(this)">
						</th>
						<th>Task</th>
						<c:if test="${param.view == 'someday' or param.view == 'fixed' or param.view == 'bin'}">
							<th>Date</th>
						</c:if>
						<th>File</th>
					</tr>
					<c:forEach var="task" items="${tasks}">
						<tr>
							<td>
								<input type="checkbox" name="idTask" value="${task.id}">
							</td>
							<td>${task.text}</td>
							<c:if test="${param.view == 'someday' or param.view == 'fixed' or param.view == 'bin'}">
								<td>${task.date}</td>
							</c:if>
							<td class="tdFile">
								<c:if test="${task.fileStatus}">
									${task.file}
									<a href="<c:url value = '/download?idTask=${task.id}'/>">Download</a>
									<a href="javascript:deleteFileById(${task.id})">Delete</a>
								</c:if> 
								<c:if test="${not task.fileStatus}">
									<a href="<c:url value = '/upload?idTask=${task.id}&view=${param.view}'/>">
										Upload
									</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</table>
			</form>			
			<p id="errorText" style="color: red;"></p>			
			<c:forEach var="operationLink" items="${operationLinks[param.view]}">
			<a class="operationLink" href="<c:url value = '${operationLink.url}'/>">${operationLink.text}</a> 
			</c:forEach>			
		</c:if>		
		<c:if test="${empty tasks}">
			<p>No tasks in ${param.view} view</p>
			<c:if test="${param.view == 'today' or param.view == 'tomorrow' or param.view == 'someday'}">
				<a href="<c:url value = '/add.jsp?view=${param.view}'/>">Add Task</a>
			</c:if>
		</c:if>		
	</main>
	<footer> 
		<jsp:include page="footer.jsp"/>
	</footer>
</body>
</html>