<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Page</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/assets/css/main.css" rel="stylesheet">
    
    
<style>
.datagrid table { border-collapse: collapse; text-align: left; width: 100%; } 
.datagrid {font: normal 12px/150% Arial, Helvetica, sans-serif; 
background: #fff; 
overflow: hidden; 
border: 1px solid #247F5D; 
-webkit-border-radius: 3px; 
-moz-border-radius: 3px; 
border-radius: 3px; 
margin-left: 200px;
margin-right: 200px;
margin-top: 50px;}
.datagrid table td, 
.datagrid table th { 
padding: 3px 10px; }
.datagrid table thead th {
 text-align: center;
background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3BFFCB), color-stop(1, #247F5D) );
background:-moz-linear-gradient( center top, #3BFFCB 5%, #247F5D 100% );
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3BFFCB', endColorstr='#247F5D');
background-color:#3BFFCB; color:#000000; font-size: 15px; font-weight: bold; border-left: 1px solid #247F5D; } 
.datagrid table thead th:first-child { border: none;}
.datagrid table tbody td { color: #00557F; border-left: 1px solid #E1EEF4;font-size: 12px;font-weight: normal; }
.datagrid table tbody .alt td { background: #E1EEf4; color: #00557F; }
.datagrid table tbody td:first-child {border-left: none; }
.datagrid table tbody tr:last-child td { border-bottom: none; }
.datagrid table tfoot td div { border-top: 1px solid #247F5D;background: #E1EEf4;} 
.datagrid table tfoot td { padding: 0; font-size: 12px } 
.datagrid table tfoot td div{ padding: 2px; }
.datagrid table tfoot td ul { margin: 0; padding:0; list-style: none; text-align: right; }
.datagrid table tfoot  li { display: inline; }
.datagrid table tfoot li a { 
text-decoration: none; 
display: inline-block;  
padding: 2px 8px; 
margin: 1px;
color: #000000;
border: 1px solid #247F5D;
-webkit-border-radius: 3px; 
-moz-border-radius: 3px; 
border-radius: 3px; 
background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #3BFFCB), color-stop(1, #247F5D) );
background:-moz-linear-gradient( center top, #3BFFCB 5%, #247F5D 100% );
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3BFFCB', endColorstr='#247F5D');
background-color:#3BFFCB; }
.datagrid table tfoot ul.active, .datagrid table tfoot ul a:hover { 
text-decoration: none;border-color: #00557F; color: #FFFFFF; background: none; background-color:#006699;}
div.dhtmlx_window_active, div.dhx_modal_cover_dv { position: fixed !important; }
</style>
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
          <li><a href="index.html">Back</a></li>
            <li><a href="/apprentice">Log out</a></li>
            
           
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>


<h1 align="center">View Faculty</h1>


<form action="viewstudents" method="post">
<!-- Select Basic -->
    <select id="user" name="user" class="form-control">
      <option value=1>Faculty</option>
      <option value=2>Student</option>
    </select>
     <button id="submit" name="submit" class="btn btn-success">Go</button>
    </form>

<!-- Table -->
<div class="datagrid">

<table>
<thead><tr><th>ID</th><th colspan="2">Name</th><th colspan="2"></th></tr></thead>

<tfoot><tr><td colspan="5">
<div id="paging">
<ul>
<li><a href="#"><span>Previous</span></a></li>
<li><a href="#" class="active"><span>1</span></a></li>
<li><a href="#"><span>2</span></a></li>
<li><a href="#"><span>3</span></a></li>
<li><a href="#"><span>4</span></a></li>
<li><a href="#"><span>5</span></a></li>
<li><a href="#"><span>Next</span></a></li>
</ul>
</div>
</tr></tfoot>




<tbody>
<c:forEach var="listValue" items="${facultyList}">
<c:choose>
<c:when test="${listValue.status>=1}">
	<tr>
 <td>${listValue.userId}</td><td>${listValue.lname}</td> <td>${listValue.fname}</td><td><a href="viewf/${listValue.userId}">View / Edit</a></td>
 <td><form action="deletef/${listValue.userId}" method="post"><button id="submit" name="submit" class="btn btn-danger" onClick="confirm( 'Are you sure?')">Delete</button></form></td>
 </tr>
 </c:when>
 </c:choose>
</c:forEach>

</tbody>

</table></div>


</body>
</html>
