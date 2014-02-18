<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Faculty</title>
        
    <link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/favicon.ico" />
        
     <!-- Main Imports -->   
    <link href="resources/faculty/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/faculty/css/font-awesome.min.css" rel="stylesheet">   
   	<link href="resources/faculty/css/main.css" rel="stylesheet">	
	<script src="resources/faculty/js/jquery-1.10.2.js"></script>  
    <script src="resources/faculty/js/bootstrap.min.js"></script>
    
    <!-- Validation Engine -->
    <link href="resources/faculty/css/validationEngine.jquery.css" rel="stylesheet">
    <script src="resources/faculty/js/jquery.validationEngine-en.js"></script>
    <script src="resources/faculty/js/jquery.validationEngine.js"></script>  
    
    <!-- Date Picker -->
    <link href="resources/faculty/css/jquery-ui-1.10.4.custom.css" rel="stylesheet">  
    <script src="resources/faculty/js/jquery-ui-1.10.4.custom.js"></script> 
    
    <!-- Datatable imports -->    
    <script type="text/javascript" charset="utf-8"  src="resources/faculty/js/jquery.dataTables.js"></script>
	<script type="text/javascript" charset="utf-8"  src="resources/faculty/js/DT_bootstrap.js"></script>   
	<link href="resources/faculty/css/DT_bootstrap.css" rel="stylesheet">	 
	<link href="resources/faculty/css/jquery.dataTables.css" rel="stylesheet">
    
    <script>    
    $(document).ready(function () {
    	jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#formID").validationEngine();
		});
    });
  	</script>
    
        
    
    <script>    
    $(function() {
	    $( ".datepicker" ).datepicker();	    
  	});
  	</script>

    
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body data-spy="scroll" data-target="#navbar" data-offset="0">
<br><br><br><br><br><br><br>
    <header id="header" role="banner">
        <div class="container">
            <div id="navbar" class="navbar navbar-default">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- <a class="navbar-brand" href="index.html"></a> -->
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#main-slider"><i class="icon-home"></i></a></li>
                        <li><a data-toggle="modal" data-target="#viewClass">View Class</a></li>
                        <li><a data-toggle="modal" data-target="#addClass">Add Class</a></li>
                        <li><a data-toggle="modal" data-target="#classEdit">Update Class</a></li>
                        <li><a data-toggle="modal" data-target="#faculty">Faculty Profile</a></li>
                        <li><a href="/apprentice">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header><!--/#header-->

    <section id="main-slider" class="carousel">
        <div class="carousel-inner">
            <div class="item active">
                <div class="container">
                    <div class="carousel-content">
                        <h1>Hello ${faculty.fname}!</h1>
                        <p class="lead">Have a nice day!</p>
                    </div>
                </div>
            </div><!--/.item-->
            <div class="item">
                <div class="container">
                    <div class="carousel-content">
                        <h1>Be proud you are a teacher,</h1>
                        <p class="lead">the future depends on you.</p>
                    </div>
                </div>
            </div><!--/.item-->
        </div><!--/.carousel-inner-->
        <a class="prev" href="#main-slider" data-slide="prev"><i class="icon-angle-left"></i></a>
        <a class="next" href="#main-slider" data-slide="next"><i class="icon-angle-right"></i></a>
    </section><!--/#main-slider-->
    
    
<!-- View Class -->   
<div class="modal fade" id="viewClass" tabindex="-1" role="dialog" aria-labelledby="viewClass" aria-hidden="true">
	<div class="modal-dialog modal-lg">
    	<div class="modal-content">
    	<section id="viewClass">    	    
                <div class="modal-header"> 
    				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              		<div class="center">
                    <h2>View Classes</h2>
                	</div><!--/.center-->
                </div>
                <div class="modal-body">
                <table  class="table table-striped table-bordered" id="example"> 
                    <thead> 
                   		<tr>	
                   				<td>Subject Name</td> 
								<td>Enrollment Due Date</td>
								<td>Enrolled</td>
						        <td>Max</td> 
                                <td>Min</td> 
                                <td>Start Date</td> 
                                <td>Status</td> 
                                <td>Day</td>
                                <td>Room</td>  
                                <td>Start</td>
                                <td>End</td>                                    
                   		</tr>                   		
                   	</thead>
         			<tbody>
	<c:choose>
    	<c:when test="${empty classList}">
       		<tr><td><h3 align="center"> You have no class handled. </h3></td></tr>
    	</c:when>    
    <c:otherwise>  
       	<c:forEach begin="0" end="${fn:length(classList) - 1}" var="index">					
                        <tr>                		
                        		<td><a href="#" onclick="window.open('viewStudentsClassPost/${classList[index].classId}', 'newwindow', 'width=1111, height=700, toolbar=no, menubar=no, scrollbars=no, location=no, directories=no'); return false;">
                        		${classList[index].subject.subjName}</a></td> 
								<td> ${classList[index].dueEnrollmentDate}</td>								
								<td> ${allEnrolled[index]}</td>																				
								<td> ${classList[index].maxStudents}</td> 
                                <td> ${classList[index].minStudents}</td> 
                                <td> ${classList[index].startClassDate}</td> 
                                <td> ${classList[index].status}</td> 
                                <td> ${classList[index].day.dayName}</td>
                                <td> ${classList[index].room.roomName}</td>  
                                <td> ${classList[index].schedule.scheduleStartTime}</td> 
                                <td> ${classList[index].schedule.scheduleEndTime}</td>        
                        </tr>                                   	
    	</c:forEach>              
    </c:otherwise>     	          
    </c:choose>
            		</tbody>
            		</table>                   
                </div>
        		<div class="modal-footer">
        					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>        					
				</div>   
    		</section><!--/#services-->
    	</div>
  	</div>
