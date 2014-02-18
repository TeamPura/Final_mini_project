<div class="box-body table-responsive no-padding">

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<table class="table table-hover">
		<tr>
			<th>Call In Date</th>
			<th>Reason</th>
			<th>Days Absent</th>
		</tr>
		<c:forEach items="${callInLogs}" var="callInLogs">
			<tr>
				<td>${callInLogs.callInDate}</td>
				<td>${callInLogs.reason}</td>
				<td>${callInLogs.numDaysAbsent}</td>
			</tr>
		</c:forEach>
	</table>
</div>