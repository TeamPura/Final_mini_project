<div id="callIn_container" class="white_content">

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

		<div class="col-md-6" style="margin: 100px 320px;">
	    	<div class="box box-solid box-info">
	        	<div class="box-header">
	            	<h3 class="box-title" style="font-weight: bold;">Call In Form</h3>
	                	<div class="box-tools pull-right">
	                        <button id="closeBtn_modal" class="btn btn-info btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
	                    </div>
	             </div>
	             <div class="box-body">
	             	<div class="row">
			        	<div class="col-xs-12">
			        		<br/>
			        		<div id="success_callIn" class="alert alert-success alert-dismissable" style="display: none">
				                <i class="fa fa-check"></i>
				                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				            	<b>Call in is recorded.</b>
				            </div>
				            <div id="alert_maxSickDays" class="alert alert-danger alert-dismissable" style="display: none">
				                <i class="fa fa-warning"></i>
				                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				            	<b>You are only limited for 5 maximum sick days.</b>
				            </div>
			        		
			            	<div class="box">
			                  	<div id="call_ins_tabs" class="nav-tabs-custom">
									<ul class="nav nav-tabs">
										<li class="active"><a href="#tab_call_in" data-toggle="tab">New Call In</a></li>
										<li><a href="#tab_call_in_history" data-toggle="tab">Call In Logs</a></li>
									</ul>
									<div class="tab-content">									    
										<div class="tab-pane active" id="tab_call_in">	
											<div class="box box-primary">										
				                                <div class="box-header">
				                                    <h3 class="box-title">Log New Call In</h3>
				                                </div>
				                                <div class="box-body">
				                                    <form method="post" id="${classId}">
				                                    	<div class="form-group">
				                                            <label>Total Number of Sick Days</label>
				                                            <c:if test="${empty logCount}">
				                                            	<input name="logCount" id="0" class="form-control logCount" placeholder="0" disabled="" type="text">
				                                            </c:if>
				                                            <c:forEach items="${logCount}" var="logCount">
				                                            	<input name="logCount" id="${logCount[1]}" class="form-control logCount" placeholder="${logCount[1]}" disabled="" type="text">
				        									</c:forEach>			                                             
				                                        </div>
				                                    	<div class="form-group">
				                                            <label>Call In Reason</label>
				                                            <textarea name="reason" id="reason" class="form-control" rows="3" placeholder="Enter ..."></textarea>
				                                        </div>
				                                        <div class="form-group">
				                                            <label>Number of Days Absent</label>
				                                            <input name="numDaysAbsent" id="numDaysAbsent" class="form-control" placeholder="Enter ..." type="text">				                                            
				                                        </div>				                                        
				                                   	</form>	
				                                   	<button id="${classId}" class="btn btn-primary callInSubmitBtn">Submit</button>			                                   	
				                                </div>  
				                             </div>                              
								      	</div>
								      	<div class="tab-pane" id="tab_call_in_history">
									 		<!-- loads call in logs -->
								      	</div>
								    </div><!-- /.tab-content -->							    
								</div><!-- /#call_ins_tabs -->		
									                	
			            	</div><!-- /.box -->
			        	</div><!-- /.col-xs-12 -->
			     	</div><!-- /.row -->           	
	             </div><!-- /.box-body -->
	    	</div><!-- /.box -->
	  	</div>                       
	
</div>