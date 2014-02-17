<div id="enrollment_plot">

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


		<table class="table table-bordered">
			<tr>
           		<th style="width: 110px">Time</th>
                                    	<!-- <c:forEach items="${days}" var="days">
	                                    	<th style="width: 180px">${days.dayDesc}</th>	                                    	
	                                    </c:forEach> -->
	        	<th style="width: 180px">Monday</th>
	        	<th style="width: 180px">Tuesday</th>
	        	<th style="width: 180px">Wednesday</th>
		        <th style="width: 180px">Thursday</th>
		        <th style="width: 180px">Friday</th>
		        <th style="width: 180px">Saturday</th>
          	</tr>
          	
		
           <c:forEach items="${timeSched}" var="timeSched" varStatus="theCount">
	        	<tr class="${timeSched.tsName}">
			    	<td>${timeSched.tsTimeStart} - ${timeSched.tsTimeEnd}</td>
			                            	
			        <c:forEach items="${days}" var="days" varStatus="daysCount">
			        	<c:if test="${daysCount.count <= 6 }"> 			                                 	
				        	<c:choose>	
				            	<c:when test="${theCount.count == 19}">	                                    	
					            	<td class="${timeSched.tsName}_${days.dayId}" rowspan="2"></td> 	                                    
					            </c:when> 		                                    
	                            <c:when test="${theCount.count%6 == 1}">	                                    	
					            	<c:choose>
										<c:when test="${days.dayId%2 == 1}">
											<td class="${timeSched.tsName}_${days.dayId}" rowspan="2"></td>	 
										</c:when>
										<c:otherwise>
											<td class="${timeSched.tsName}_${days.dayId}" rowspan="3"></td>	 
										</c:otherwise>
									</c:choose> 	                                    
					            </c:when>	
					            <c:when test="${theCount.count%6 == 3}">	                                    	
					            	<c:choose>
										<c:when test="${days.dayId%2 == 1}">
											<td class="${timeSched.tsName}_${days.dayId}" rowspan="2"></td>	 
										</c:when>
									</c:choose> 	                                    
					           	</c:when> 
					            <c:when test="${theCount.count%6 == 4}">	                                    	
					            	<c:choose>
										<c:when test="${days.dayId%2 == 0}">
											<td class="${timeSched.tsName}_${days.dayId}" rowspan="3"></td>	 
										</c:when>
									</c:choose> 	                                    
					            </c:when> 
					            <c:when test="${theCount.count%6 == 5}">	                                    	
					            	<c:choose>
										<c:when test="${days.dayId%2 == 1}">
											<td class="${timeSched.tsName}_${days.dayId}" rowspan="2"></td>	 
										</c:when>
									</c:choose> 	                                    
					           	</c:when>				                                  	     
				          	</c:choose> 
				        </c:if>
			       	</c:forEach>
			                          				                                  
				</tr> 
			</c:forEach>
				
					<!-- 	
								
                                	<tr class="eight_thirty">                                     
                                    	<td rowspan=3> 1b </td>
                                    	<td rowspan=2> 1c </td>
                                    	<td rowspan=3> 1d </td>
                                    	<td rowspan=2> 1e </td>
                                    	<td rowspan=3> 1f </td>                                  	
                                    </tr>
                                    <tr class="thirty_nine">
                                    	<td>8:30 - 9:00</td>
                                    </tr>
                                    <tr class="nine_thirty">
                                    	<td>9:00 - 9:30</td>
                                    	<td rowspan=2> 2a </td>
                                    	<td rowspan=2> 2b </td>
                                    	<td rowspan=2> 2c </td>
                                    </tr>
                                    <tr class="thirty_ten">
                                    	<td>9:30 - 10:00</td>                                    	
                                    	<td rowspan=3> 3a </td>                                    	
                                    	<td rowspan=3> 3b </td>                                    	
                                    	<td rowspan=3> 3c </td>
                                    </tr>
                                    <tr class="ten_thirty">
                                    	<td>10:00 - 10:30</td>   
                                    	<td rowspan=2> 4a </td>
                                    	<td rowspan=2> 4b </td>
                                    	<td rowspan=2> 4c </td>
                                    </tr>
                                    <tr class="thirty_eleven">
                                    	<td>10:30 - 11:00</td>
                                    </tr>
                                    <tr class="eleven_thirty">
                                    	<td>11:00 - 11:30</td>
                                    	<td rowspan=2> 1a </td>
                                    	<td rowspan=3> 1b </td>
                                    	<td rowspan=2> 1c </td>
                                    	<td rowspan=3> 1d </td>
                                    	<td rowspan=2> 1e </td>
                                    	<td rowspan=3> 1f </td>                                    	
                                    </tr>
                                    <tr class="thirty_twelve">
                                    	<td>11:30 - 12:00</td>
                                    </tr>     
                                    <tr class="twelve_thirty">
                                    	<td>12:00 - 12:30</td>
                                    	<td rowspan=2> 2a </td>
                                    	<td rowspan=2> 2b </td>
                                    	<td rowspan=2> 2c </td>
                                    </tr>
                                    <tr class="thirty_one">
                                    	<td>12:30 - 1:00</td>
                                    	<td rowspan=3> 3b </td>                                    	
                                    	<td rowspan=3> 3d </td>                                    	
                                    	<td rowspan=3> 3f </td>
                                    </tr>
                                    <tr class="one_thirty">
                                    	<td>1:00 - 1:30</td>
                                    	<td rowspan=2> 4a </td>
                                    	<td rowspan=2> 4b </td>
                                    	<td rowspan=2> 4c </td>
                                    </tr>
                                    <tr class="thirty_two">
                                    	<td>1:30 - 2:00</td>
                                    </tr>
                                    <tr class="two_thirty">
                                    	<td>2:00 - 2:30</td>
                                    	<td rowspan=2> 1a </td>
                                    	<td rowspan=3> 1b </td>
                                    	<td rowspan=2> 1c </td>
                                    	<td rowspan=3> 1d </td>
                                    	<td rowspan=2> 1e </td>
                                    	<td rowspan=3> 1f </td> 
                                    </tr>
                                    <tr class="thirty_three">
                                    	<td>2:30 - 3:00</td>
                                    </tr>
                                    <tr class="three_thirty">
                                    	<td>3:00 - 3:30</td>
                                    	<td rowspan=2> 2a </td>
                                    	<td rowspan=2> 2b </td>
                                    	<td rowspan=2> 2c </td>
                                    </tr>
                                    <tr class="thirty_four">
                                    	<td>3:30 - 4:00</td>
                                    	<td rowspan=3> 3b </td>                                    	
                                    	<td rowspan=3> 3d </td>                                    	
                                    	<td rowspan=3> 3f </td>
                                   	</tr>
                                   	<tr class="four_thirty">
                                    	<td>4:00 - 4:30</td>
                                    	<td rowspan=2> 4a </td>
                                    	<td rowspan=2> 4b </td>
                                    	<td rowspan=2> 4c </td>
                                    </tr>
                                    <tr class="thirty_five">
                                    	<td>4:30 - 5:00</td>
                                    </tr>
                                    <tr class="five_thirty">
                                    	<td>5:00 - 5:30</td>
                                    	<td rowspan=2> 1a </td>
                                    	<td rowspan=2> 1a </td>
                                    	<td rowspan=2> 1a </td>
                                    	<td rowspan=2> 1a </td>
                                    	<td rowspan=2> 1a </td>
                                    	<td rowspan=2> 1a </td>
                                    </tr>
                                    <tr class="thirty_six">
                                    	<td>5:30 - 6:00</td>
                                    </tr> -->
                           </table>
                                              	
</div>