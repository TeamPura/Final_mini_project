<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">
    
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-hover-dropdown.min.js"></script>
    <title>Administrator's Page</title>
    
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/main.css" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/hover.zoom.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/hover.zoom.conf.js"></script>
  </head>
  <body>
    <!-- Static navbar -->
    <div class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="adminhome">Administrator's Page</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/apprentice">Log out</a></li>
            <li><a href="">Help</a></li>
           
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <!-- +++++ Welcome Section +++++ -->
<div id="nav" style="padding-top: 15px">
     <ul>
         <li><a href="#student">Add Student</a></li>
         <li><a href="#faculty">Add Faculty</a></li>
         <li><a href="#college">Add College</a></li>
         <li><a href="#department">Add Department</a></li>
         <li><a href="#course">Add Course</a></li>
         <li><a href="#prospectus">Add Prospectus</a></li>
         <li><a href="#schoolyear">Add School Year</a></li>
         <li><a href="#semester">Add Semester</a></li>
         <li><a href="#subjects">Add Subject</a></li>    
         <li><a href="#fee">Add Fee</a></li>
         <li><a href="#rooms">Add Room</a></li>
         <li><a href="#days">Add Day</a></li>
         <li><a href="#schedule">Add Schedule</a></li>
         <li><a href="#administrator">Add Administrator</a></li>
     </ul>
</div>
    
    
    <!-- +++++ Projects Section +++++ -->
    
    <div class="container pt">
<div id="page1">
  <a id="student"></a>
  <form class="form-horizontal" action="studentcreate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Create Student</legend>

<!-- Password -->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>  
  <div class="col-md-4">
  <input id="password" name="password" class="form-control input-md" required="required" type="password">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lname">Last Name</label> 
  <div class="col-md-4">
  <input id="lname" name="lname" class="form-control input-md" required="required" type="text">    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fname">First Name</label> 
  <div class="col-md-4">
  <input id="fname" name="fname" class="form-control input-md" required="required" type="text">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mname">Middle Name</label> 
  <div class="col-md-4">
  <input id="mname" name="mname" class="form-control input-md" required="required" type="text">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="bday">Birthdate</label> 
  <div class="col-md-4">
  <input id="bday" name="bday" class="form-control input-md" placeholder="yyyy-mm-dd" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="address">Address</label> 
  <div class="col-md-4">
  <input id="address" name="address" class="form-control input-md" required="required" type="text">
    
  </div>
</div>


<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="gender">Gender</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="gender-0">
      <input name="gender" id="gender-0" value="F" checked="checked" type="radio">
      Female
    </label>
  </div>
  <div class="radio">
    <label for="gender-1">
      <input name="gender" id="gender-1" value="M" type="radio">
      Male
    </label>
  </div>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="pic_file">Upload Picture</label>
  <div class="col-md-4">
    <input id="pic_file" name="pic_file" class="input-file" type="file">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="emailAddress">Email Address</label> 
  <div class="col-md-4">
  <input id="emailAddress" name="emailAddress" class="form-control input-md" required="required" type="text">
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="courseId">Course Name</label>
  <div class="col-md-4">
    <select id="courseId" name="courseId" class="form-control">
      <option></option>
      <c:forEach var="courseValue" items="${courseList}">
      <option value="${courseValue.courseId}" name="courseId">${courseValue.courseDesc}</option>
     </c:forEach>
    </select>
  </div>
</div>

<!-- Select Basic -->
<!--
<div class="form-group">
  <label class="col-md-4 control-label" for="yearLevel">Year Level</label>
  <div class="col-md-4">
    <select id="yearLevel" name="yearLevelId" class="form-control">
      <option></option>
      <c:forEach var="yearLevelValue" items="${yearLevelList}">
      <option value="${yearLevelValue.yearLevelId}" name="yearLevelId">${yearLevelValue.yearLevelDesc}</option>
     </c:forEach>
    </select>
  </div>
</div>
 -->
