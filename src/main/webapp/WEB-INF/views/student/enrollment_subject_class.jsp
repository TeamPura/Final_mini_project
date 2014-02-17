<div id="enrollmentClassShed" class="white_content">

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<div class="col-md-10" style="margin: 150px;">
	    	<div class="box box-solid box-info">
	        	<div class="box-header">
	            	<h3 class="box-title" style="font-weight: bold;">${clazz[1].subject.subjName} Class Offerings</h3>
	                	<div class="box-tools pull-right">
	                        <button id="closeBtn_modal" class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
	                    </div>
	             </div>
	             <div class="box-body">
	             	<div class="row">
			        	<div class="col-xs-12">
			            	<div class="box">
			                  	<div class="box-header">
			                       	<h4 style="font-size: 16px;">&nbsp;&nbsp; ${clazz[1].subject.subjDesc}</h4>
			                       	<h4 style="font-size: 16px;">&nbsp;&nbsp; Units: ${clazz[1].subject.units}</h4>
			                    </div><!-- /.box-header -->
			                    <div class="box-body table-responsive no-padding">
		                          	<table class="table table-hover">
			             	            <tbody>
			                            	<tr>
				                            	<th>Subject Name </th>
				                                <th>Enrollees</th>
				                                <th>Max Student</th>
				                                <th>Schedule</th>
				                                <th>Days</th>
				                                <th>Room</th>
				                                <th>Due Enrollment</th>				                                
				                                <th style="text-align:center">Enroll</th>
			                               	</tr>
			                               	<c:forEach items="${clazz}" var="clazz">
			                               		<tr id="class_${clazz.classId}">
			                               			<td>${clazz.subject.subjName}</td>
			                               			<c:choose>
			                               				<c:when test="${classNumEnrollee.size() >= 1}">
					                               			<c:forEach items="${classNumEnrollee}" var="classNumEnrollee">
						                               			<c:if test="${classNumEnrollee[0] == clazz.classId}">
						                               				<td id="numEnrollee">${classNumEnrollee[1]}</td>
						                               			</c:if>			                               					                               				
						                               		</c:forEach>
						                               	</c:when>
						                               	<c:otherwise>
						                               		<td id="numEnrollee">0</td>
						                               	</c:otherwise>				                               			
			                               			</c:choose>                               			
					                              	<td id="maxEnrollee">${clazz.maxStudents}</td>				
			                               			<td>${clazz.schedule.scheduleStartTime} - ${clazz.schedule.scheduleEndTime}</td>
			                               			<td>${clazz.day.dayName}</td>
			                               			<td>${clazz.room.roomName}, ${clazz.room.roomBldg}, ${clazz.room.roomFloor} </td>
			                               			<td id="dueEnroll">${clazz.dueEnrollmentDate}</td>
			                               			<td style="text-align:center">
			                                        	<button id="${clazz.classId}" class="enrolClass btn bg-purple margin" style="margin: 0px;">
			                                        		Enroll Me
			                                        	</button>
			                                        </td>
			                               		</tr>			                               	
			                               	</c:forEach>
			                        	</tbody>
			                    	</table>
			                	</div><!-- /.box-body -->
			            	</div><!-- /.box -->
			        	</div><!-- /.col-xs-12 -->
			     	</div><!-- /.row -->           	
	             </div><!-- /.box-body -->
	    	</div><!-- /.box -->
	  	</div>                       
	
</div>