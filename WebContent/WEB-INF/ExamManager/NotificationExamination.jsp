<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>	
  <title>Quản lý thông báo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/properties/Properties.css"> 
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
    <script type="text/javascript" src="../QuestionBankManager/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="../ExamManager/js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="../ExamManager/js/currency-autocomplete.js"></script>
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
				      		<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="padding-left: 0">
				      			<span class="glyphicon glyphicon-th-list" style="padding-right: 2px"></span>MENU <span class="caret"></span></a>
					        <ul class="dropdown-menu">
					        	<li><a href="HomePage.jsp"><img src="Image/home-icon.png" style="width: 20px; height: 20px">Trang chủ</a><hr width="100%" style="margin: 0"/></li>
					        	<li> <a href="ExamManagement.jsp"><img src="Image/housing_contract.png" style="width: 20px; height: 20px">Quản lý đề thi</a>
					          	</li>
					          	<li> <a href="ExaminationManagement.jsp"><img src="Image/examination-512.png" style="width: 20px; height: 20px">Quản lý kì thi</a>
					          	</li>
					          	
					          	<li> <a href="NotificationExamination.jsp"><img src="Image/Notication.png" style="width: 20px; height: 20px">Thông báo kì thi</a>
					          	</li>					          	
					          	<li><a href="PersionInformation.jsp"><img src="Image/user.png" style="width: 20px; height: 20px">Thông tin cá nhân</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="ChangePassword.jsp"><img src="Image/password.png" style="width: 20px; height: 20px">Đổi mật khẩu</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="contact.jsp"><img src="Image/question.jpg" style="width: 20px; height: 20px">Giải đáp thắc mắc</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="#"><img src="Image/light-bulb-2-xxl.png" style="width: 20px; height: 20px">Hướng dẫn sử dụng</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="https://hcmute.edu.vn/"><img src="Image/infomation.png" style="width: 20px; height: 20px">Thông tin trường</a><hr width="100%" style="margin: 0"/></li>
					          	<li><a href="logoutController"><img src="Image/logout.png" style="width: 20px; height: 20px;">Đăng xuất</a></li>
					        </ul>						        
				     	</li>
				     	<li>
				     		
				     	</li>
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >THÔNG BÁO THI</p>			     					      	
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
	 			<p style="padding: 10px; margin: 0;  -moz-border-radius-topleft:20px;
	 								-webkit-border-top-left-radius:20px;" class="hover_xam"><img src="Image/home-icon.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="HomePage.jsp" style="text-decoration: none">Trang chủ</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/housing_contract.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="ExamManagement.jsp" style="text-decoration: none"> Quản lý đề thi</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/housing_contract.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="ExaminationManagement.jsp" style="text-decoration: none"> Quản lý Kì thi</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="background-color: #E8E2DC ;padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/Notication.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="NotificationExamination.jsp" style="text-decoration: none"> Thông báo kì thi</a> </p>		
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
				
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/user.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="PersionInformation.jsp" style="text-decoration: none"> Thông tin cá nhân</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/password.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="ChangePassword.jsp" style="text-decoration: none"> Đổi mật khẩu</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/question.jpg" style="height: 20px;width: 20px; margin-right: 3px"><a href="contact.jsp" style="text-decoration: none"> Giải đáp thắc mắc</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/light-bulb-2-xxl.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Hướng dẫn sử dụng</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-bottomright:20px;
									-webkit-border-bottom-right-radius:20px" class="hover_xam"><img src="Image/logout.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="logoutController" style="text-decoration: none"> Đăng xuất</a> </p>	

	 		</div>
	 	</div>
	    <div class="col-sm-10" >
	    	<hr width="90%" />
	    	<div class="row">
	    		<div class="col-md-3">
	    			<button type="button" class="btn btn-info btn-lg buttonHover button_properties" data-toggle="modal" data-target="#myCreationNotification" ><span class="glyphicon glyphicon-plus"></span>Tạo thông báo</button>
	    				</div>

	    		<div class="col-md-9"  style="background-color: #323231; color: white; 
	    		-moz-border-radius-topleft:40px;
