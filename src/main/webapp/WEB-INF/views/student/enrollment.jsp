<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Student | Enrollment</title>
	
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- bootstrap 3.0.2 -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
        <link href="resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
        <link href="resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
        <link href="resources/css/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
        <link href="resources/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- fullCalendar -->
        <link href="resources/css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
        <link href="resources/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
        <link href="resources/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    <!-- Modal CSS -->
        <link href="resources/css/modal.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
        <link href="resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />
  
        
</head>
<body class="skin-blue">

<!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="index.html" class="logo">Mini-Project!</a>
            
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/img/avatar3.png" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    AdminLTE Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Sales Department
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="resources/img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Reviewers
                                                    <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-warning"></i>
                                <span class="label label-warning">10</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 10 notifications</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-people info"></i> 5 new members joined today
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-warning danger"></i> Very long description here that may not fit into the page and may cause design problems
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users warning"></i> 5 new members joined
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-cart success"></i> 25 sales made
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-person danger"></i> You changed your username
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                        </li>
                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span>${student.fname} ${student.lname} <i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header bg-light-blue">
                                    <img src="resources/img/avatar3.png" class="img-circle" alt="User Image" />
                                    <p>
                                        ${student.fname} ${student.lname} - Web Developer
                                        <small>Member since Nov. 2012</small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Grades</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="${pageContext.request.contextPath}/studentSignout" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="resources/img/avatar3.png" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>Hello, ${student.fname}!</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/studentDashboard">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/prospectus">
                                <i class="fa fa-th"></i> <span>Prospectus</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Grades</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Sub-grade</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Sub-grade</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Sub-grade</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-laptop"></i>
                                <span>Moodle</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> General</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Icons</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Buttons</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Sliders</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Timeline</a></li>
                            </ul>
                        </li>
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/enrollment">
                                <i class="fa fa-edit"></i> <span>Enrollment</span>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/studyLoad">
                                <i class="fa fa-table"></i> <span>Study Load</span>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/assessment">
                                <i class="fa fa-table"></i> <span>Assessment</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-calendar"></i> <span>Calendar</span>
                                <small class="badge pull-right bg-red">3</small>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-envelope"></i> <span>Mailbox</span>
                                <small class="badge pull-right bg-yellow">12</small>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-folder"></i> <span>Notes</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Invoice</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Login</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Register</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Lockscreen</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> 404 Error</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> 500 Error</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i> Blank Page</a></li>
                            </ul>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">                
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Enrollment
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/studentDashboard"><i class="fa fa-dashboard"></i> Dashboard</a></li>
                        <li class="active">Enrollment</li>
                    </ol>
                </section>
                
                <!-- Main content -->
                <section class="content">
                	<div class="row">
                	
                	<div class="col-md-12">
                		<div class="box box-solid box-info">
                        	<div class="box-header">
                        		<div class="box-tools pull-right">
                                	<button data-widget="collapse" class="btn btn-primary btn-sm"><i class="fa fa-minus"></i></button>
                               	</div>
                            	<h3 class="box-title">Show Offered Subjects</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                            	<button id="enrol_advise" class="btn bg-maroon margin">Advise</button>
                            	<button id="enrol_block" class="btn bg-olive margin">Block</button>
                            	<button id="enrol_prospectus" class="btn bg-navy margin">Prospectus</button>
                            	<div class="input-group input-group-sm col-md-5" style="float: right; margin-top: 10px;">
                                	<input name="enrol_searh" type="text" class="form-control">
                                    <span class="input-group-btn">
                                    	<button type="button" class="btn btn-info btn-flat">Go!</button>
                                    </span>
                                </div>
                                <div id="box-body-main">                                
                                	      
                                </div>                                                                  
                            </div><!-- /.box-body -->
                        </div>
                	</div>
                	
                	<div class="col-md-12">
                		<div class="box box-solid box-primary">
                        	<div class="box-header">
                        		<div class="box-tools pull-right">
                                	<button data-widget="collapse" class="btn btn-primary btn-sm"><i class="fa fa-minus"></i></button>
                               	</div>
                            	<h3 class="box-title">Plot Schedule and Subjects</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body" id="enrollment_plot_body">
                            	
                           	</div><!-- /.box-body -->
                          </div><!-- /.box -->
          
                	</div><!-- /.col-md-12 -->
                	</div><!-- /.row -->
                	
                	<button id="saveEnrollment" class="btn bg-olive margin">Submit Class Schedule</button>
                	
               	</section><!-- /.content -->
             </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
        
        
        
       <div id="enrol_class_sched"></div> 
        

	<!-- jQuery 2.0.2 -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script> 
    <!-- jQuery UI 1.10.3 -->
        <script src="resources/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Modal CSS -->
        <script src="resources/js/modal.js" type="text/javascript"></script>
    <!-- Morris.js charts -->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="resources/js/plugins/morris/morris.min.js" type="text/javascript"></script>
	<!-- AdminLTE App -->
        <script src="resources/js/AdminLTE/app.js" type="text/javascript"></script>
     
        
         <script>
			$( document ).ready(function() {
				var base_url = "http://localhost:8080/apprentice";
				
				$("#saveEnrollment").click(function(){
					$.ajax({
						type: "GET",
						url: base_url + "/saveEnrollment",
						success: function(data){
							//alert("success");	
							window.location.href = base_url + "/studyLoad";
						}
					});
				});
				
				$('#enrollment_plot_body').load('enrollmentPlotLoad #enrollment_plot');
				$("#enrol_prospectus").click(function(){
					$('#box-body-main').load('enrollmentProspectus #enrollment_prospectus', function() {
						$("#prospectus_tabs").tabs({ collapsible: true });	
						
						$(".subjectClass").click(function(){ 
							var subject_id = $(this).attr('id');
							var arr = subject_id.split('_');
							var subjId = arr[1];
							
							$('#enrol_class_sched').load('enrolClassSched/' + subjId + ' #enrollmentClassShed', function(){						    
								$("#enrollmentClassShed").css("display", "block");
								$(".enrolClass").click(function(){
									var classId = $(this).attr('id');
									var numEnrollee = parseInt($("#class_" + classId + " #numEnrollee").text());
									var maxEnrollee = parseInt($("#class_" + classId + " #maxEnrollee").text());
									var dueEnroll = Date.parse($("#class_" + classId + " #dueEnroll").text());
									var currentDate = new Date();
									if(currentDate > dueEnroll)
										$("#alert_dueDateLapsed").css("display", "block");
									else{
										if(numEnrollee >= maxEnrollee)
											$("#alert_maxEnrollees").css("display", "block");
										else{
											$.ajax({
												type: "GET",
												url: base_url + "/classEnrollment/" + classId,
												dataType: 'json',
												success: function(data){
													if(data.MaxSubjects)
														$("#alert_maxSubjects").css("display", "block");
													else if(data.ConflictTime){
														$("#alert_conflictTime").css("display", "block");
														$("#conflict_time").append(data.SubjectName);
													}else if(data.ConflictDay){
														$("#alert_conflictDay").css("display", "block");
														$("#conflict_day").append(data.SubjectName);
													}else if(data.SubjectAlreadyEnrolled){
														$("#alert_subjectAlreadyEnrolled").css("display", "block");
														$("#subjectAlreadyEnrolled").append(data.SubjectName);
													}else{
														for(var counter in data.Records){ 
														    $.each(data.Records[counter].SchedPlot, function(key,value){
														        $("."+value).load("plotClass/" + data.Records[counter].classId, function(response, status, xhr){
														        	$(".unenrollBtn").click(function(){
														        		var classId = $(this).attr('id');
														        		$.ajax({
																			type: "GET",
																			url: base_url + "/unEnrollClass/" + classId ,
																			success: function(data){
																				$("#" + classId).remove();
																			}
																		});
														        	});
														        });													        
														    });
														}
														$("#enrollmentClassShed").fadeOut();
													}													
												},
												error: function(data) {
										            alert($(this).toSource());
										        }
											});
											return false;
										}
									}
								});
								$("#closeBtn_modal").click(function(){
									$("#enrollmentClassShed").css("display", "none");
								});
							});	
							
						}); //loads classes for subjects
						
					});	//#box-body-main load			
				});  //#enrol_prospectus	
				
			});
		</script>

</body>
</html>