</div>
<!-- End of View Class -->



<!-- Add Class -->
<div class="modal fade" id="addClass" tabindex="-1" role="dialog" aria-labelledby="viewClass" aria-hidden="true">
	<div class="modal-dialog modal-lg">
    	<div class="modal-content">
    		<section id="addClass">
        		<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        				<div class="center">
                    		<h2>Add Class</h2>
                		</div>
                </div>
                <div class="modal-body">
                                  
                		<form class="form-horizontal" method="post" action="addClassPost" id="formID">
						<!-- Form Name <legend>Add Class</legend> -->
				<table style="border-spacing: 10px;border-collapse: separate;">		
					<tr>	<!-- Subject Drop Down -->   
						<td colspan="3"><div class="control-group">
 				 			<label class="control-label" for="asd">Subject</label>
 				 			<div class="controls">
    							<select id="endTime" name="subject.subjId" class="form-control" style="width: 450px;"  data-validation-engine="validate[required]">
    							<option> </option>
      						<c:forEach var="listValue" items="${subjectList}">
                   				<option value="${listValue.subjId}">${listValue.subjName} - ${listValue.subjDesc} - ${listValue.units}.0 units</option>
	   						</c:forEach>
   								 </select>
  							</div>
						</div> 
						</td>
						 
						<!-- Days Drop Down-->
						<td><div class="control-group">
  						<label class="control-label" for="selectbasic">Days</label>
  							<div class="controls">
    							<select id="selectbasic" name="day.dayId"  class="form-control" style="width: 120px;"  data-validation-engine="validate[required]">
    							<option> </option>
   							<c:forEach var="listValue" items="${dayList}">
                   				<option value="${listValue.dayId}">${listValue.dayName}</option>
	   						</c:forEach>
 								</select>
 								
  							</div>
  						</div>
						</td>
					
				
						<!-- Start time and End Time Drop Down -->
						<td><div class="control-group">
 						<label class="control-label" for="asd">Time Schedule</label>
  							<div class="controls">
    							<select id="startTime" name="schedule.scheduleId"  class="form-control" style="width: 135px;"  data-validation-engine="validate[required]">
    							<option> </option>
      						<c:forEach var="listValue" items="${scheduleList}">
                   				<option value="${listValue.scheduleId}">${listValue.scheduleStartTime} - ${listValue.scheduleEndTime}</option>
	   						</c:forEach>
    							</select>
  							</div>
						</div>
						</td>
					
						<!-- Room Drop Down-->    
						<td><div class="control-group">
  						<label class="control-label" for="asd">Room and Capacity</label>
  							<div class="controls">
    							<select id="endTime" name="room.roomId" class="form-control" style="width: 195px;"  data-validation-engine="validate[required]">
    							<option> </option>
      						<c:forEach var="listValue" items="${roomList}">
                  				<option value="${listValue.roomId}">${listValue.roomName} Capacity-${listValue.roomCapacity}</option>
	   						</c:forEach>
    							</select>
  							</div>
						</div>
						</td>
					</tr>
					<tr>
						<!-- School Year Drop Down -->
						<td><div class="control-group">
  						<label class="control-label" for="asd">School Year</label>
  							<div class="controls">
    							<select id="startTime" name="schoolYear.schoolYearId" class="form-control" style="width: 120px;"  data-validation-engine="validate[required]">
    							<option> </option>
      						<c:forEach var="listValue" items="${schoolYearList}">
                   				<option value="${listValue.schoolYearId}">${listValue.acadYear}</option>
	   						</c:forEach>
    							</select>
 							 </div>
						</div>
						</td>
					

						<!-- Start Date DatePicker Input-->
						<td><div class="control-group">
  						<label class="control-label" for="Startdate">Start Date:</label>
  							<div class="controls">
   					 			<input name="startClassDate" data-validation-engine="validate[required]" placeholder="mm-dd-yyyy"  class="datepicker form-control" style="width: 110px;" type="text">
    						</div>
						</div>
						</td>

						<!-- Due Date DatePicker Input-->
						<td><div class="control-group">
  						<label class="control-label" for="textinput">Due Date</label>
   							<div class="controls">
    							<input name="dueEnrollmentDate" data-validation-engine="validate[required]" placeholder="mm-dd-yyyy" class=" datepicker form-control" style="width: 110px;" type="text">
  							</div>
						</div>
						</td>

						<!-- Minimum Students Text input-->
						<td><div class="control-group">
  						<label class="control-label" for="minstud">Minimum Students:</label>
  							<div class="controls">
   								<input name="minStudents" placeholder="" class="form-control" style="width: 50px;" data-validation-engine="validate[required,custom[integer]]" type="text">
							</div>
						</div>
						</td>

						<!-- Maximum Students Text input-->
						<td><div class="control-group">
  						<label class="control-label" for="textinput">Maximum Students:</label>
  							<div class="controls">
    							<input name="maxStudents" placeholder="" class="form-control" style="width: 50px;" data-validation-engine="validate[required,custom[integer]] " type="text">
  							</div>
						</div>
						</td>
					</tr>
				</table>
					</div>
					<!-- Button (Double) -->
						<div class="modal-footer">
        					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        					<button type="submit" class="btn btn-primary" >Save changes</button>
						</div>
								
					</form>               
            		
 			</section><!--/#portfolio-->
 		</div>
 	</div>
 </div>
