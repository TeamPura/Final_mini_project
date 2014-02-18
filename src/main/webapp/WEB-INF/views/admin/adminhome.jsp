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
    <div id="ww">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 centered">
                    <img src="${pageContext.request.contextPath}/resources/assets/img/user.png" alt="Stanley">
                    <h1>Hello, Admin!</h1>
                    <!-- put something here -->    
                    <p>WHAT WOULD YOU LIKE TO DO?</p>    
                </div><!-- /col-lg-8 -->
            </div><!-- /row -->
        </div> <!-- /container -->
    </div><!-- /ww -->
    
    
    <!-- +++++ Projects Section +++++ -->
    
    <div class="container pt">
        <div class="row mt centered">    
            <div class="col-lg-4" style="padding-top: 40px">
                <p>Create</p>
                <a class="zoom green" href="/apprentice/createpage"><img img class="img-responsive" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/create.jpg"></img></a>
            </div>
            <div class="col-lg-4" style="padding-top: 40px">
                <p>View Records</p>
                <a class="zoom green" href="/apprentice/viewpage"><img img class="img-responsive" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/viewlist.png"></img></a>
            </div>
            <div class="col-lg-4" style="padding-top: 40px">
                 <p>Search</p>
                 <a class="zoom green" href="#"><img img class="img-responsive" src="${pageContext.request.contextPath}/resources/assets/img/portfolio/search1.png"></img></a>
            </div>
        </div><!-- /row -->
        
    </div><!-- /container -->
    
    
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
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
  </body>
</html>
