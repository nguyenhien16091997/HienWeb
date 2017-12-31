<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <title>Tests Online</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/File.css"> 
  <script type="text/javascript"  src="js.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />


<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">

</head>
<body>
<script type="text/javascript">
	if( ${not empty param.statusDelete})
		if(${param.statusDelete=="true" }){
	 		alert("Xóa thành công !!!");
			$(document).ready(function(){
				var uri = window.location.toString();
				if (uri.indexOf("?") > 0) {
				    var clean_uri = uri.substring(0, uri.indexOf("?"));
				    window.history.replaceState({}, document.title, clean_uri);
				}
			});
		}
		else if( ${not empty param.statusDelete})
			if(${param.statusDelete=="isUserName" }){
		 		alert("Đây là tài khoản của bạn, bạn đang sử dụng không được phép xóa -_-  !!!  THẤY GHÉT ");
				$(document).ready(function(){
					var uri = window.location.toString();
					if (uri.indexOf("?") > 0) {
					    var clean_uri = uri.substring(0, uri.indexOf("?"));
					    window.history.replaceState({}, document.title, clean_uri);
					}
				});
			}
			else if( ${not empty param.statusDelete})
				if(${param.statusDelete=="false" }){
					alert("sorry :) xóa không thành công !!!");
					$(document).ready(function(){
						var uri = window.location.toString();
						if (uri.indexOf("?") > 0) {
						    var clean_uri = uri.substring(0, uri.indexOf("?"));
						    window.history.replaceState({}, document.title, clean_uri);
						}
					});
				}		