-webkit-border-top-left-radius:40px;-moz-border-radius-bottomright:40px;
-webkit-border-bottom-right-radius:40px; ">
	    			<div class="form-group">

						    <label class="control-label col-sm-4" for="SearchExam" style="padding-top: 12px">Tìm Thông tin đề thi theo: </label>
						    <div class="col-sm-2" style="padding-bottom: 8px;padding-top: 8px">         
						  		       <select class="form-control" id="SearchExam">
								            <option>Tiêu đề</option>								            							           								            
								        </select>
						    </div>
						    <div class="col-sm-6">
							  	<form class="navbar-form visible-lg" role="search" name="Search" onsubmit="return validateForm()" method="post">
						        <div class="input-group">
						            <input type="text" class="form-control biginput" placeholder="Nhập danh mục cần tìm" id="autocomplete" name="currency">
						            <div class="input-group-btn">
						                <button class="btn btn-default" type="submit" id="hide"><i class="glyphicon glyphicon-search"></i></button>
						               
						            </div>
						        </div>
						    </form>
							</div>
					</div>
	    		</div>	    		   	
		    	
	    	</div>  
	    	

	 		<hr width="90%" align="left" />	
	 		<div style="overflow: auto;width: 100%; height: 400px">
	 			<table class="table table-hover table-bordered" style="margin-top: 10px; text-align: center;">
	 				<thead>
						<tr >
						    <th style="text-align: center;">Tiêu đề</th>
						    <th style="text-align: center;">Gửi đến HP</th>						    
						    <th style="text-align: center;">Thời gian gửi</th>						    
						    <th style="text-align: center;">Nội dung</th>						    
						    <th style="text-align: center;">Xóa</th>
						</tr>
					</thead>
					<tbody>
						<tr>						
						
							<td></td>
							<td></td>
							<td></td>											
							<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#DetailNotification" style="font-size: 15px; color: #B75A0A ; padding: 0; background-color: white; border: 0"><i><u>Chi tiết<u><i></button></td>		
							<td style="text-align: center;"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="color: red; padding: 0; background-color: white; border: 0"><i class="fa fa-close" style="font-size:30px"></i></button></td>
						</tr>	
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
	          		<p>Bạn có chắc chắn xóa nó không !!!</p>
	        	</div>
	        	<div class="modal-footer">
	         		<button type="button" class="btn btn-default" data-dismiss="modal" style="color: red">Có</button>
	         	 	<button type="button" class="btn btn-default" data-dismiss="modal" style="color: green">Không</button>
	        	</div>
	      	</div>      
	    </div>
	</div> 
	  <!-- Modal Delete -->
 	<div class="modal fade" id="DetailNotification" role="dialog">
	    <div class="modal-dialog">	    
	      	<!-- Modal content-->
	        <div class="modal-content">
	        	<div class="modal-header" style="background-color: #CF925D; text-align: center;">
	          		<button type="button" class="close" data-dismiss="modal" >&times;</button>
	          		<h4 class="modal-title" style="color: ;">THÔNG BÁO</h4>
	        	</div>
	        	<div class="modal-body">
	          		<p style="color: red; text-align: center;"><strong>THI VÀO THỨ 2</strong></p>
	        	</div>
	        	<div class="modal-footer">	         		
	         	 	<button type="button" class="btn btn-default" data-dismiss="modal"  style="color: #F9D1AE; background-color: #161514">Đóng</button>
	        	</div>
	      	</div>      
	    </div>
	</div> 
	  <!-- Modal Delete -->
 	<div class="modal fade" id="myCreationNotification" role="dialog">
	    <div class="modal-dialog">
			<!-- Modal Creation content -->
			<div class="modal-content">
				<div class="modal-header" style="background-color: #CF925D; text-align: center;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
	          		<h4 class="modal-title" style="color: #090808;">NỘI DUNG CÂU HỎI</h4>
				</div>
				<form class="form-horizontal" action="#">			 								      
					      					     
					      <label class="control-label col-sm-5" for="A" style="margin-top: 25px">Gửi đến (Mã học phần):</label>
					      <div class="col-sm-7">
					            <input class="form-control" id="A" style="margin-bottom: 20px; margin-top: 20px" >							        
					      </div>
					      
					      <label class="control-label col-sm-5" for="B" style="margin-top: 5px" >Tiêu đề: </label>
					      <div class="col-sm-7">
					            <input class="form-control" id="B" style="margin-bottom: 20px" >							        
					      </div>
					     
					      <label class="control-label col-sm-5" for="C" style="margin-top: 5px">Nội dung: </label>
					      <div class="col-sm-7">
					            <textarea class="form-control" id="C" style="margin-bottom: 20px"></textarea> 						        
					      </div>
					   
					 <div class="form-group">
					    	
					    	<div class=" col-sm-7">
					        	
					      	</div>    
					      	<div class="col-sm-5"><button class="btn btn-default"	style=" background-color: #9F0821"><a href="NotificationExamination.html" style="color: #080808">Hủy</a></button>
					    		<button class="btn btn-default"	style=" background-color: #161514;color: #FAB980">Gửi</button>
					    	</div>					      	
					    </div>
				</div>
	 		</form>	
			</div>
		</div>
	</div> 
 
</div>
</body>
</html>