<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="semesterId">Semester</label>
  <div class="col-md-4">
    <select id="semesterId" name="semesterId" class="form-control">
      <option></option>
      <c:forEach var="semesterValue" items="${semesterList}">
      <option value="${semesterValue.semesterId}" name="semesterId">${semesterValue.semesterDesc}</option>
     </c:forEach>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="prospectusId">Prospectus Name</label>
  <div class="col-md-4">
    <select id="prospectusId" name="prospectusId" class="form-control">
      <option></option>
      <c:forEach var="prospectusValue" items="${prospectusList}">
      <option value="${prospectusValue.prospectusId}" name="prospectusId">${prospectusValue.prospectusDesc}</option>
     </c:forEach>
    </select>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>   
  </div>
  
<br><br><br><br><br>
<div id="page2">
  <a id="faculty"></a>
   <form class="form-horizontal" action="facultycreate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Create Faculty</legend>

<!-- Password -->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>  
  <div class="col-md-4">
  <input id="password" name="password" class="form-control input-md" required="required" type="password">
    
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lname">Last Name</label>  
  <div class="col-md-4">
  <input id="lname" name="lname" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fname">First Name</label>  
  <div class="col-md-4">
  <input id="fname" name="fname" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mname">Middle Name</label>  
  <div class="col-md-4">
  <input id="mname" name="mname" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="bday">Birthdate</label>  
  <div class="col-md-4">
  <input id="bday" name="bday" class="form-control input-md" placeholder="yyyy-mm-dd" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="address">Address</label>  
  <div class="col-md-4">
  <input id="address" name="address" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="gender">Gender</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="gender-0">
      <input name="gender" id="gender-0" value="F" checked="checked" type="radio">
      Female
    </label>
    </div>
  <div class="radio">
    <label for="gender-1">
      <input name="gender" id="gender-1" value="M" type="radio">
      Male
    </label>
    </div>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="pic_file">Upload Picture</label>
  <div class="col-md-4">
    <input id="pic_file" name="pic_file" class="input-file" type="file">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email_address">Email Address</label>  
  <div class="col-md-4">
  <input id="emailAddress" name="emailAddress" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Select Basic (department.deptID)-->
<div class="form-group">
  <label class="col-md-4 control-label" for="department">Department</label>
  <div class="col-md-4">
    <select id="department" name="deptId" class="form-control">
      <option></option>
      <c:forEach var="deptValue" items="${deptList}">
      <option value="${deptValue.deptId}" name="deptId">${deptValue.deptDesc}</option>
     </c:forEach>
    </select>
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
  <input type="submit" value="Save" id="submit" name="submit" class="btn btn-success"> 
  </div>
</div>
</fieldset>
</form>

</div>
<br><br><br><br><br>
<div id="page3">
  <a id="college"></a>
<form class="form-horizontal" action="collegecreate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Create College</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">College Name</label>  
  <div class="col-md-4">
  <input id="collegeName" name="collegeName" class="form-control input-md" required="required" type="text">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Description</label>  
  <div class="col-md-4">
  <input id="collegeDesc" name="collegeDesc" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    <input type="submit" value="Save" id="submit" name="submit" class="btn btn-success">
  </div>
</div>

</fieldset>
</form>

</div>
<br><br><br><br><br>
<div id="page4">
  <a id="department"></a>
    <form class="form-horizontal" action="deptcreate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Create Department</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="deptName">Department Name</label>  
  <div class="col-md-4">
  <input id="deptName" name="deptName" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="deptDesc">Description</label>  
  <div class="col-md-4">
  <input id="deptDesc" name="deptDesc" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="collegeId">College</label>
  <div class="col-md-4">
    <select id="collegeId" name="collegeId" class="form-control">
      <option value="0"></option>
      <c:forEach var="collValue" items="${collList}">
      <option value="${collValue.collegeId}" name="collegeId">${collValue.collegeDesc}</option>
     </c:forEach>
     
    </select>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <input type="submit" value="Save" id="submit" name="submit" class="btn btn-success">
  </div>
</div>

</fieldset>
</form>