</script>
<script type="text/javascript">
		if( ${not empty param.statusInsert})
			if(${param.statusInsert=="userNameWrong" })
		 		alert("Tài khoản đã có vui lòng nhập tài khoản khác !!!");
			
			else {
				alert("Thêm thành công !!!");
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
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >QUẢN LÝ NGƯỜI DÙNG</p>			     					      	
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
	 			<p style="padding: 10px; margin: 0;-moz-border-radius-topleft:20px; -webkit-border-top-left-radius:20px;" class="hover_xam"><img src="Image/home-icon.png" style="width: 20px; margin-right: 3px"><a href="loginController" style="text-decoration: none"> Trang Chủ</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0; background-color:#DAD5C8" class="hover_xam" style="text-decoration: none"><img src="Image/examination-512.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="userManagementSevlet" style="text-decoration: none"> Quản Lý User</a> </p>	
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
	 	 <div class="col-sm-10" >
	    	
	    	<div class="row">
	    	<div class="col-md-5">
	    	</div>
	    		<div class="col-md-3">
	    			<button type="button" class="btn btn-info btn-lg buttonHover button_properties" data-toggle="modal" data-target="#myCreationExam" ><span class="glyphicon glyphicon-plus"></span>Tạo User</button>
	    		</div>
	    			    		   	
	    		</div>
	    		<hr width="100%" align="left"/>
	    		<div style="width: 100%; height: 400px">
	 			<table id="datatable" class="table table-striped table-bordered" style="margin-auto: 10px; text-align: center;">
	 				<thead>
						<tr>			
							<th  style="text-align: center;">STT</th>  			 
		       				<th  style="text-align: center;">UserName</th>       			
		        			<th  style="text-align: center;">FullName</th>
		        			<th  style="text-align: center;">Role</th>
		        			<th  style="text-align: center;">Lớp</th>
		        			<th  style="text-align: center;">Gener</th>
		        			<th  style="text-align: center;">Phone</th>
		        			<th  style="text-align: center;">Avatar</th>
		        			<th  style="text-align: center;">Sửa</th>
		        			<th  style="text-align: center;">Xóa</th>
						</tr>
					</thead>
					<tbody id="noidung">
						<c:set var="count" value="0"></c:set>
						<c:forEach var="user" items="${requestScope.userList}">
						<c:set var="count" value="${count+1 }"></c:set>
						<tr>
							<!-- Modal Delete -->
							 	<div class="modal fade" id="${count }" role="dialog">
								    <div class="modal-dialog">	    
								      	<!-- Modal content-->
								        <div class="modal-content">
								        	<div class="modal-header">
								          		<button type="button" class="close" data-dismiss="modal">&times;</button>
								          		<h4 class="modal-title" style="color: red;text-align: center">THÔNG BÁO</h4>
								          	</div>
								        	
								        	
								          		<p style="color: #440000; font-size: 30px; text-align: center; padding-top: 10px">Bạn có chắc chắn xóa User đó không !!!</p>
								          		
								        
								        	<div class="modal-footer">
								         		<button type="button" class="btn btn-default" ><a href="deleteController?command=deleteUser&userName=${user.getUserName() }" style="text-decoration-line: none; color: red">Có</a></button>
								         	 	<button type="button" class="btn btn-default" data-dismiss="modal" style="color: green">Không</button>
								        	</div>
								      	</div>      
								    </div>
								</div> 
							<td>${count }</td>
							<td>${user.getUserName() }</td>
		        			<td>${user.getFullName() }</td>
		        			<td><c:forEach var="role" items="${requestScope.roleList }">
		        				<c:if test="${user.getRoleID()==role.getRoleID() }">
		        					${role.getRoleName() }
		        					<%-- ${userList.get(user.getRoleID()).getroleName()} --%>
		        				</c:if>
		        			</c:forEach>
		        			</td>
		        			<td>${user.getClassID() }</td>
		        			<td>${user.getGener() }</td>
		        			<td>${user.getPhone() }</td>
		        			<td>${user.getAvatar() }</td>
		        			
							<td  style="text-align: center"><a href="updateController?command=updateUser&userName=${user.getUserName() }" class="icon_edit"><i class="fa fa-gear" style="font-size:24px"></i></a></td>
							<td style="text-align: center;"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#${count }" style="color: red; padding: 0; background-color: white; border: 0"><i class="fa fa-close" style="font-size:30px"></i></button></td>
							   
							</tr>	
						</c:forEach>						
					</tbody>
	 			</table>
	 		</div>
	    </div>
	 </div> 		 
	 
	 <div class="modal fade" id="myCreationExam" role="dialog">
		<div class="modal-dialog">
			<!-- Modal Creation content -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
	          		<h4 class="modal-title" style="color: red;text-align: center">Tạo Tài Khoản User</h4>
				</div>
				<form class="form-horizontal" action="insertController" style="color: #473727" method="post">					    
					    <div class="form-group" style="margin-top: 20px">
					      <label class="control-label col-sm-4" for="name" >UserName : </label>
					      <div class="col-sm-7">          
					        	<input class="form-control" type="text" placeholder=" User Name" id="name" name="userNameIS" value="${param.userNameIS} "><br><span id="err_name"></span>
					      </div>
					    </div>
					     <div class="form-group">
					      <label class="control-label col-sm-4" for="pw1">Password : </label>
					      <div class="col-sm-7">          
					        	<input class="form-control" type="password" placeholder="Password" id="pw1" name="passwordIS" value="${param.passwordIS }"><br><span id="err_pw1"></span>
					      </div>
					    </div>
					    <div class="form-group">
						    <label class="control-label col-sm-4" for="pw2">Nhập lại Password : </label>
						    <div class="col-sm-7">         
						  		  <input class="form-control" type="password" placeholder="Nhập lại Password"  id="pw2"><br><span id="err_pw2"></span>    
						    </div>
					    </div>
					    <div class="form-group">
						    <label class="control-label col-sm-4" for="fullName">Họ tên đầy đủ: </label>
						    <div class="col-sm-7">         
						  		    <input class="form-control" type="text" placeholder=" Birthday" name="fullNameIS" value="${param.fullNameIS }" id="ns">  
						    </div>
					    </div>
					    <div class="form-group">
						    <label class="control-label col-sm-4"  for="roleName">Quyền Truy Cập : </label>
						    <div class="col-sm-7"> 
						    	<select class="form-control" name="roleIDIS" id="roleID" onchange="ch()">
							    	<c:forEach var="role" items="${requestScope.roleList }">
							    		<option value="${role.getRoleID() }">${role.getRoleName() }</option>							    		
							    	</c:forEach>						        				     
							    </select>        
						    </div>
					    </div>
					    <div class="form-group" id="showClass" style="display: none">
					    	<label class="control-label col-sm-4"  for="roleName">Lớp : </label>
					    	<div class="col-sm-7">
					    		<select class="form-control" name="classIDIS">
					    		<c:forEach var="classID" items="${requestScope.listClass }">
					    			<option value="${classID.getClassID() }">${classID.getClassID() }</option>
					    		</c:forEach>
					    		</select>
					    	</div>
					    </div>
					    
					   <div class="form-group">
						    <label class="control-label col-sm-4"  for="role">Giới tính : </label>
						    <div class="col-sm-7"> 
						    	<select class="form-control" id="role" name="generIS">
							    	
							    		<option>nữ</option>
							    		<option>nam</option>
							    		<option>bê đê</option>
							    							        				     
							    </select>        
						    </div>
					    </div>
					    <div class="form-group">
						    <label class="control-label col-sm-4" for="sodt">SDT : </label>
						    <div class="col-sm-7">         
						  		   <input class="form-control" type="text" placeholder=" Phone Number" name="phoneIS" id="sodt" value="${param.phoneIS }"><br><span id="err_sodt"></span><br>
						    </div>
					    </div>
					     <div class="form-group">
						    <label class="control-label col-sm-4" for="avatar">Avatar : </label>
						    <div class="col-sm-7">         
						  		   <input type="file" name="avatarIS" value="${param.avatarIS }"/>
						    </div>
					    </div>
					   
					    <div class="form-group">
					    	<div class="col-sm-1"></div>
					    	
						    	<div class=" col-sm-8">
						        	<button class="btn btn-default" type="button" data-dismiss="modal" style="color: red">Hủy</button>
						      	</div>
					    	      
					      	
					      	
						      	<div class=" col-sm-3">
						        	<button type="submit" class="btn btn-default" style="color: green" name="command" value="insertUser">Tạo</button>
						      	</div>
					      	
					    </div>
				</form>
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
	
	
	
	  	<script>
$(document).ready(function(){
	$("#err_id").hide();
    $("#err_name").hide();
    $("#err_pw1").hide();
    $("#err_pw2").hide();
    $("#err_sodt").hide();
    var err_id =false;
    var err_name =false;
    var err_pw1 =false;
    var err_pw2 =false;
    var err_sodt = false;
    $("#id").focusout(function () {
    	 if($("#id").val().length < 2 || $("#id").val().length > 10){
             $("#err_id").html("Độ dài ID từ 2-10 kí tự");
             $("#err_id").show();
             err_id = true;
         }
        else $("#err_id").hide();
    });
    $("#name").focusout(function () {
        if($("#name").val().length < 2 || $("#name").val().length > 20){
            $("#err_name").html("Độ dài tài khoản từ 2-20 kí tự");
            $("#err_name").show();
            err_name = true;
        }
        else $("#err_name").hide();
    });
    $("#pw1").focusout(function () {
        if($("#pw1").val().length < 2 || $("#pw1").val().length > 20){
            $("#err_pw1").html("Độ dài mật khẩu từ 2-20 kí tự");
            $("#err_pw1").show();
            err_pw1 = true;
        }
        else $("#err_pw1").hide();
    });
    $("#pw2").focusout(function () {

    	if($("#pw1").val()!=$("#pw2").val()){
            $("#err_pw2").html("Mật khẩu không khớp. Vui lòng nhập lại");
            $("#err_pw2").show();
            err_pw2 = true;
        }
        else 
        	{
	        	$("#err_pw2").hide();
	        	$("#err_pw2").html("Mật khẩu đã khớp.");
	        	$("#err_pw2").show();
        	}
    });
    $("#sodt").focusout(function () {
        if($("#sodt").val().length < 2 || $("#sodt").val().length > 11){
            $("#err_sodt").html("Số điện thoạt không hợp lệ");
            $("#err_sodt").show();
            err_sodt = true;
        }
        else $("#err_sodt").hide();
    });
    
    //function tim kiem
  $("#search").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#noidung tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
function ch(){
	var r=$("#roleID").val();
	if(r=="1"){
		$("#showClass").show();
	}
	else{
		$("#showClass").hide();
	}
	
}
$(function(){
	$('#datatable').DataTable();
});


</script>
</body>
</html>