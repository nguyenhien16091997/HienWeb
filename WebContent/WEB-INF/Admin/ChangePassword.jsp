<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/File.css"> 
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
    <script type="text/javascript" src="javacripts/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="javacripts/js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="javacripts/js/currency-autocomplete.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />
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
				      		<a class="dropdown-toggle" data-toggle="dropdown"style="padding-left: 0">
				      			<span class="glyphicon glyphicon-th-list" style="padding-right: 2px"></span>MENU <span class="caret"></span></a>
					        <ul class="dropdown-menu">
					        	<li> <a href="loginController"><img src="Image/home-icon.png" style="width: 20px; height: 20px">Trang Chủ</a><hr width="100%" style="margin: 0"/></li>
					          	<li> <a href="userManagementSevlet"><img src="Image/examination-512.png" style="width: 20px; height: 20px">Quản lý User</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="personInfomationController?command=personAdmin"><img src="Image/user.png" style="width: 20px; height: 20px">Thông tin Admin</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="changePasswordController?command=Admin"><img src="Image/housing_contract.png" style="width: 20px; height: 20px">Đổi Mật Khẩu</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/question.jpg" style="width: 20px; height: 20px">Giải Đáp Thắc Mắc</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/light-bulb-2-xxl.png" style="width: 20px; height: 20px">Hướng Dẫn Sử Dụng</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="logoutController"><img src="Image/logout.png" style="width: 20px; height: 20px;">Thoát</a></li>
					        </ul>					        
				     	</li>
				     	<li>
				     		
				     	</li>
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >ĐỔI MẬT KHẨU</p>			     					      	
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
	 		<p style="font-style: inherit; font-size: 15px; color: #968354">xin chào ${fullNameSession }!</p>
	 		<hr width="90%" align="left" />
	 		<div style="border: 0.1px solid #CEA97C;  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.2), 0 2px 5px 0 rgba(0, 0, 0, 0.19);">
	 			<p style="padding: 10px; margin: 0"><img src="Image/introduction.png" style="width: 20px; height: 20px; margin-right: 3px"><a href="#"> Giới Thiệu Chung</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0"><img src="Image/annount.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#"> Thông Báo PĐT</a> </p>	 
	 		</div>	
			<div style="border: 0.1px solid #E4DBCF;  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.2), 0 1px 1px 0 rgba(0, 0, 0, 0.1); margin-top: 30px; -moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;
									-moz-border-radius-bottomright:20px;
									-webkit-border-bottom-right-radius:20px; margin-bottom: 20px">	 			
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-topleft:20px;	-webkit-border-top-left-radius:20px;" class="hover_xam"><img src="Image/home-icon.png" style="width: 20px; margin-right: 3px"><a href="loginController" style="text-decoration: none"> Trang Chủ</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/examination-512.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="userManagementSevlet" style="text-decoration: none"> Quản Lý User</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/user.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="personInfomationController?command=personAdmin" style="text-decoration: none"> Thông Tin Admin</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0; background-color:#DAD5C8" class="hover_xam"><img src="Image/housing_contract.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="changePasswordController?command=Admin" style="text-decoration: none"> Đổi Mật Khẩu</a> </p>	
				<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/question.jpg" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Giải Đáp Thắc Mắc</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/light-bulb-2-xxl.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Hướng Dẫn Sử Dụng</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-bottomright:20px;-webkit-border-bottom-right-radius:20px" class="hover_xam"><img src="Image/logout.png" style="width: 20px; margin-right: 3px; margin-bottom: 0"><a href="logoutController" style="text-decoration: none"> Thoát</a> </p>					 				 
	 		</div>
	 		
	 	</div>	
	  <div class="col-sm-10" style="height: 400px">    	 
	    	<p style="text-align: center;"><strong><span class="glyphicon glyphicon-pencil" style="margin-right: 5px"></span>Đổi Mật Khẩu</strong></p>
	 		<hr width="100%" align="left" />	
	 		<form class="form" action="changePasswordController?command=Admin" method="post">
	 			<div class="row">
	 				
	 					 <label class="control-label col-sm-6" for="pwc" style="margin-top: 20px; padding-left:150px" >Nhập PasWord Hiện Tại :</label>
					      <div class="col-sm-6">
					            <input name="passwordOld" class="form-control" type="password"  id="pwc" style="margin-top: 20px"><br><span id="err_pwc"></span>
					      </div>
					      <label class="control-label col-sm-6" for="pwm1" style="margin-top: 20px; padding-left:150px">Nhập PassWord Mới :</label>
					      <div class="col-sm-6">
					             <input class="form-control" type="password" id="pwm1" style="margin-top: 20px" name="passwordNew"><br><span id="err_pwm1"></span>
					      </div>
					      <label class="control-label col-sm-6" for="pwm2" style="margin-top: 20px; padding-left:150px">Nhập Lại PassWord :</label>
					      <div class="col-sm-6">
					            <input class="form-control" type="password" id="pwm2" style="margin-top: 20px"><br><span id="err_pwm2"></span>					      
					      </div>
	 			</div>
	 			<div class="form-group" style="padding-left:400px; padding-top:30px">					    
					     <button type="submit" class="btn btn-default" style="background-color: #75efd9; color:#1d09f2">Lưu thay đổi</a></button>
					  
				</div>    
	 		</form> 		
	    </div>	   	   
	</div>	  
	 
	 
	 
	 <script type="text/javascript">
	 $(document).ready(function(){
		    $("#err_pwc").hide();
		    $("#err_pwm1").hide();
		    $("#err_pwm2").hide();
		    var err_pwc  =false;
		    var err_pwm1 =false;
		    var err_pwm2 =false;
			$("#pwc").focusout(function () {
			        if($("#pwc").val().length < 6 || $("#pwc").val().length > 20){
			            $("#err_pwc").html("Độ dài mật khẩu từ 6-20 kí tự");
			            $("#err_pwc").show();
			            err_pw1 = true;
			        }
			        else $("#err_pwc").hide();
			    });
			$("#pwm1").focusout(function () {
		        if($("#pwm1").val().length < 6 || $("#pwm1").val().length > 20){
		            $("#err_pwm1").html("Độ dài mật khẩu từ 6-20 kí tự");
		            $("#err_pwm1").show();
		            err_pwm1 = true;
		        }
		        else $("#err_pwm1").hide();
		    });
			$("#pwm2").focusout(function () {
		
			    	if($("#pwm1").val()!=$("#pwm2").val()){
			            $("#err_pwm2").html("Mật khẩu không khớp. Vui lòng nhập lại");
			            $("#err_pwm2").show();
			            err_pwm2 = true;
			        }
			        else 
			        	{
				        	$("#err_pwm2").hide();
				        	$("#err_pwm2").html("Mật khẩu đã khớp.");
				        	$("#err_pwm2").show();
			        	}
			    });
	 });

	 </script>
	 <script type="text/javascript">
		if( ${not empty result})
			if(${result=="true"})
		 		alert("Bạn đã sửa mật khẩu thành công!!!");
			else
				alert("password sai vui lòng nhập lại!!!")
	</script>
	 
	 
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
</body>
</html>