<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>	
  <title>Quản lý đề thi</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>

  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
    <script type="text/javascript" src="../QuestionBankManager/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="../ExamManager/js/jquery.autocomplete.min.js"></script>
  <script type="text/javascript" src="../ExamManager/js/currency-autocomplete.js"></script>
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
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >QUẢN LÝ ĐỀ THI</p>			     					      	
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
	 			<p style="padding: 10px; margin: 0;  background-color: #E8E2DC;" class="hover_xam"><img src="Image/light-bulb-2-xxl.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="examManager" style="text-decoration: none"> Quản lý đề thi</a> </p>	
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0" class="hover_xam"><img src="Image/housing_contract.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="examinationManagement" style="text-decoration: none"> Quản lý Kì thi</a> </p>
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
						    <button type="button" class="btn btn-default btn-sm" style="font-size: 15px; margin-top: 18px;color: #090808" data-target="#myCreationExam" data-toggle="modal">
        				  <span class="glyphicon glyphicon-plus-sign"></span>Tạo đề thi</a>
     			   </button>
								
							</div>	    		   		 
	    	</div>  
	 		<hr width="90%" align="left" />	
	 		<div style="width: 100%; height: 400px">
	 			<table id="datatable" class="table table-hover table-striped table-bordered">
	 			
	 				<thead>
						<tr >
							
							<th style="text-align: center;">STT</th>
						    <th style="text-align: center;">Tên đề thi</th>
						    <th style="text-align: center;">Môn học</th>
						    <th style="text-align: center;">Số câu hỏi</th>
						    <th style="text-align: center;">Thời gian</th>						   
						    <th style="text-align: center;">Ngày ra</th>
						    <th style="text-align: center;">Người tạo</th>
						    <th style="text-align: center;">Nội dung</th>
						    <th style="text-align: center;">Chỉnh sửa</th>
						    <th style="text-align: center;">Xóa</th>
						</tr>
					</thead>
					<tbody id="noidung">
					<c:set var="count" value="0"></c:set>
					<c:forEach var="test" items="${requestScope.listTest}" >
						<tr>	<c:set var="count" value="${count+1 }"></c:set>
								<td>${count }</td>									
						  		<td>${test.getTestName()}</td>
						  		<td>${mapSubject.get(test.getSubjectID()).getSubjectName() }</td>
						  		<td>${test.getQuestionNumber() }</td>							  		
						  		<td>${test.getTestTime() }</td>	
						  		<td>${test.getDateCreate() }</td>
						  		<td>${test.getUserName() }</td>						  	
						  		<td><a  href="examContent?testID=${test.getTestID() }" style="text-decoration: underline;" target="_blank">chi tiết</a></td>
								<td  style="text-align: center"><a href="updateController?command=updateExam&testID=${test.getTestID() }" target="_blank" class="icon_edit"><i class="fa fa-gear" style="font-size:24px"></i></a></td>
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
								        		<button type="button" class="btn btn-default" ><a href="deleteController?command=deleteExam&testID=${test.getTestID() }" style="text-decoration-line: none; color: red">Có</a></button>
								         	 	<button type="button" class="btn btn-default" data-dismiss="modal" style="color: green">Không</button>							        							         		
							        	</div>
							      	</div>      
							    </div>
							</div> 
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
	
	<!-- Model CreationExam -->
	<div class="modal fade" id="myCreationExam" role="dialog">
		<div class="modal-dialog">
			<!-- Modal Creation content -->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
	          		<h4 class="modal-title" style="color: red;">TẠO ĐỀ THI</h4>
				</div>
				<form class="form-horizontal" action="insertController" style="color: #473727" method="post">
						<div class="form-group"style="margin-top: 20px">
							<div class="col-sm-1"></div>
							<div class="col-sm-3"><p style="color: #A85B0E; margin-top: 10px">Tên đề thi:</p></div>
							<div class="col-sm-7"><input type="text" class="form-control" id="IdExam" placeholder="Mã đề" name="testNameIS" required="required" value="${param.testName }"></div>
							<div class="col-sm-1"></div>							
						</div>
						<div class="form-group"style="margin-top: 20px">
							<div class="col-sm-1"></div>
							<div class="col-sm-3"><p style="color: #A85B0E; margin-top: 10px">Thời gian thi:</p></div>
							<div class="col-sm-3"><input class="form-control" type="number" name="hour"min="0" max="24" step="1" required="required" placeholder="giờ..." value="${param.hour }"></div>
							<div class="col-sm-2"><input class="form-control" type="number" name="minute"min="0" max="60" step="30" required="required" placeholder="phút..." value="${param.minute }"></div>
							<div class="col-sm-2"><input class="form-control" type="number" name="ticking"min="0" max="60" step="0" required="required" placeholder="giây..." value="${param.ticking }"></div>
							<div class="col-sm-1"></div>							
						</div>
						<div class="form-group"style="margin-top: 20px">
							<div class="col-sm-1"></div>							
					    	<div class="col-sm-5">
					    		<p style="color: #A85B0E">Môn học:</p>					    		
					    		<select class="form-control" id="subjectChose" name="subjectIDIS">
						        	<c:forEach var="subject" items="${requestScope.listSubject }">
								        <option value="${subject.getSubjectID() }">${subject.getSubjectName() }</option>	
								    </c:forEach>						        
								</select>
					    	</div>
					    	<div class="col-sm-5">
					    		<p style="color: #A85B0E">Chủ đề:</p>
					    		<select class="form-control" id="themeChose" >	
					    									            
								</select>
					    	</div>
					    	<div class="col-sm-1"></div>	
					    </div>			    					     		   					    
					   	<div class="form-group"style="margin-top: 20px">
					   		<div class="col-sm-1"></div>					   		
					   		<div class="col-sm-10" id="addContent">		 			
					   								   			
					   		</div>					   		
					   		<div class="col-sm-1"></div>
					   	</div>
					  <div class="form-group"style="margin-top: 20px">
					   		<div class="col-sm-4"></div>
					   		<div class="col-sm-4"><input id="btnAddContent" type="button" class="btn btn-default btn-sm" name="addAnwer" value=" Thêm nhóm câu hỏi " style="font-size: 15px ;color: #090808; background-color: #D2C092; margin-bottom: 20px" required="required" /></div>
					   		<div class="col-sm-4"></div>
					  </div>
					   	
					    <div class="form-group"style="margin-top: 20px">
					    
					    	<div class="col-sm-2">					    		
					    	</div>
					    	<div class="col-sm-10">Tổng số câu hỏi: <label id="lb">0</label>
					    	</div>					    	
					    </div>
					   
					    <div class="form-group">
					    	<div class="col-sm-1"></div>        
					      	<div class=" col-sm-8">
					        	<button class="btn btn-default" style="color: red">Hủy</button>
					      	</div>
					      	<div class=" col-sm-3">
					        	<button type="submit" id="create" class="btn btn-default" style="color: green" name="command" value="insertTest">Tạo</button>
					      	</div>
					    </div>
				</form>
			</div>
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
		
		
	/*============= add nhóm nội dung =================  */
	var i=0;
	var j=0;
	var a="";
	var b="";
	$("#btnAddContent").click(function(){
		b=$('#subjectChose').val();
		a=$('#themeChose').val();
		var themeIDText ="<input name='themeIDIS"+i+"' type='hidden' value='"+a+"'/>";
		var themeText=$('#themeChose option:selected').text();
		var spansText="<div id='delete"+i+"'><div class='col-sm-4' style='margin-top:20px' ><span >"+themeText+"</span></div>";
		var inputCount="";
	  	 var spans=$("span").get(); 
		 for(var sp in spans){			
			var spanArray= spans[sp];			
			if(themeText ===$(spanArray).text()){
				alert("bạn đã nhập chủ đề này rồi !!!");
				return;
			
			}				
		}   
		<c:forEach var="subjectScript" items="${requestScope.listSubject}"> 
			if(b==${subjectScript.getSubjectID()}){				
				<c:forEach var="themeScript" items="${themeDAO.getListThemeFollowSubjectID(subjectScript.getSubjectID())}">
				
					if(a==${themeScript.getThemeID()}){
						
						inputCount+= "<div class='col-sm-6'><input style='margin-top:10px' onchange='sc()' class='form-control scount' type='number' name='countQuestionInSubject"+i+"' min='0' max='${questionDAO.getCountQuestionFollowThemeID(themeScript.getThemeID(),subjectScript.getSubjectID())}' step='1' placeholder='Số lượng câu hỏi...' required='required' /></div>";						
					}
				</c:forEach>
			}
		</c:forEach>
		
		var btnDelete= "<div class='col-sm-2'><button type='button' onclick='deleteGroupQuestion("+i+")' class='btn btn-default btn-sm' style='font-size: 15px;color: red; margin-top:10px' >Xóa</a></button></div></div>"
		$("#addContent").append(themeIDText+spansText+inputCount+btnDelete);	
		i++;
		j++;
	});
	function deleteGroupQuestion(id){
		$("#delete"+id).remove();
		j--;
	}
	/*------------------------------------------*/
	/*======================== get count last========================= */
	$("#create").click(function(){
		
		var countLast="<input name='countLast' value='"+i+"' type='hidden'/>";
		var countLast1="<input name='countLast1' value='"+j+"' type='hidden'/>";
		$("#addContent").append(countLast+countLast1);
		
	});
	if(${not empty param.statusInsert}){
		if(${param.statusInsert==true}){
			alert("đã thêm thành công!!!");
			window.location.href = 'examManager'; 
		}
		else{
			alert("bạn chưa chọn số lượng câu hỏi nào !!!")
			window.location.href = 'examManager?testName=${param.testName}&hour=${param.hour}&minute=${param.minute}&ticking=${param.ticking}'; 
		}
	}	
	if(${not empty param.statusDelete}){
		if(${param.statusDelete==true}){
			alert("đã xóa thành công!!!");
			window.location.href = 'examManager'; 
		}
		else{
			alert("sorry :) xóa thất bại rồi !!!")
			window.location.href = 'examManager'; 
		}
	}	
	
	/*------------------ end --------------------  */
	if(${not empty param.statusUser}){
		if(${param.statusUser==false}){
			alert("bạn chỉ được chỉnh sửa những gì không phải bạn tạo !!!");
			window.location.href = 'examManager'; 
		}
		
	}
	$(function(){
 		$('#datatable').DataTable();
 	});
	
	/*========================== sum count =============================  */
	var sc = function(){
		var scounts=$(".scount").get();
		var sum = 0;
			for(var scount in scounts){
				sum =parseInt($(scounts[scount]).val())+sum;
			}
		
		$("#lb").html(sum);
	};
	/*------------------------- end ------------------------------------  */
</script>
</body>
</html>