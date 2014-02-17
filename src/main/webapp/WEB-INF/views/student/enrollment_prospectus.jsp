<div id="enrollment_prospectus">

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 
	<div id="prospectus_tabs" class="nav-tabs-custom">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#tab_info" data-toggle="tab">Prospectus Info</a></li>
			
			<c:forEach items="${yearLevel}" var="yearLevel" varStatus="cntYear_Level">
				<li><a href="#tab_${yearLevel.yearLevelId}" data-toggle="tab">${yearLevel.yearLevelDesc}</a></li>
			</c:forEach>			
			
		</ul>
	    <div class="tab-content">
	    
	    	<div class="tab-pane active" id="tab_info">
		       	<b>Information:</b>
		        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
		        	In rutrum felis quis ipsum adipiscing vehicula. 
		        	Sed venenatis elit at ante convallis, quis tincidunt metus gravida. 
		        	Sed malesuada, turpis vitae vehicula vehicula, libero ligula pellentesque diam, sit amet condimentum libero eros vel sem. 
		        	In imperdiet sed augue at rhoncus. Donec sollicitudin ut nulla feugiat tempus. Praesent elementum euismod erat vel hendrerit. 
		        	Aenean hendrerit in sem ut suscipit. </p>
	         </div>
	    
	    	<c:forEach items="${yearLevel}" var="yearLevel">
				<div class="tab-pane" id="tab_${yearLevel.yearLevelId}">				
					<c:forEach items="${semesters}" var="semesters" varStatus="cntYear_Level">						
			            <c:if test="${yearLevel.yearLevelId == semesters.yearLevel.yearLevelId}"> 
			            	<div class="row">
			            	    <div class="col-xs-12">
			                	    <div class="box">
			                    	    <div class="box-header">
			                        	     <h3 class="box-title">${semesters.semesterDesc} </h3>
			                                 <div class="box-tools pull-right">
				                            	<button data-widget="collapse" class="btn btn-default btn-sm"><i class="fa fa-minus"></i></button>
				                            </div>
			                             	</div><!-- /.box-header -->
			                             	<div class="box-body table-responsive no-padding">
		                                    	<table class="table table-hover">
			                                        <tbody>
			                                        	<tr>
				                                            <th>Subject Name </th>
				                                            <th>Description</th>
				                                            <th>Units</th>
				                                            <th>Lec Hours</th>
				                                            <th>Lab Hours</th>
				                                            <th style="text-align:center">Classes</th>
			                                        	</tr>
			                                       		<c:forEach items="${subjects}" var="subjects">
			                                       			<c:if test="${semesters.semesterId == subjects.semester.semesterId}">
			                                       			<tr>
			                                        				<td>${subjects.subjName}</td>
			                                        				<td>${subjects.subjDesc}</td>
			                                        				<td>${subjects.units}</td>
			                                        				<td>0</td>
			                                        				<td>0</td>
			                                        				<td style="text-align:center">
			                                        					<button id="${subjects.subjId}" class="subjectClass btn bg-purple margin" style="margin: 0px;">
			                                        						View Class Schedules
			                                        					</button>
			                                        				</td>
			                                        			</tr>
			                                       			</c:if>
			                                       		</c:forEach>
			                                        </tbody>
		                                       </table>
		                                  </div><!-- /.box-body -->
			                         </div><!-- /.box -->
			                    </div><!-- /.col-xs-12 -->
			              </div><!-- /.row -->
			            </c:if>			            			
					</c:forEach>
		         </div>				
			</c:forEach>
	    	
	    	
	     </div>
	     
    </div>



</div>