</div>
<br><br><br><br><br>
<div id="page5">
  <a id="course"></a>
   <form class="form-horizontal" action="coursecreate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Create Course</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="courseName">Course Name</label>  
  <div class="col-md-4">
  <input id="courseName" name="courseName" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="courseDesc">Description</label>  
  <div class="col-md-4">
  <input id="courseDesc" name="courseDesc" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="deptId">Department</label>
  <div class="col-md-4">
    <select id="deptId" name="deptId" class="form-control">
      <option></option>
      <c:forEach var="deptValue" items="${deptList}">
      <option value="${deptValue.deptId}">${deptValue.deptDesc}</option>
     </c:forEach>
    </select>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <input type="submit" value="Save" id="submit" name="submit" class="btn btn-success">
  </div>
</div>
</fieldset>
</form>
<br><br><br><br><br>
<!-- +++++ Start of Semester +++++ -->            
<div id="page7">
  <a id="semester"></a>
<form class="form-horizontal" action= "semestercreate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Create Semester</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="semesterName">Semester Name</label>  
  <div class="col-md-4">
  <input id="semester_name" name="semester_name" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="semester_desc">Description</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="semester_desc" name="semester_desc"></textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>
</div>
<!-- +++++ End of Semester +++++ -->

<br><br><br><br><br>

<!-- +++++ Start of School Year +++++ -->            
<div id="page6">
  <a id="schoolyear"></a>
<form class="form-horizontal" action="schoolyearcreate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Create School Year</legend>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="acadName">Academic Year Name</label>  
  <div class="col-md-4">
  <input id="acadName" name="acadName" class="form-control input-md" required="required" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="acadStartDate">Start Date</label>  
  <div class="col-md-4">
  <input id="acadStartDate" name="acadStartDate" placeholder="yyyy-mm-dd" class="form-control input-md" required="required" type="text">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="acadEndDate">End Date</label>  
  <div class="col-md-4">
  <input id="acadEndDate" name="acadEndDate" placeholder="yyyy-mm-dd" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>

</div>
<!-- +++++ End of School Year +++++ -->


<br><br><br><br><br>


<!-- +++++ Start of Subjects +++++ -->            
<div id="page9">
  <a id="subjects"></a>
<form class="form-horizontal" action="subjectcreate" method="post">
<fieldset>

<!-- Form Name -->
<legend>Create Subject</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Subject Name</label>  
  <div class="col-md-4">
  <input id="subjName" name="subjName" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label">Description</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="subjDesc" name="subjDesc"></textarea>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Units</label>  
  <div class="col-md-4">
  <input id="units" name="units" placeholder="3" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>
</div>
<!-- +++++ End of Subjects +++++ -->



<br><br><br><br><br>
<!-- +++++ Start of Fee +++++ -->            
<div id="page10">
  <a id="fee"></a>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Create Fee</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fee_name">Fee Name</label>  
  <div class="col-md-4">
  <input id="fee_name" name="fee_name" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="fee_desc">Description</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="fee_desc" name="fee_desc"></textarea>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lec_fee">Lecture Fee</label>  
  <div class="col-md-4">
  <input id="lec_fee" name="lec_fee" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lab_fee">Laboratory Fee</label>  
  <div class="col-md-4">
  <input id="lab_fee" name="lab_fee" class="form-control input-md" type="text">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>

</div>
<!-- +++++ End of Fee +++++ -->




<br><br><br><br><br>
<!-- +++++ Start of Room +++++ -->            
<div id="page11">
  <a id="rooms"></a>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Create Room</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="room_name">Room Name</label>  
  <div class="col-md-4">
  <input id="room_name" name="room_name" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="room_bldg">Room building</label>  
  <div class="col-md-4">
  <input id="room_bldg" name="room_bldg" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="room_floor">Room Floor</label>  
  <div class="col-md-4">
  <input id="room_floor" name="room_floor" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="room_capacity">Room Capacity</label>  
  <div class="col-md-4">
  <input id="room_capacity" name="room_capacity" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>

</div>
<!-- +++++ End of Room +++++ -->

<br><br><br><br><br>
<!-- +++++ Start of Day +++++ -->            
<div id="page12">
  <a id="days"></a>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Create Day</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="day_name">Day Name</label>  
  <div class="col-md-4">
  <input id="day_name" name="day_name" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="day_desc">Description</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="day_desc" name="day_desc"></textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>

</div>
<!-- +++++ End of Day +++++ -->

