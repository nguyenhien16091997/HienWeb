<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html >
<head>	
  <title>Quản lý kì thi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
    <script type="text/javascript" src="../QuestionBankManager/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="../ExamManager/js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="../ExamManager/js/currency-autocomplete.js"></script>nkManager/js/currency-autocomplete.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">


<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#datatable').DataTable();
});
</script>
<script type="text/javascript">
 	function validateForm() {
    var x = document.forms["Search"]["currency"].value;
    if (x == "") {
        alert("Vui lòng điền thông tin nhập!!!");
        return false;
    }
}
 </script>

 
</head>
<body>
	<div class="container " id="BlockTitle">
		<div class="col-sm-12 ">
			<nav class="navbar navbar-inverse navbar-fixed-top">
				<div class="container-fluid">	
					<div class="col-sm-6 col-xs-9">
						<div class="nav navbar-nav navbar-left">				      	
				      	<li class="dropdown">
				      		<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="padding-left: 0">
				      			<span class="glyphicon glyphicon-th-list" style="padding-right: 2px"></span>MENU <span class="caret"></span></a>
					        <ul class="dropdown-menu">
					        	<li><a href="loginController"><img src="Image/home-icon.png" style="width: 20px; height: 20px">Trang chủ</a><hr width="100%" style="margin: 0"/></li>
					        	<li> <a href="examManager"><img src="Image/light-bulb-2-xxl.png" style="width: 20px; height: 20px">Quản lý đề thi</a>
					          	</li>
					          	<li> <a href="examinationManagement"><img src="Image/examination-512.png" style="width: 20px; height: 20px">Quản lý kì thi</a>
					          	</li>			          					          					          	
					          	<li><a href="personInfomationController?command=ExamManager"><img src="Image/user.png" style="width: 20px; height: 20px">Thông tin cá nhân</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="changePasswordController?command=examManager"><img src="Image/password.png" style="width: 20px; height: 20px">Đổi mật khẩu</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/question.jpg" style="width: 20px; height: 20px">Giải đáp thắc mắc</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/light-bulb-2-xxl.png" style="width: 20px; height: 20px">Hướng dẫn sử dụng</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="https://hcmute.edu.vn/"><img src="Image/infomation.png" style="width: 20px; height: 20px">Thông tin trường</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="logoutController"><img src="Image/logout.png" style="width: 20px; height: 20px;">Đăng xuất</a></li>
					        </ul>					        
				     	</li>
				     	<li>
				     		
				     	</li>
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >QUẢN LÝ KÌ THI</p>			     					      	
				   	 </div>
					</div>
				    <div class="col-sm-6 visible-lg">				    					
				    	<ul class="nav navbar-nav navbar-right">
					      	<li><a href="#"><span class="glyphicon glyphicon-user"></span> liên hệ </a></li>
					      	<li><a href="logoutController"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>
				    	</ul>
				    </div>
				 </div>			
			</nav>
		</div>
	</div>
	<div class="container" id="BlockBody">	
		<div class="col-sm-2 " >
		<p style="font-style: inherit; font-size: 15px; color: #968354">Xin chào ${fullNameSession }!</p>
	 		<hr width="90%" align="left" />
	 		<div style="border: 0.1px solid #E4DBCF;  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.2), 0 1px 1px 0 rgba(0, 0, 0, 0.1); margin-top: 30px;  -moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;
									-moz-border-radius-bottomright:20px;
									-webkit-border-bottom-right-radius:20px; margin-bottom: 20px">	 			
	 			<p style=" padding: 10px; margin: 0;  -moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;" class="hover_xam"><img src="Image/home-icon.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="loginController" style="text-decoration: none">Trang chủ</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/light-bulb-2-xxl.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="examManager" style="text-decoration: none"> Quản lý đề thi</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0; background-color: #E8E2DC;" class="hover_xam"><img src="Image/housing_contract.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="examinationManagement" style="text-decoration: none"> Quản lý Kì thi</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">					
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/user.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="personInfomationController?command=ExamManager" style="text-decoration: none"> Thông tin cá nhân</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/password.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="changePasswordController?command=examManager" style="text-decoration: none"> Đổi mật khẩu</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/question.jpg" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Giải đáp thắc mắc</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/light-bulb-2-xxl.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Hướng dẫn sử dụng</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-bottomright:20px;
									-webkit-border-bottom-right-radius:20px" class="hover_xam"><img src="Image/logout.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="logoutController" style="text-decoration: none"> Đăng xuất</a> </p>	
			</div>
	 	</div>
	    <div class="col-sm-10" > 
	    	<div class="row">
	    		<div class="col-md-5">
	    			
	    		</div> 		    								    
						    <div class="col-sm-6">
								<button type="button" class="btn btn-default btn-sm" style="font-size: 15px;color: #090808" data-target="#myCreationExamination" data-toggle="modal">
        				  <span class="glyphicon glyphicon-plus-sign"></span>Tạo kì thi</a>
     			   </button>
							</div>	    		   		 
	    	</div>   
	    	

	 		<hr width="90%" align="left" />	
	 		<div style="width: 100%; height: 400px">
	 			<table id="datatable" class="table table-striped table-hover table-bordered" style="margin-top: 10px;text-align: center;">
	 				<thead>
						<tr>
						    <th style="text-align: center;">STT</th>
						    <th style="text-align: center;">Tên kì thi</th>
						    <th style="text-align: center;">Thời gian bắt đầu</th>
						    <th style="text-align: center;">Thời gian kết thúc</th>
						    <th style="text-align: center;">Danh sách đề thi</th>						    					   
						    <th style="text-align: center;">Chỉnh sửa</th>
						    <th style="text-align: center;">Xóa</th>
						</tr>
					</thead>
					<tbody id="noidung">
					<c:set var="count" value="0"></c:set>
					<c:forEach var="examination" items="${requestScope.listExamination }">
					<c:set var="count" value="${count+1 }"></c:set>
						<tr>							
							<td>${count }</td>
							<td>${examination.getExaminationName() }</td>	
							<td>${examination.getDateTimeStart() }</td>
							<td>${examination.getDateTimeFinish() }</td>				
							<td style="text-align: center"><a target="_blank" href="assignmentTest?examinationID=${examination.getExaminationID() }" style="font-size: 15px; color: #B75A0A ;" ><i><u>chi tiết</u></i></a></td>
							<td style="text-align: center;"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myUpdateExamination${count }" style="color: #70543C; padding: 0; background-color: white; border: 0"><i class="fa fa-gear" style="font-size:24px"></button></td>
							<td style="text-align: center;"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal${count }" style="color: red; padding: 0; background-color: white; border: 0"><i class="fa fa-close" style="font-size:30px"></i></button></td>
						</tr>
							  <!-- Modal Delete -->
							 	<div class="modal fade" id="myModal${count }" role="dialog">
								    <div class="modal-dialog">	    
								      	<!-- Modal content-->
								        <div class="modal-content">
								        	<div class="modal-header">
								          		<button type="button" class="close" data-dismiss="modal">&times;</button>
								          		<h4 class="modal-title" style="color: red;">THÔNG BÁO</h4>
								        	</div>
								        	<div class="modal-body">
								          		<p>Bạn có chắc chắn xóa nó không !!!</p>
								        	</div>
								        	<div class="modal-footer">
								         		<button type="button" class="btn btn-default" ><a href="deleteController?command=deleteExamination&examinationIDForDelete=${examination.getExaminationID() }" style="text-decoration: none; color: red">Có</a></button>
								         	 	<button type="button" class="btn btn-default" data-dismiss="modal" style="color: green">Không</button>
								        	</div>
								      	</div>      
								    </div>
								</div> 
								<!-- Model update examination -->
										<div class="modal fade" id="myUpdateExamination${count }" role="dialog">
											<div class="modal-dialog">
												<!-- Modal Update content -->
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
										          		<h4 class="modal-title" style="color: red;">SỬA KÌ THI</h4>
													</div>
													
													<form action="updateController" style="color: #473727" method="post">
													<input name="examinationIDUD" value="${examination.getExaminationID() }" style="display: none"/>
													<label class="control-label col-sm-3" for="name" style="margin-top: 20px">Tên đề thi:</label>
												      <div class="col-sm-9">							
												            <input type="text" class="form-control" id="name" placeholder="Nhập tên kì thi ..." style="font-size: 15px; margin-bottom: 20px; margin-top: 20px" name="examinationNameUD" required="required" value="${mapExamination.get(examination.getExaminationID()).getExaminationName() }">
												      </div>
												      <label class="control-label col-sm-3" for="start"  >Thời gian bắt đầu:</label>
												      <div class="col-sm-9">												
												            <input id="start" type="datetime-local" class="btn btn-default btn-sm" name="dateTimeStartUD" style="font-size: 15px; margin-bottom: 20px" required="required" value="${examinationDAO.convertDateTime1(mapExamination.get(examination.getExaminationID()).getStart()) }" />				   			
												      </div>
												      <label class="control-label col-sm-3" for="finish" >Thời gian kết thúc:</label>
												      <div class="col-sm-9">
												     		 <input id="finish" type="datetime-local" class="btn btn-default btn-sm" name="dateTimeFinishUD" style="font-size: 15px; margin-bottom: 20px" required="required" value="${examinationDAO.convertDateTime1(mapExamination.get(examination.getExaminationID()).getFinish()) }" />	
												      </div>																								    					     		   					    
														<div class="modal-footer">
															
											         		<button type="button" class="btn btn-default" data-dismiss="modal" style="color: red">Hủy</button>
											         		<button type="submit" class="btn btn-default" style="color: green" name="command" value="updateExamination">Sửa</button>
											         	 	
											        	</div>
														    
													</form>											
												
													
													</div>
												</div>
											</div>		
										</div> 
						</c:forEach>	
					</tbody>
	 			</table>
	 		</div>
	    </div>
	    <!-- Model CreationExamination -->
	<div class="modal fade" id="myCreationExamination" role="dialog">
		<div class="modal-dialog">
			<!-- Modal Creation content -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
	          		<h4 class="modal-title" style="color: red;">TẠO KÌ THI</h4>
				</div>
				<form class="form-horizontal" action="insertController" style="color: #473727" method="post">
						<div class="form-group"style="margin-top: 20px">
							<div class="col-sm-1"></div>
							<div class="col-sm-3"><p style="color: #A85B0E; margin-top: 10px">Tên kì thi:</p></div>
							<div class="col-sm-7"><input type="text" class="form-control" id="IdExam" placeholder="Học kì ..." name="examinationNameIS" required="required" value=""></div>
							<div class="col-sm-1"></div>							
						</div>													    					     		   					    
					   	<div class="form-group"style="margin-top: 20px">
					   		<div class="col-sm-1"></div>	
					   		<div class="col-sm-3">
					   			Thời gian bắt đầu:
					   		</div>					   		
					   		<div class="col-sm-8">		 			
					   				<input id="btnAddContent" type="datetime-local" class="btn btn-default btn-sm" name="dateTimeStartIS" style="font-size: 15px; margin-bottom: 20px" required="required" />				   			
					   		</div>					   		
					   		
					   	</div>
					   	<div class="form-group"style="margin-top: 20px">
					   		<div class="col-sm-1"></div>	
					   		<div class="col-sm-3">
					   			Thời gian kết thúc:
					   		</div>					   		
					   		<div class="col-sm-8">		 			
					   				<input id="btnAddContent" type="datetime-local" class="btn btn-default btn-sm" name="dateTimeFinishIS" style="font-size: 15px; margin-bottom: 20px" required="required" />				   			
					   		</div>					   		
					   	
					   	</div>				 			   	
					   
					   
					    <div class="form-group">
					    	<div class="col-sm-1"></div>        
					      	<div class=" col-sm-8">
					        	<button class="btn btn-default" style="color: red">Hủy</button>
					      	</div>
					      	<div class=" col-sm-3">
					        	<button type="submit" id="create" class="btn btn-default" style="color: green" name="command" value="insertExamination">Tạo</button>
					      	</div>
					    </div>
				</form>
			</div>
		</div>		
	</div> 
  	   
	</div>	  
	<div class="container-fluid hidden-xs" id="BlockBottom" style="padding: 0">
	 	<div class="col-sm-4"  id="BlockBottom_left">
	 		<strong>THÔNG TIN TRƯỜNG</strong>
	 		<hr width="60%" align="left" />
	 		<ul style="list-style-type:none;padding: 0">
				 <li ><a href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90HSP+K%E1%BB%B9+Thu%E1%BA%ADt+Tp.+HCM/@10.8510617,106.7698235,17z/data=!3m1!4b1!4m5!3m4!1s0x3175270ad28d48ab:0xa6c02de0a7c40d6c!8m2!3d10.8510564!4d106.7720122" style="color: white"><i class="fa fa-map-marker" style="padding: 2px"></i>số 1, đường Võ Văn Ngân, P. Linh Chiểu, TP. Hồ Chí Minh</a></li>				
			</ul> 
	 	</div>
	    <div class="col-sm-4" id="BlockBottom_center">
	    	<strong>VỀ CHÚNG TÔI</strong>
	 		<hr width="60%" align="left" />
	 		<ul style="list-style-type:none; padding: 0">
				 <li><a href="#" style="color: white">Hệ thống cửa hàng</a></li>
				 <li><a href="#" style="color: white">Giới thiệu Trường HCMUTE</a></li>
				 <li><a href="#" style="color: white">Liên kết</a></li>
				 <li><a href="#" style="color: white">Bảo mật thông tin</a></li>
			</ul> 
	    </div>
	    <div class="col-sm-4"  id="BlockBottom_right">
	    	<strong>HỖ TRỢ</strong>
	 		<hr width="60%" align="left" />
	 		<ul style="list-style-type:none; margin-left: 2px;padding: 0">
				 <li><a href="#" style="color: white">Giải đáp thắc mắc</a></li>
				 <li><a href="#" style="color: white">Hướng dẫn sử dụng</a></li>
				 <li><a href="#" style="color: white">Chính sách</a></li>
			</ul> 	 		
	    </div>	
	</div>
	
	<script type="text/javascript">
	 //function tim kiem
	  $("#searchTable").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#noidung tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	 
		if( ${not empty param.statusDelete})
			if(${param.statusDelete=="true" }){
		 		alert("Xóa thành công !!!");
				$(document).ready(function(){
					var uri = window.location.toString();
					if (uri.indexOf("?") > 0) 
					    var clean_uri = uri.substring(0, uri.indexOf("?"));
					    window.history.replaceState({}, document.title, clean_uri);
					
				});
			}
			
			else {
				alert("Xóa không thành công !!!");
				$(document).ready(function(){
					var uri = window.location.toString();
					if (uri.indexOf("?") > 0) {
						 var clean_uri = uri.substring(0, uri.indexOf("?"));
						 window.history.replaceState({}, document.title, clean_uri);
					}
				});
			}
		if( ${not empty param.statusInsert})
			if(${param.statusInsert=="true" }){
		 		alert("Thêm thành công !!!");
				$(document).ready(function(){
					var uri = window.location.toString();
					if (uri.indexOf("?") > 0) 
					    var clean_uri = uri.substring(0, uri.indexOf("?"));
					    window.history.replaceState({}, document.title, clean_uri);
					
				});
			}
			
			else {
				alert("Thêm không thành công !!!");
				$(document).ready(function(){
					var uri = window.location.toString();
					if (uri.indexOf("?") > 0) {
						 var clean_uri = uri.substring(0, uri.indexOf("?"));
						 window.history.replaceState({}, document.title, clean_uri);
					}
				});
			}
		if( ${not empty param.statusUpdate})
			if(${param.statusUpdate=="true" }){
		 		alert("Sửa thành công !!!");
				$(document).ready(function(){
					var uri = window.location.toString();
					if (uri.indexOf("?") > 0) 
					    var clean_uri = uri.substring(0, uri.indexOf("?"));
					    window.history.replaceState({}, document.title, clean_uri);
					
				});
			}
			
			else {
				alert("Sửa không thành công !!!");
				$(document).ready(function(){
					var uri = window.location.toString();
					if (uri.indexOf("?") > 0) {
						 var clean_uri = uri.substring(0, uri.indexOf("?"));
						 window.history.replaceState({}, document.title, clean_uri);
					}
				});
			}
	
	</script>	
</body>
</html>