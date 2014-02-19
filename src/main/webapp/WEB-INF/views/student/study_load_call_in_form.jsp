<div class="box box-primary">	

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
										
	<div class="box-header">
		<h3 class="box-title">Log New Call In</h3>
	</div>
	<div class="box-body">
		<form method="post" id="${classId}">
			<div class="form-group">
				<label>Total Number of Sick Days</label>
					<c:if test="${empty logCount}">
				    	<input name="logCount" id="0" class="form-control logCount" placeholder="0" disabled="" type="text">
				    </c:if>
				    <c:forEach items="${logCount}" var="logCount">
				    	<input name="logCount" id="${logCount[1]}" class="form-control logCount" placeholder="${logCount[1]}" disabled="" type="text">
				    </c:forEach>			                                             
			</div>
			<div class="form-group">
				<label>Call In Reason</label>
				<textarea name="reason" id="reason" class="form-control" rows="3" placeholder="Enter ..."></textarea>
			</div>
			<div class="form-group">
				<label>Number of Days Absent</label>
				<input name="numDaysAbsent" id="numDaysAbsent" class="form-control" placeholder="Enter ..." type="text">				                                            
			</div>				                                        
		</form>	
		<button id="${classId}" class="btn btn-primary callInSubmitBtn">Submit</button>			                                   	
	</div>  
</div>     