<!-- end of Add Class -->
  
<!-- Teacher Profile -->
<div class="modal fade" id="faculty" tabindex="-1" role="dialog" aria-labelledby="viewClass" aria-hidden="true">
	<div class="modal-dialog modal-lg">
    	<div class="modal-content">                
    	<section id="facultyProfile">
        	<div class="modal-header"> 
    				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              		<div class="center">
                    <h2>View Classes</h2>
                	</div><!--/.center-->
            </div>
            <div class="modal-body" style="padding-left: 247px;">
            <table style="border-spacing: 25px;border-collapse: separate;">
            <tr>
               	<td>
               		<div class="control-group">
  						<label class="control-label" for="minstud" style="font-size: 14px;">
  						ID Number:
  						</label>  
  						<div class="controls">
  						<a style="font-size: 16px;">${faculty.userId}</a>
  						</div>
  					</div>  					
               	</td>
            </tr>
            <tr>
               	<td colspan="3">
               		<div class="control-group">
  						<label class="control-label" for="minstud" style="font-size: 14px;">
               			Name: 
               			</label>
               			<div class="controls">
               			<a style="font-size: 16px;">${faculty.lname}, ${faculty.fname} ${faculty.mname}</a>
               			</div>
               		</div> 
               	</td>
               	<!-- <td>
               		<div class="control-group">
  						<label class="control-label" for="minstud" style="font-size: 14px;">
               			Middle Name:  
               			</label>
               			<div class="controls">
               			<a style="font-size: 16px;">${faculty.mname}</a>
               			</div>
               		</div>
               	</td>
               	<td>
               		<div class="control-group">
  						<label class="control-label" for="minstud" style="font-size: 14px;">
               			Last Name:  
               			</label>
               			<div class="controls">
               			<a style="font-size: 16px;">${faculty.lname}</a>
               			</div>
               		</div>
               	</td>
            </tr> 
            <tr>-->
               	<td>
               		<div class="control-group">
  						<label class="control-label" for="minstud" style="font-size: 14px;">
               			Email Address:
               			</label>
               			<div class="controls">
               			<a style="font-size: 16px;">${faculty.emailAddress}</a>
               			</div>
               		</div>
               	</td>
               	<td>
               		<div class="control-group">
  						<label class="control-label" for="minstud" style="font-size: 14px;">
               			Gender:
               			</label>
               			<div class="controls">
               			<c:if test="${faculty.gender == 'F' }">
               			<a style="font-size: 16px;">Female</a>
               			</c:if>
               			<c:if test="${faculty.gender == 'M' }">
               			<a style="font-size: 16px;">Male</a>
               			</c:if>
               			</div>
               		</div>
               	</td>               	
               	<td>
               		<div class="control-group">
  						<label class="control-label" for="minstud" style="font-size: 14px;">
               			Department:
               			</label>
               			<div class="controls">
               			<a style="font-size: 16px;">${faculty.department.deptName}</a>
               			</div>
               		</div>
               	</td>
            </tr>
            </table>   
         	</div>
         	<div class="modal-footer">
        					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>        					
			</div>
        </section><!--/#about-us-->   
        </div>
    </div>