<br><br><br><br><br>
<!-- +++++ Start of Schedule +++++ -->            
<div id="page13">
  <a id="schedule"></a>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Create Schedule</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="schedule_name">Schedule Name</label>  
  <div class="col-md-4">
  <input id="schedule_name" name="schedule_name" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="schedule_start_time">Start TIme</label>  
  <div class="col-md-4">
  <input id="schedule_start_time" name="schedule_start_time" placeholder="hh:mm" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="schedule_end_time">End Time</label>  
  <div class="col-md-4">
  <input id="schedule_end_time" name="schedule_end_time" class="form-control input-md" placeholder="hh:mm" required="required" type="text">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>

</div>
<!-- +++++ End of Schedule +++++ -->

<br><br><br><br><br>
<!-- +++++ Start of Create Faculty +++++ -->             
<div id="page14">
  <a id="administrator"></a>
   <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Create Administrator</legend>
<div id="administrator">

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lname">Last Name</label>  
  <div class="col-md-4">
  <input id="lname" name="lname" placeholder="" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mname">Middle Name</label>  
  <div class="col-md-4">
  <input id="mname" name="mname" placeholder="" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fname">First Name</label>  
  <div class="col-md-4">
  <input id="fname" name="fname" placeholder="" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="bday">Birthdate</label>  
  <div class="col-md-4">
  <input id="bday" name="bday" placeholder="yyyy-mm-dd" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="address">Address</label>  
  <div class="col-md-4">
  <input id="address" name="address" placeholder="" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="gender">Gender</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="gender-0">
      <input name="gender" id="gender-0" value="F" checked="checked" type="radio">
      Female
    </label>
    </div>
  <div class="radio">
    <label for="gender-1">
      <input name="gender" id="gender-1" value="M" type="radio">
      Male
    </label>
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email_address">Email Address</label>  
  <div class="col-md-4">
  <input id="email_address" name="email_address" placeholder="" class="form-control input-md" required="required" type="text">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passwordinput">password</label>
  <div class="col-md-4">
    <input id="passwordinput" name="passwordinput" placeholder="" class="form-control input-md" required="required" type="password">
    
  </div>
</div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-success">Save</button>
  </div>
</div>
</fieldset>
</form>
</div>

        </div><!-- /row -->
        
   </div> <!-- /container -->
    
    
    <!-- +++++ Footer Section +++++ -->
    
    <div id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <!-- put something here -->
                </div><!-- /col-lg-4 -->
                
                <div class="col-lg-4">
                    <!-- put something here -->
                </div><!-- /col-lg-4 -->
                
                <div class="col-lg-4">
                    <!-- put something here -->
                </div><!-- /col-lg-4 -->
            
            </div>
        
        </div>
    </div>
    

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
   <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
                $(".contactLink").click(function(){
                    if ($("#contactForm").is(":hidden")){
                        $("#contactForm").slideDown("slow");
                    }
                    else{
                        $("#contactForm").slideUp("slow");
                    }
                });
            });
            function closeForm(){
                $("#messageSent").show("slow");
                setTimeout('$("#messageSent").hide();$("#contactForm").slideUp("slow")', 2000);
           }

$(document).ready(function() {
  function filterPath(string) {
    return string
      .replace(/^\//,'')
      .replace(/(index|default).[a-zA-Z]{3,4}$/,'')
      .replace(/\/$/,'');
  }
  $('a[href*=#]').each(function() {
    if ( filterPath(location.pathname) == filterPath(this.pathname)
    && location.hostname == this.hostname
    && this.hash.replace(/#/,'') ) {
      var $targetId = $(this.hash), $targetAnchor = $('[name=' + this.hash.slice(1) +']');
      var $target = $targetId.length ? $targetId : $targetAnchor.length ? $targetAnchor : false;
       if ($target) {
         var targetOffset = $target.offset().top;
         $(this).click(function() {
           $('html, body').animate({scrollTop: targetOffset}, 1000);
           var d = document.createElement("div");
        d.style.height = "101%";
        d.style.overflow = "hidden";
        document.body.appendChild(d);
        window.scrollTo(0,scrollToM);
        setTimeout(function() {
        d.parentNode.removeChild(d);
            }, 10);
           return false;
         });
      }
    }
  });
});
</script>
  </body>
</html>
