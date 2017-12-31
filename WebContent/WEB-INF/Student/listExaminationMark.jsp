<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>	
  <title>Xem điểm thi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <style type="text/css">
 	.input{
 		margin-left: 30px;
 		color: #3D372A;
 	}
 	.label{
 		color: #A47609;
 		margin-top: 10px;
 		font-size: 18px
 	}
 </style>
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
					          	<li><a href="HomePage.jsp"><img src="Image/home-icon.png" style="width: 20px; height: 20px">Trang chủ</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="markSevlet?command=listExaminationMark"><img src="Image/housing_contract.png" style="width: 20px; height: 20px">Xem điểm thi</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="studentSevlet?command=listExamination"><img src="Image/Notication.png" style="width: 20px; height: 20px">Lịch thi</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="personInfomationController?command=Student"><img src="Image/user.png" style="width: 20px; height: 20px">Thông tin cá nhân</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="changePasswordController?command=student"><img src="Image/password.png" style="width: 20px; height: 20px">Đổi mật khẩu</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/question.jpg" style="width: 20px; height: 20px">Giải đáp thắc mắc</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/light-bulb-2-xxl.png" style="width: 20px; height: 20px">Hướng dẫn sử dụng</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="https://hcmute.edu.vn"><img src="Image/infomation.png" style="width: 20px; height: 20px">Thông tin trường</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="logoutController"><img src="Image/logout.png" style="width: 20px; height: 20px;">Đăng xuất</a></li>
					        </ul>					        
				     	</li>
				     	<li>
				     		
				     	</li>
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >XEM ĐIỂM THI</p>			     					      	
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

	<div class="container " id="BlockBody">	
		<div class="col-sm-2 " >
	 		<p style="font-style: inherit; font-size: 15px; color: #968354">Xin chào ${fullNameSession }!</p>
	 		<hr width="90%" align="left" />
	 		<div style="border: 0.1px solid #CEA97C;  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.2), 0 2px 5px 0 rgba(0, 0, 0, 0.19);">
	 			<p style="padding: 10px; margin: 0"><img src="Image/introduction.png" style="width: 20px; height: 20px; margin-right: 3px"><a href="#"> Giới thiệu chung</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0"><img src="Image/annount.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#"> Thông báo PĐT</a> </p>	 
	 		</div>	
			<div style="border: 0.1px solid #E4DBCF;  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.2), 0 1px 1px 0 rgba(0, 0, 0, 0.1); margin-top: 30px; -moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;
									-moz-border-radius-bottomright:20px;
									-webkit-border-bottom-right-radius:20px; margin-bottom: 20px">				
	 			<p style="padding: 10px; margin: 0; -moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;" class="hover_xam"><img src="Image/home-icon.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="loginController" style="text-decoration: none">Trang chủ</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">		 			
	 			<p style="padding: 10px; margin: 0; background-color: #E4E0E0" class="hover_xam"><img src="Image/examination-512.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="markSevlet?command=listExaminationMark" style="text-decoration: none"> Xem điểm thi</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/Notication.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="studentSevlet?command=listExamination" style="text-decoration: none"> Lịch thi</a> </p>	
				<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/user.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="personInfomationController?command=Student" style="text-decoration: none"> Thông tin cá nhân</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/password.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="changePasswordController?command=student" style="text-decoration: none"> Đổi mật khẩu</a> </p>	
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
	    		<div class="col-md-5">
	    			
	    		</div> 		    								    
						    <div class="col-sm-6">
								<div class="form-group">						   				   
							   		 <div class="col-sm-6">
								  		<form class="navbar-form visible-lg" role="search" name="Search" onsubmit="return validateForm()" method="post">
							       			 <div class="input-group" style="margin-top: 10px">
							           			 <input type="text" class="form-control biginput" placeholder="tìm kiếm..." id="searchTable" name="currency">
							           			 <div class="input-group-btn">						                
							               			 <button class="btn btn-default test" type="button" id="show_onclick" style="color: black"></button>
							           			 </div>
							      			  </div>
							   			</form>
									</div>
								</div>
							</div>	    		   		 
	    	</div> 
	    	<hr width="90%" align="left" />	
	 		<div style="overflow: auto;width: 100%; height: 400px">
	 			<table class="table table-hover table-bordered" style="margin-top: 10px;text-align: center;">
	 				<thead>
						<tr>
						    <th style="text-align: center;">STT</th>
						    <th style="text-align: center;">Tên kì thi</th>
						    <th style="text-align: center;">Danh sách điểm thi</th>					   
						    
						</tr>
					</thead>
					<tbody id="noidung">
					<c:set var="count" value="0"></c:set>
					<c:forEach var="examinationID" items="${examinationAndTestDao.getListExaminationFollowID(mapUser.get(userNameSession).getClassID()) }">				
					<c:set var="count" value="${count+1 }"></c:set>					
						<tr>							
							<td>${count }</td>
							<td>${mapExamination.get(examinationID).getExaminationName() }</td>														
							<td style="text-align: center"><a target="_blank" href="markSevlet?command=listExamMark&examinationID=${examinationID }&classID=${mapUser.get(userNameSession).getClassID() }" style="font-size: 15px; color: #B75A0A ;" ><i><u>danh sách điểm</u></i></a></td>
							
						</tr>
					</c:forEach>	
					</tbody>
	 			</table>
	 		</div>
	 		
	    </div>	   
	</div> 
	
	

	<div class="container-fluid hidden-xs" id="BlockBottom">
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
</div>
<script type="text/javascript">
//function tim kiem
$("#searchTable").on("keyup", function() {
  var value = $(this).val().toLowerCase();
  $("#noidung tr").filter(function() {
    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
  });
});

if(${not empty param.mark}){	
		alert("bạn đạt ${param.mark}/10 điểm");
		window.location.href = 'studentSevlet?command=listExamination'; 
	
}

</script>
</body>
</html>