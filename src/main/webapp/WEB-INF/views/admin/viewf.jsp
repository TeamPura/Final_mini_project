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
          <a class="navbar-brand" href="/apprentice/adminhome">Administrator's Page</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/apprentice">Log out</a></li>
            <li><a href="">Help</a></li>
           
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div class="container pt">
<form class="form-horizontal" action="editf/${faculty.userId}" method="post">
<fieldset>

<!-- Form Name -->
<legend>Edit Faculty</legend>


<div class="form-group">
  <label class="col-md-4 control-label" for="userId">ID</label>  
  <div class="col-md-4">
  <input id="userId" name="userId" class="form-control input-md" type="text" value="${faculty.userId}" disabled>
  </div>
</div>
<!-- Password -->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>  
  <div class="col-md-4">
  <input id="password" name="password" class="form-control input-md" type="text" value="${faculty.password}">
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lname">Last Name</label>  
  <div class="col-md-4">
  <input id="lname" name="lname" class="form-control input-md" type="text" value="${faculty.lname}">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mname">Middle Name</label>  
  <div class="col-md-4">
  <input id="mname" name="mname" class="form-control input-md" type="text" value="${faculty.mname}">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fname">First Name</label>  
  <div class="col-md-4">
  <input id="fname" name="fname" class="form-control input-md" type="text" value="${faculty.fname}">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="bday">Birthdate</label>  
  <div class="col-md-4">
  <input id="bday" name="bday" class="form-control input-md" type="text" value="${faculty.bday}">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="address">Address</label>  
  <div class="col-md-4">
  <input id="address" name="address" class="form-control input-md" type="text" value="${faculty.address}">
    
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="gender">Gender</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="gender-0">
      <input name="gender" id="gender-0" value="F" type="radio" ${genderd.equals("F") ? 'checked="checked"' : ''}>
      Female
    </label>
    </div>
  <div class="radio">
    <label for="gender-1">
      <input name="gender" id="gender-1" value="M" type="radio" ${genderd.equals("M") ? 'checked="checked"' : ''}>
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
  <input id="emailAddress" name="emailAddress" class="form-control input-md" type="text" value="${faculty.emailAddress}">
    
  </div>
</div>

<!-- Select Basic (department.deptID)-->
<div class="form-group">
  <label class="col-md-4 control-label" for="department">Department</label>
  <div class="col-md-4">
    <select id="department" name="deptId" class="form-control">
      <c:forEach var="deptValue" items="${deptList}">
      <option value="${deptValue.deptId}" name="deptId" ${deptValue.deptId == deptdid ? 'selected="selected"' : ''}>${deptValue.deptDesc}</option>
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
</div><!-- /row -->
        
    <!-- /container -->
    
    
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