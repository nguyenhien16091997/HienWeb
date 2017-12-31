<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>	
  <title>THÔNG TIN CÁ NHÂN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
    <script type="text/javascript" src="../QuestionBankManager/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="../QuestionBankManager/js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="../QuestionBankManager/js/currency-autocomplete.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >THÔNG TIN CÁ NHÂN</p>			     					      	
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
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/examination-512.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="markSevlet?command=listExaminationMark" style="text-decoration: none"> Xem điểm thi</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/Notication.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="studentSevlet?command=listExamination" style="text-decoration: none"> Lịch thi</a> </p>	
				<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0; background-color: #E4E0E0" class="hover_xam" style="text-decoration: none"><img src="Image/user.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="personInfomationController?command=Student" style="text-decoration: none"> Thông tin cá nhân</a> </p>	
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
	    <div class="col-md-5" style="margin-bottom: 50px" >
	    	<div class="form-group" style="margin: 0; background-color: #575046; -moz-border-radius-topleft:10px;
						-webkit-border-top-left-radius:10px;-moz-border-radius-topright:10px;
						-webkit-border-top-right-radius:10px;text-align: center;color: white; height: 40px; padding-top: 9px">
	    		<strong>THÔNG TIN CÁ NHÂN</strong>
	    		<hr width="100%" align="left" />
	    	</div>
	    	
	    	<div class="form-group" style="margin-top: 20px;" >
				<label class="control-label col-sm-4" for="IDAcount" >Mã tài khoản:</label>
				<div class="col-sm-8">
					<p id="IDAcount">15110201</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Name" >Họ tên:</label>
				<div class="col-sm-8">
					<p id="Name">Nguyễn Thị Hiền</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Born" >Ngày sinh:</label>
				<div class="col-sm-8">
					<p id="Born">16/9/1997</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Sex" >Giới tính:</label>
				<div class="col-sm-8">
					<p id="Sex">Nam</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Nation" >Dân tộc:</label>
				<div class="col-sm-8">
					<p id="Nation">Mèo</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Passport" >Số CMND:</label>
				<div class="col-sm-8">
					<p id="Passport">Mèo</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="City" >Thành phố:</label>
				<div class="col-sm-8">
					<p id="City">TP.HCM</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="National" >Quốc gia:</label>
				<div class="col-sm-8">
					<p id="National">Mèo</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="TypeOfWork" >Loại công việc:</label>
				<div class="col-sm-8">
					<p id="TypeOfWork">Chính thức</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="WorkingStatus" >Tình trạng làm việc:</label>
				<div class="col-sm-8">
					<p id="WorkingStatus">Còn làm việc</p>
				</div>				  
			</div>
			<div class="form-group" style="background-color: #575046; -moz-border-radius-topleft:10px;
						-webkit-border-top-left-radius:10px;-moz-border-radius-topright:10px;
						-webkit-border-top-right-radius:10px;text-align: center;color: white; margin-top: 360px; height: 40px;padding-top: 9px">
	    		<strong>THÔNG TIN NGÀNH THAM GIA</strong>
	    		<hr width="100%" align="left" />
	    	</div>
	    	
	    	<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="IDDepartment" >Mã ngành:</label>
				<div class="col-sm-8">
					<p id="IDDepartment">10</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="NameDepartment" >Tên ngành:</label>
				<div class="col-sm-8">
					<p id="NameDepartment">Khoa CNTT</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Function" >Chức vụ:</label>
				<div class="col-sm-8">
					<p id="Function">Giảng viên</p>
				</div>				  
			</div>
	    </div>
	    <div class="col-md-5">
	    	<hr width="90%" align="left" />
	    	<div class="form-group" style="margin-top: 20px">
		    	<form action="uploadAvatar?command=Student" method="post" enctype="multipart/form-data">
					<div class="col-md-2" ></div>
					<div class="col-md-6">					
	           		 <input style="margin-top: 5px" class="btn btn-default btn-sm" type="file" name="avatar" value="Browser"/>
	           		 </div>
	           		 <div class="col-md-4">	
	           			<button type="submit" class="btn btn-default btn-sm" style="font-size: 15px; margin-top: 5px">
	        				  <span class="glyphicon glyphicon-plus-sign"></span>Add
	     			   </button>
	     			   </div>
	           	</form>
	    	</div> 
	    	<div class="form-group" style="margin-top: 20px; text-align: center;">
	    		<img src="Image/${mapUser.get(userNameSession).getAvatar() }" width="200" height="250"></img>
	    	</div>
	    	 
	    	
	    	<div class="form-group" style="margin-top: 20px; text-align: center;background-color: #575046; -moz-border-radius-topleft:10px;
						-webkit-border-top-left-radius:10px;-moz-border-radius-topright:10px;
						-webkit-border-top-right-radius:10px;text-align: center;color: white; height: 40px;padding-top: 9px">
	    		<strong>THÔNG TIN LIÊN LẠC</strong>
				<hr width="100%">
	    	</div>
	    	<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Phone" >Điện thoại: </label>
				<div class="col-sm-8">
					<p id="Phone">0981146193</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Email" >Email: </label>
				<div class="col-sm-8">
					<p id="Email">toiten.nguyenhien@gmail.com.vn</p>
				</div>				  
			</div>
			<div class="form-group" style="margin-top: 20px">
				<label class="control-label col-sm-4" for="Adress" >Địa chỉ: </label>
				<div class="col-sm-8">
					<p id="Adress">249 Lã Xuân Oai, Tổ 3, KP.4, P.TNPA, Q.9, TP.HCM</p>
				</div>				  
			</div>
	    	
	    </div>
	</div>	  
	<div class="container-fluid hidden-xs" id="BlockBottom" style="padding: 0">
	 	<div class="col-sm-4"  id="BlockBottom_left">
	 		<strong>THÔNG TIN TRƯỜNG</strong>
	 		<hr width="60%" align="left" />
	 		<ul style="list-style-type:none;padding: 0">
				 <li ><a href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90HSP+K%E1%BB%B9+Thu%E1%BA%ADt+Tp.+HCM/@10.8510617,106.7698245,17z/data=!3m1!4b1!4m5!3m4!1s0x3175270ad28d48ab:0xa6c02de0a7c40d6c!8m2!3d10.8510564!4d106.7720122" style="color: white"><i class="fa fa-map-marker" style="padding: 2px"></i>số 1, đường Võ Văn Ngân, P. Linh Chiểu, TP. Hồ Chí Minh</a></li>				
			</ul> 
	 	</div>
	    <div class="col-sm-4" id="BlockBottom_center">
	    	<strong>VỀ CHÚNG TÔI</strong>
	 		<hr width="60%" align="left" />
	 		<ul style="list-style-type:none; padding: 0">
				 <li><a href="#" style="color: white">Hệ thống</a></li>
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