</div>
<!-- End of Teacher Profile -->


<!-- Edit Class -->    
<div class="modal fade" id="classEdit" tabindex="-1" role="dialog" aria-labelledby="viewClass" aria-hidden="true">
	<div class="modal-dialog modal-lg">
    	<div class="modal-content">	
		<section id="editClass">        
        <div class="modal-header"> 
    		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>  
            <div class="center">
                <h2>Update Class</h2>
            </div>
        </div> 
        <div class="modal-body">            
 		<table  class="table table-striped table-bordered">
 		 
 		<c:choose>
    	<c:when test="${empty classDue}">
       <tr><td><h3> You have no overdue class enrollment. </h3></td></tr>
    </c:when>
    
    <c:otherwise> 
                        <tr> 
                           		<td>Subject Name</td> 
                				<td>Enrollment Due Date</td>
                				<td>Enrolled</td>
                    			<td>Max</td>                                
                                <td>Min</td> 
                                <td>Start Date</td> 
                                <td>Status</td> 
                                <td>Day</td>
                                <td>Room</td> 
                                <td>Start</td>
                                <td>End</td>
                                  
                       </tr> 
          	<c:forEach begin="0" end="${fn:length(classDue)-1}" var="index">

            <form class="form-horizontal" method="post" action="updateClassStudents"> 
      
				                <input type="hidden" name="classId" value="${classDue[index].classId}" />
				                <input type="hidden" name="subject.subjId" value="${classDue[index].subject.subjId}" />
				                <input type="hidden" name="maxStudents" value="${classDue[index].maxStudents}" />
				                <input type="hidden" name="minStudents" value="${classDue[index].minStudents}" />
				                <input type="hidden" name="day.dayId" value="${classDue[index].day.dayId}" />
				                <input type="hidden" name="room.roomId" value="${classDue[index].room.roomId}" />
				                <input type="hidden" name="schedule.scheduleId" value="${classDue[index].schedule.scheduleId}" />
				                <input type="hidden" name="schoolYear.schoolYearId" value="${classDue[index].schoolYear.schoolYearId}" />
				                <input type="hidden" name="faculty.userId" value="${classDue[index].faculty.userId}" />
				                
<tr> 
                				<td> ${classDue[index].subject.subjName}</td> 
                				<td> 
                  				<input required type="text" name="dueEnrollmentDateAttr" value="${classDue[index].dueEnrollmentDate}" class="datepicker form-control" style="width: 110px;"> 
                  				</td> 
                				<td> ${Enrolled[index]}</td> 
                				<td> ${classDue[index].maxStudents}</td> 
                                <td> ${classDue[index].minStudents}</td> 
            
                  				<td> <input required type="text" name="startClassDateAttr" value="${classDue[index].startClassDate}" class="datepicker form-control" style="width: 110px;"> </td> 
 
                                <td>
                                <select id="endTime" name="status" class="input-medium" > 
                    			<option value = "${classDue[index].status}"> ${classDue[index].status} </option>
                                <option value = "Cancelled"> Cancel </option>
                                <option value = "Started"> Start </option>
                            
                                </select>
                                </td> 
                                 
                                <td> ${classDue[index].day.dayName}</td>
                                <td> ${classDue[index].room.roomName}</td> 
                                <td> ${classDue[index].schedule.scheduleStartTime}</td> 
                                <td> ${classDue[index].schedule.scheduleEndTime}</td> 
                                <td> <button id="button1id" name="button1id" class="btn btn-success">Update</button> </td>
                        </tr>

              	</form> 
                  	</c:forEach> 
                   
    			</c:otherwise>
 				</c:choose> 
                </table>
                </div>
        		<div class="modal-footer">
        					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>        					
				</div>
        </section>       
        </div> 
    </div> 
</div>   
<!-- End of Edit Class -->

    

    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <img class="pull-right" src="resources/faculty/images/shapebootstrap.png" alt="ShapeBootstrap" title="ShapeBootstrap">
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    
    
    
</body>
</html>