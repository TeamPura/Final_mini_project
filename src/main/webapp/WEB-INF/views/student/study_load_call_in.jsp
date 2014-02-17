<div id="callIn_container" class="white_content">

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<div class="col-md-6" style="margin: 340px;">
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
				                                            <label>Call In Log Count</label>
				                                            <c:forEach items="${logCount}" var="logCount">
				                                            	<c:set var="countLog" scope="session" value="${logCount[1] + 1}"/>
				                                            	<input name="logCount" id="${countLog}" class="form-control logCount" placeholder="${countLog}" disabled="" type="text">
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
									 		<div class="box-body table-responsive no-padding">
									 			<table class="table table-hover">
									 				<tr>
									 					<th>Call In Date</th>
									 					<th>Reason</th>
									 					<th>Days Absent</th>
									 				</tr>
									 				<c:forEach items="${callInLogs}" var="callInLogs">
									 					<tr>
									 						<td>${callInLogs.callInDate}</td>
									 						<td>${callInLogs.reason}</td>
									 						<td>${callInLogs.numDaysAbsent}</td>
									 					</tr>
									 				</c:forEach>
									 			</table>
									 		</div>
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