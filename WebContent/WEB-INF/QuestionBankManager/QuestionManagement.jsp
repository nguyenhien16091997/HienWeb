<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>	
  <title>Quản lý Kho câu hỏi</title>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
    <script type="text/javascript" src="../QuestionBankManager/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="../QuestionBankManager/js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="../QuestionBankManager/js/currency-autocomplete.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">


<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#datatable').DataTable();
});
</script>
  
  <style>
.w3-btn {margin-bottom:10px;}
</style>

 

 
</head>
<body>
<script type="text/javascript">
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
	
</script>
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
					          	<li> <a href="personInfomationController?command=questionManager"><img src="Image/examination-512.png" style="width: 20px; height: 20px">Quản lý kho câu hỏi</a>
					          	</li>					          	
					          	<li><a href="personInfomationController"><img src="Image/user.png" style="width: 20px; height: 20px">Thông tin cá nhân</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="changePasswordController?command=QuestionBankManager"><img src="Image/password.png" style="width: 20px; height: 20px">Đổi mật khẩu</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/question.jpg" style="width: 20px; height: 20px">Giải đáp thắc mắc</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/light-bulb-2-xxl.png" style="width: 20px; height: 20px">Hướng dẫn sử dụng</a><hr width="100%" style="margin: 0"/></li>					          	
					          	<li><a href="logoutController"><img src="Image/logout.png" style="width: 20px; height: 20px;">Đăng xuất</a></li>
					        </ul>					        
				     	</li>
				     	<li>
				     		
				     	</li>
				     	<a href="" ;"></a>
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >QUẢN LÝ KHO CÂU HỎI</p>			     					      	
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
	 		<div style="color:#A8A196; border: 0.1px solid #E4DBCF;  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.2), 0 1px 1px 0 rgba(0, 0, 0, 0.1); margin-top: 30px; -moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;
									-moz-border-radius-bottomright:20px;
									-webkit-border-bottom-right-radius:20px; margin-bottom: 20px">	 	
				<p style="padding: 10px; margin: 0;-moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;" class="hover_xam" style="text-decoration: none"><img src="Image/home-icon.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="loginController" style="text-decoration: none"> Trang chủ</a> </p>
	 			
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="background-color:#D2CDBA ;padding: 10px; margin: 0" class="hover_xam"><img src="Image/housing_contract.png" style="width: 20px; margin-right: 3px"><a href="questionManager" style="text-decoration: none">Quản lý Kho câu hỏi</a> 
	 			</p>	 				
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/user.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="personInfomationController?command=questionManager" style="text-decoration: none"> Thông tin cá nhân</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/password.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="changePasswordController?command=QuestionBankManager" style="text-decoration: none"> Đổi mật khẩu</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/question.jpg" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Giải đáp thắc mắc</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/light-bulb-2-xxl.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Hướng dẫn sử dụng</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-bottomright:20px;
									-webkit-border-bottom-right-radius:20px" class="hover_xam"><img src="Image/logout.png" style="width: 20px; margin-right: 3px; margin-bottom: 0"><a href="logoutController" style="text-decoration: none"> Đăng xuất</a> </p>					 				 
	 		</div>
	 	</div>
	    <div class="col-sm-10" >
	    	
	    	<div class="row">
	    		<div class="col-md-4" style="margin-top: 13px">
	    			
          					
	    		</div>

	    		<div class="col-md-6" >
	    			<button type="button" class="btn btn-default btn-sm" style="font-size: 15px; margin-top: 5px">
        				  <a style="text-decoration: none; color: #090808" href="insertController?command=insertQuestion" target="_blank"><span class="glyphicon glyphicon-plus-sign"></span> Thêm câu hỏi</a>
     			   </button>
	    		</div>	    		   	
		    	
	    	</div>  
	    	

	 		<hr width="90%" align="left" />	
	 		<div style="width: 100%; height: 400px">
	 			<table id="datatable" class="table table-striped table-hover table-bordered" style="margin-top: 10px; text-align: center;">
	 				<thead>
						<tr >
						    <th style="text-align: center;">STT</th>
						    <th style="text-align: center;">Môn học</th>
						    <th style="text-align: center;">Chủ đề</th>						   
						    <th style="text-align: center;">mức độ</th>
						    <th style="text-align: center;">Ngày ra</th>
						    <th style="text-align: center;">Nội dung</th>
						    <th style="text-align: center;">Chỉnh sửa</th>
						    <th style="text-align: center;">Xóa</th>
						</tr>
					</thead>
					<tbody id="noidung">			
						<c:set var="count" value="0"></c:set>		
						<c:forEach var="question" items="${requestScope.listQuestion }">
						<tr>
							<c:set var="count" value="${count+1 }"></c:set>
							<td>${count }</td>
							<td>${mapSubject.get(question.getSubjectID()).getSubjectName() }</td>							
							<td>${mapTheme.get(question.getThemeID()).getThemeName() }</td>							
							<td>${mapLevel.get(question.getLevelID()).getLevelName() }</td>
							<td>${question.getDateCreate() }</td>
							<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#DetalQuestion${count }" style="font-size: 15px; color: #B75A0A ; padding: 0; background-color: white; border: 0"><i><u>Chi tiết<u><i></button></td>
							<td style="text-align: center;"><a target="_blank" href="updateController?command=updateQuestion&questionID=${question.getQuestionID() }" style="text-decoration: none; color: #70543C"><i class="fa fa-gear" style="font-size:24px"></i></a> </td>
							
							<td style="text-align: center;"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="color: red; padding: 0; background-color: white; border: 0"><i class="fa fa-close" style="font-size:30px"></i></button></td>
							<!-- Model contentQuestion -->
								<div class="modal fade" id="DetalQuestion${count }" role="dialog">
									<div class="modal-dialog">
										<!-- Modal Creation content -->
										<div class="modal-content">
											<div class="modal-header" style="background-color: #CF925D; text-align: center;">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
								          		<h4 class="modal-title" style="color: #090808;">NỘI DUNG CÂU HỎI</h4>
											</div>				 					
										
													<label class="control-label col-sm-3" for="IDQuestion" style="margin-top: 25px" >Nội dung:</label>
												      <div class="col-sm-7">
												            <textarea class="form-control" id="IDQuestion" style="margin-bottom: 20px; margin-top: 20px" disabled="disabled" >${question.getContent() }</textarea>						       
												      </div>
													<c:forEach var="answer" items="${requestScope.listAnswer}">
														<c:if test="${answer.getQuestionID()==question.getQuestionID() }">
													      <label class="control-label col-sm-3" for="A" style="margin-top: 5px">${answer.getAnswerName() }</label>
													      <div class="col-sm-7">
													            <input class="form-control" id="A" style="margin-bottom: 20px" disabled="disabled" value="${answer.getAnswerContent() }">							        
													      </div>
													    </c:if>	
													</c:forEach>													 										      
													      <label class="control-label col-sm-3" for="Answer" style="margin-top: 5px">Câu đúng:</label>
													<c:forEach var="answer" items="${requestScope.listAnswer}">					      
													      <c:if test="${answer.getIsCorrect()==true}">
													      	  <c:if test="${answer.getQuestionID()==question.getQuestionID() }">
															      <div class="col-sm-7">
															            <input class="form-control" id="Answer" style="margin-bottom: 20px" disabled="disabled" value="${answer.getAnswerName() }" >																        
															      </div>	
														      </c:if>													      
													      </c:if>	
													</c:forEach>		
												<div class="modal-footer">												 
											</div>	 	
										</div>
									</div>		
								</div>
								  <!-- Modal Delete -->
							 	<div class="modal fade" id="myModal" role="dialog">
								    <div class="modal-dialog">	    
								      	<!-- Modal content-->
								        <div class="modal-content">
								        	<div class="modal-header">
								          		<button type="button" class="close" data-dismiss="modal">&times;</button>
								          		<h4 class="modal-title" style="color: red;">THÔNG BÁO</h4>
								        	</div>
								        	<div class="modal-body">
								          		<p style="text-align: center;">Bạn có chắc chắn xóa nó không !!!</p>
								        	</div>
								        	<div class="modal-footer">
								         		<button type="button" class="btn btn-default" ><a href="deleteController?command=deleteQuestion&questionIDForDelete=${question.getQuestionID() }" style="text-decoration: none; color: red">Có</a></button>
								         	 	<button type="button" class="btn btn-default" data-dismiss="modal" style="color: green">Không</button>
								        	</div>
								      	</div>      
								    </div>
								</div>									 
							</tr>	
						</c:forEach>
					</tbody>
	 			</table>
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
	 		<hr width="60%" align="left"/>
	 		<ul style="list-style-type:none; padding: 0">
				 <li><a href="#" style="color: white; font-size: ;display: ; text-align: center;">Hệ thống cửa hàng</a></li>
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
<script>
    //function tim kiem
	  $("#searchTable").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#noidung tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	  /*============== Show theme follow Subject ==============  */
		var access= function(){
			<c:forEach items="${requestScope.listSubject }" var="sub">
			if($("#subjectChose").val() == ${sub.getSubjectID()})
				{
						$("#themeChose").html(function(){
							var rs="";
							<c:forEach items="${themeDAO.getListThemeFollowSubjectID(sub.getSubjectID())}" var="themeFollowSubject">
								rs+="<option value='${themeFollowSubject.getThemeID()}'>${themeFollowSubject.getThemeName()}</option>";
							</c:forEach>
							return rs;
						});
				}
			</c:forEach>
		};
		access();
		$("#subjectChose").change(access);
		
		/* ------------ end ------------ */

</script>
</body>
</html>