<div id="enrollment_plot">

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


		<table class="table table-bordered">
			<tr>
           		<th>Subject</th>
           		<th>Description</th>
           		<th>Units</th>
	        	<th>Time</th>
	        	<th>Room</th>
	        	<th>Status</th>
	        	<th>Adviser</th>
	        	<th>Call In</th>
          	</tr>
          	<c:forEach items="${clazz}" var="clazz">
          		<tr>
          			<td>${clazz.clazz.subject.subjName}</td>
          			<td>${clazz.clazz.subject.subjDesc}</td>
          			<td>${clazz.clazz.subject.units}</td>
          			<td>${clazz.clazz.schedule.scheduleStartTime} - ${clazz.clazz.schedule.scheduleEndTime}</td>
          			<td>${clazz.clazz.room.roomName} ${clazz.clazz.room.roomFloor} ${clazz.clazz.room.roomBldg}</td>
          			<c:choose>
          				<c:when test="${clazz.clazz.status == 'New'}">
          					<td>Enrolled</td>
          				</c:when>
          				<c:when test="${clazz.clazz.status == 'Cancelled'}">
          					<td>Cancelled</td>
          				</c:when>	
          				<c:otherwise>
          					<td>In Progress</td>
          				</c:otherwise>
          			</c:choose>  
          			<td>${clazz.clazz.faculty.fname} ${clazz.clazz.faculty.lname}</td>
          			<td><button id="${clazz.clazz.classId}" class="btn bg-olive margin callIn">Call In</button></td>
          		</tr>
          	</c:forEach>
		
          
         </table>
                                              	
</div>