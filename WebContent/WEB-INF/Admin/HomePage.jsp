	    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
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
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >TRANG CỦA BẠN</p>			     					      	
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
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-topleft:20px; background-color:#DAD5C8;	-webkit-border-top-left-radius:20px;" class="hover_xam"><img src="Image/home-icon.png" style="width: 20px; margin-right: 3px"><a href="loginController" style="text-decoration: none"> Trang Chủ</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/examination-512.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="userManagementSevlet" style="text-decoration: none"> Quản Lý User</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/user.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="personInfomationController?command=personAdmin" style="text-decoration: none"> Thông Tin Admin</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/housing_contract.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="changePasswordController?command=Admin" style="text-decoration: none"> Đổi Mật Khẩu</a> </p>	
				<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/question.jpg" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Giải Đáp Thắc Mắc</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam" style="text-decoration: none"><img src="Image/light-bulb-2-xxl.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#" style="text-decoration: none"> Hướng Dẫn Sử Dụng</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-bottomright:20px;-webkit-border-bottom-right-radius:20px" class="hover_xam"><img src="Image/logout.png" style="width: 20px; margin-right: 3px; margin-bottom: 0"><a href="logoutController" style="text-decoration: none"> Thoát</a> </p>					 				 
	 		</div>
	 		
	 	</div>	   
	    <div class="col-sm-7"  >
	    	<hr width="100%" style="color:#B4ACA1 " class="visible-xs">
	    	<strong>THÔNG BÁO MỚI</strong>
	 		<hr width="90%" align="left" />
	 		<strong></style><a class="hover_red" href="" >Thông báo về việc nghỉ lễ ngày 04/10/2017</a></strong>
	 		<p class="date_time">[Ngày đăng:16/10/2017 10:37:00 AM]</p>	 
	  		<img src="Image/nieuw.gif" style="width: 40px;height: 30px; display: block; margin-left: 50px;">
	 		<p>Giảng viên vui lòng xem thông tin chi tiết <a href="#">tại đây</a></p>
	 		<p class="text-right hidden-xs" ><a href="#" style="text-decoration: none;color: #9C4C16; padding-right: 100px"  ><i class="fa fa-hand-o-right" style="padding: 2px"></i>chi tiết</a></p>

	 		<strong></style><a class="hover_red" href="" >Thông báo về việc nhận chứng chỉ AVĐR TOEIC đợt thi tháng 07/2017 và 08/2017</a></strong>
	 		<p class="date_time">[Ngày đăng:16/10/2017 10:37:00 AM]</p>	 
	  		<img src="Image/nieuw.gif" style="width: 40px;height: 30px; display: block; margin-left: 50px;">
			<p style="margin: 0">Thời gian:<strong>Ngày  21 và 22 tháng 09 năm 2017 (Thứ 5 và thứ 6)<br/>
			          <p style="padding-left: 30px; margin: 0; border: 0">Sáng: Từ 08h00 đến 11h00</p> 
			            <p style="padding-left: 30px; margin: 0; border: 0">Chiều: Từ 13h30 đến 16h00</p></strong> 
			Địa điểm:<strong> Phòng Đào tạo (A1 - 202)</strong><br/>
			<strong>Lưu ý:</strong> <br/>
			+ Khi đi nhận giấy chứng nhận điểm TOEIC, sinh viên phải mang theo thẻ sinh viên và giấy tờ tùy thân có dán ảnh.<br/>
			+ Sau thời gian trên, tất cả giấy chứng nhận điểm TOEIC sẽ được chuyển về lại trung tâm tổ chức thi IEG để tiến hành hủy.<br/>
			Trân trọng./.<br/>
		    </p>	  			 		
	 		<p class="text-right hidden-xs" ><a href="#" style="text-decoration: none;color: #9C4C16; padding-right: 100px"  ><i class="fa fa-hand-o-right" style="padding: 2px"></i>chi tiết</a></p>

	 		<strong></style><a class="hover_red" href="" >Danh sách đăng ký xét TN đợt 1 năm học 2017 - 2018</a></strong>
	 		<p class="date_time">[Ngày đăng:16/10/2017 10:37:00 AM]</p>	 
	  		<img src="Image/nieuw.gif" style="width: 40px;height: 30px; display: block; margin-left: 50px;">
	 		<p>Giảng viên vui lòng xem thông tin chi tiết <a href="#">tại đây</a></p>
	 		<p class="text-right hidden-xs" ><a href="#" style="text-decoration: none;color: #9C4C16; padding-right: 100px"  ><i class="fa fa-hand-o-right" style="padding: 2px"></i>chi tiết</a></p>

	 		<strong></style><a class="hover_red" href="" >
			THÔNG BÁO THỜI KHÓA BIỂU LỚP ANH VĂN TĂNG CƯỜNG 3 (LỚP LUYỆN THI ANH VĂN ĐẦU RA)</a></strong>
	 		<p class="date_time">[Ngày đăng:16/10/2017 10:37:00 AM]</p>		  		
	 		<p>Giảng viên vui lòng xem thông tin chi tiết <a href="#">tại đây</a></p>
	 		<p class="text-right hidden-xs" ><a href="#" style="text-decoration: none;color: #9C4C16; padding-right: 100px"  ><i class="fa fa-hand-o-right" style="padding: 2px"></i>chi tiết</a></p>

	 		<strong></style><a class="hover_red" href="" >Thông báo về việc hủy các lớp học phần Anh văn học kỳ 1 năm 2017-2018</a></strong>
	 		<p class="date_time">[Ngày đăng:16/10/2017 10:37:00 AM]</p>		  		
	 		<p>Giảng viên vui lòng xem thông tin chi tiết <a href="#">tại đây</a></p>
	 		<p class="text-right hidden-xs" ><a href="#" style="text-decoration: none;color: #9C4C16; padding-right: 100px"  ><i class="fa fa-hand-o-right" style="padding: 2px"></i>chi tiết</a></p>

	 		<strong></style><a class="hover_red" href="" >Danh sách TN tháng 9/2017 và Thông báo đóng lệ phí làm bằng TN tháng 9/2017</a></strong>
	 		<p class="date_time">[Ngày đăng:16/10/2017 10:37:00 AM]</p>	 	  		
	 		<p>Giảng viên vui lòng xem thông tin chi tiết <a href="#">tại đây</a></p>
	 		<p class="text-right hidden-xs" ><a href="#" style="text-decoration: none;color: #9C4C16; padding-right: 100px"  ><i class="fa fa-hand-o-right" style="padding: 2px"></i>chi tiết</a></p>

	 		<p style="text-align: center; width: 100%"><a href="#" style="margin-right: 3px">1</a><a href="#"style="margin-right: 3px">2</a><a href="#" style="margin-right: 3px">3</a></p>
	    </div>	    
	    <div class="col-sm-3 ">
	    	<hr width="100%" style="color:#B4ACA1 " class="visible-xs">
	    	<strong>THÔNG BÁO 'HOT'</strong>
	 		<hr width="90%" align="left" />
	 		<marquee scrolldelay="6" scrollamount="2" id="banner" onmouseover="this.stop()" onmouseout="this.start()" direction="up" height="300">
                <table id="ctl00_ContentPlaceHolder1_ctl00_ctl00_ctl00_ctl00_dtlNewhot" cellspacing="0" border="0" style="border-collapse:collapse;">
					<tbody>
						<tr>
							<td>							    
							    <a href="Messages.aspx?id=4763"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc nghỉ lễ ngày 04/10/2017</a><br><br>
							</td>
						</tr>
						<tr>
							<td>						       
						        <a href="Messages.aspx?id=4762"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo lịch thực tập sư phạm học kỳ 1 năm 2017-2018</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>						    	
						    	 <a href="Messages.aspx?id=4760"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy kết quả đăng ký anh văn 1</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4759"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần Anh văn học kỳ 1 năm 2017-2018</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4755"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo đăng ký học phần Anh văn 1 qua mạng học kỳ 1 năm học 2017 – 2018</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4754"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo công bố kết quả thi Anh văn đầu vào ngày 10/09/2017</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4753"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Lịch đổi phòng ngày 26 và 27 /09/2017 - Phòng A114 và A217</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4752"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc thay đổi phòng học (Các phòng A311,A312,A313,A314,A315)</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						          <a href="Messages.aspx?id=4747"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hoãn nhận chứng chỉ anh văn đầu ra</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4745"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần học kỳ 1 năm 2017-2018 (lần 2)</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4740"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần học kỳ 1 năm 2017-2018</a><br><br>
						         </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4739"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc dự kiến các lớp học phần bị hủy học kỳ 1 năm 2017-2018</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4737">Thông báo về điểm thi Anh văn đầu ra thi ngày 30/07/2017 và ngày 06/08/2017</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4736"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo sinh viên chưa ký tên trong bảng điểm giáo dục quốc phòng an ninh</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4727"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo hủy học phần phương pháp tính</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4725"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Lịch học Giáo dục Quốc phòng học kỳ 3 năm 2016-2017</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4724"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần học kỳ 3 năm học 2016-2017 do số lượng đăng ký quá ít</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4722"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Danh sách các lớp học phần dự kiến hủy do số lượng sinh viên đăng ký quá ít Năm học 2016-2017 học kỳ 3</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4721"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo: Biên chế các đại đội tham gia học Giáo dục Quốc phòng - An ninh</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4719"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo kế hoạch Đăng ký môn học qua mạng học kỳ 3 năm học 2016 - 2017</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4718"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về điểm thi Anh văn đầu ra thi ngày 28/05/2017 và 04/06/2017</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4715"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo kế hoạch học môn học Giáo dục Quốc phòng –An ninh cho khóa 2016</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4690"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về điểm thi Anh văn đầu ra thi ngày 05/03/2017 và 12/03/2017</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4682"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo thời gian SV đi thực tập sư phạm  học kỳ 2 năm học 2016-2017</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4680"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc chuyển phòng ngày 25/02/2017</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4680"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc dự kiến các lớp học phần bị hủy học kỳ 2 năm 2016-2017 (lần 2)</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4671"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy các lớp học phần học kỳ 2 năm học 2016-2017 do số lượng đăng ký quá ít</a><br><br>
						     </td>
						</tr>						
						<tr>
							<td>
						        <a href="Messages.aspx?id=4670"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc hủy kết quả đăng ký môn học học kỳ 2 năm học 2016-2017</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4667"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo hủy danh sách sinh viên hệ đại trà đăng ký môn Quản lý dự án nhóm CLC</a><br><br>
						    </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4666"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc dự kiến các lớp học phần bị hủy học kỳ 2 năm 2016-2017</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						         <a href="Messages.aspx?id=4665"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc mở thêm môn học cho ngành CNKT Điện - Điện tử Khóa 14</a><br><br>
						     </td>
						</tr>
						<tr>
							<td>
						        <a href="Messages.aspx?id=4664"><i class="fa fa-caret-right" style="margin-right: 5px"></i>Thông báo về việc đổi phòng học B213</a><br><br>
						                        </td>
						</tr>
					</tbody>
				</table>
            </marquee> 
            <div class="w3-content w3-section" style="max-width:500px">
				  <img class="mySlides" src="Image/truong.jpg" style="width:100%">
				  <img class="mySlides" src="Image/truong1.jpg" style="width:100%">
				  <img class="mySlides" src="Image/truong2.jpg" style="width:100%">
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
	 		<hr width="60%" align="left"  />
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
	<script type="text/javascript">		
		var myIndex = 0;
		carousel();
		function carousel() {
	    var i;
	    var x = document.getElementsByClassName("mySlides");
	    for (i = 0; i < x.length; i++) {
	       x[i].style.display = "none"; 
	    }
	    myIndex++;
	    if (myIndex > x.length) {
	    	myIndex = 1}    
		    x[myIndex-1].style.display = "block";  
			setTimeout(carousel, 2000); // Change image every 2 seconds
		}

	</script>
</body>
</html>