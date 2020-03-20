<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${param.view == 'today'}">
			<a href="<c:url value = '/main?view=today'/>" class="activeViewLink">Today
				${util.todayDate}</a>
			<a href="<c:url value = '/main?view=tomorrow'/>" class="viewLink">Tomorrow
				${util.tomorrowDate}</a>
			<a href="<c:url value = '/main?view=someday'/>" class="viewLink">Someday</a>
			<a href="<c:url value = '/main?view=fixed'/>" class="viewLink">Fixed</a>
			<a href="<c:url value = '/main?view=bin'/>" class="viewLink">Recycle Bin</a>			
		</c:if>
		<c:if test="${param.view == 'tomorrow'}">
			<a href="<c:url value = '/main?view=today'/>" class="viewLink">Today
				${util.todayDate}</a>
			<a href="<c:url value = '/main?view=tomorrow'/>"  class="activeViewLink">Tomorrow
				${util.tomorrowDate}</a>
			<a href="<c:url value = '/main?view=someday'/>" class="viewLink">Someday</a>
			<a href="<c:url value = '/main?view=fixed'/>" class="viewLink">Fixed</a>
			<a href="<c:url value = '/main?view=bin'/>" class="viewLink">Recycle Bin</a>
		</c:if>
		<c:if test="${param.view == 'someday'}">
			<a href="<c:url value = '/main?view=today'/>" class="viewLink">Today
				${util.todayDate}</a>
			<a href="<c:url value = '/main?view=tomorrow'/>" class="viewLink">Tomorrow
				${util.tomorrowDate}</a>
				<a href="<c:url value = '/main?view=someday'/>"  class="activeViewLink">Someday</a>
			<a href="<c:url value = '/main?view=fixed'/>" class="viewLink">Fixed</a>
			<a href="<c:url value = '/main?view=bin'/>" class="viewLink">Recycle Bin</a>			
		</c:if>
		<c:if test="${param.view == 'fixed'}">
			<a href="<c:url value = '/main?view=today'/>" class="viewLink">Today
				${util.todayDate}</a>
			<a href="<c:url value = '/main?view=tomorrow'/>" class="viewLink">Tomorrow
				${util.tomorrowDate}</a>
			<a href="<c:url value = '/main?view=someday'/>" class="viewLink">Someday</a>
			<a href="<c:url value = '/main?view=fixed'/>"  class="activeViewLink">Fixed</a>
			<a href="<c:url value = '/main?view=bin'/>" class="viewLink">Recycle Bin</a>			
		</c:if>
		<c:if test="${param.view == 'bin'}">
			<a href="<c:url value = '/main?view=today'/>" class="viewLink">Today
				${util.todayDate}</a>
			<a href="<c:url value = '/main?view=tomorrow'/>" class="viewLink">Tomorrow
				${util.tomorrowDate}</a>
			<a href="<c:url value = '/main?view=someday'/>" class="viewLink">Someday</a>
			<a href="<c:url value = '/main?view=fixed'/>" class="viewLink">Fixed</a>
			<a href="<c:url value = '/main?view=bin'/>"  class="activeViewLink">Recycle Bin</a>
		</c:if>