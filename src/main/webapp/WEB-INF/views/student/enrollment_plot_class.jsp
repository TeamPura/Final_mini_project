<div id="${clazz[0].classId}" style="margin-bottom: -20px;">
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<div class="box box-solid bg-aqua" style="height:auto;">
		<div class="box-header">
			<h3 class="box-title" style="font-weight: bold;">${clazz[0].subject.subjName}</h3>
			<div class="box-tools pull-right">
	        	<button id="${clazz[0].classId}" class="btn btn-info btn-sm unenrollBtn" data-widget="remove"><i class="fa fa-times"></i></button>
	        </div>
		</div>
		<div class="box-body" style="padding: 0px;">
			${clazz[0].room.roomName}
		</div>
	</div>
	
</div>    