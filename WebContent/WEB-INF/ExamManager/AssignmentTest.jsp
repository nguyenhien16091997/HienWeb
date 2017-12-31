<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>	
  <title>NỘI DUNG KÌ THI</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
 <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />

<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#datatable').DataTable();
});
</script>

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
					          	<li><a href="logoutController"><img src="../Image/logout.png" style="width: 20px; height: 20px;">Đăng xuất</a></li>
					        </ul>					        
				     	</li>
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >NỘI DUNG KÌ THI</p>			     					      	
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
	 		<div style="border: 0.1px solid #CEA97C;  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.2), 0 2px 5px 0 rgba(0, 0, 0, 0.19);">
	 			<p style="padding: 10px; margin: 0"><img src="Image/introduction.png" style="width: 20px; height: 20px; margin-right: 3px"><a href="#"> Giới thiệu chung</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0"><img src="Image/annount.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#"> Thông báo PĐT</a> </p>	 
	 		</div>
	 		<hr width="90%" align="left" />		 		
	 	</div>
	    <div class="col-sm-10" >     	
	    	<div class="row">
	    		<div class="col-md-5">
	    			
	    		</div> 		    								    
						    <div class="col-sm-6">
								<button type="button" class="btn btn-default btn-sm" style="font-size: 15px; margin-top: 5px">
        				  <a target="_blank" style="text-decoration: none; color: #090808" href="insertController?command=insertTestForExamination&examinationID=${param.examinationID }"><span class="glyphicon glyphicon-plus-sign"></span> Thêm đề thi</a>
     			   </button>
							</div>	    		   		 
	    	</div> 
	    	<hr width="90%" align="left" />	
	 		<div style="width: 100%; height: 400px">
	 			<table id="datatable" class="table table-striped table-hover table-bordered" style="margin-top: 10px;text-align: center;">
	 				<thead>
						<tr>
						    <th style="text-align: center;">STT</th>
						    <th style="text-align: center;">Tên đề thi</th>
						    <th style="text-align: center;">Môn học</th>						   
						    <th style="text-align: center;">Nội dung đề thi</th>		    					   
						    <th style="text-align: center;">Danh sách lớp thi</th>	
						    <th style="text-align: center;">Xóa</th>
						</tr>
					</thead>
					<tbody id="noidung">
					<c:set var="count" value="0"></c:set>
					<c:forEach var="et" items="${requestScope.listExaminationAndTest }">
					<c:if test="${et.getExaminationID()==param.examinationID }">
					<c:set var="count" value="${count+1 }"></c:set>					
						<tr>							
							<td>${count }</td>
							<td>${mapTest.get(et.getTestID()).getTestName() }</td>	
							<td>${mapSubject.get(et.getSubjectID()).getSubjectName() }</td>							
							<td style="text-align: center"><a target="_blank" href="examContent?testID=${et.getTestID() }" style="font-size: 15px; color: #B75A0A ;" ><i><u>chi tiết</u></i></a></td>
							<td style="text-align: center;"> <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myClass${count }" style="color: #B75A0A; padding: 0;  background-color: white; border: 0; font-size: 15px"><i>Lớp thi</i></button></td>
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
								         		<button type="button" class="btn btn-default" ><a href="deleteController?command=deleteExaminationAndTest&id=${et.getId() }&examinationID=${param.examinationID}" style="text-decoration: none; color: red">Có</a></button>
								         	 	<button type="button" class="btn btn-default" data-dismiss="modal" style="color: green">Không</button>
								        	</div>
								      	</div>      
								    </div>
								</div>
								<!-- Modal detail Class -->
							 	<div class="modal fade" id="myClass${count }" role="dialog">
								    <div class="modal-dialog">	    
								      	<!-- Modal content-->
								        <div class="modal-content">
								        	<div class="modal-header">
								          		<button type="button" class="close" data-dismiss="modal">&times;</button>
								          		<h4 class="modal-title" style="color: red;">LỚP THI</h4>
								        	</div>
								        	<form action="insertController" method="post">
									        	<label class="control-label col-sm-3" for="a" style="margin-top: 20px" ></label>
												<div class="col-sm-9">
												<div style="display:none"><input name="TestIDIS" value="${et.getId()}"/></div>
												<c:forEach var="classAndId" items="${requestScope.listClassExam }">
												<c:if test="${classAndId.getId()==et.getId() }">
												
													<div id="id${classAndId.getClassID() }">
													 <input name="${classAndId.getClassID() }" id="a" class="btn btn-default btn-sm" style="font-size: 15px; margin-bottom: 20px; margin-top: 20px" required="required" value="${classAndId.getClassID() }" />	
													 <button onclick="DL('${classAndId.getClassID() }')" class="btn btn-default" style="font-size: 15px; color: red" >Xóa</button>
													 </div>
												</c:if>	 
												</c:forEach>
												</div>
												<div id="addClass${count }" style="display: none">
													<label class="control-label col-sm-3" for="a">nếu muốn bỏ chọn thì nhấn giữ ctrl và thực hiện click</label>
													<div class="col-sm-9" >
														<select multiple="multiple" class="form-control" name="classID" id="select${count }">
														<c:forEach var="classID" items="${requestScope.listClassID }">
															<option value="${classID.getClassID() }">${classID.getClassID() }</option>
														</c:forEach>
														</select>
													</div>
													
													<div class="col-sm-9" style="margin-top: 20px">
														<textarea class="form-control" rows="5" cols="15" id="textarea${count }"></textarea>
													</div>	
												</div>	
													<label class="control-label col-sm-3" for="a" style="margin-top: 20px" ></label>
													<div class="col-sm-9">
														<button type="button" class="btn btn-default" data-dismiss="modal" style=" color: red; margin-top: 20px; margin-bottom: 20px; margin-left: 20px" >Hủy</button>
									         	 		<button type="submit" class="btn btn-default"  style="color: green; margin-top: 20px; margin-bottom: 20px" name="command" value="insertClassFollowTest">Hoàn thành</button>									        	
													</div>							
												
									         	<input style="display: none" name="examinationID" value="${param.examinationID }"/>	
								        	</form>						        	
									        	
									        	<div class="modal-footer">
								        			<label class="control-label col-sm-4" for="a" style="margin-top: 20px" ></label>
													<div class="col-sm-8">
													 	<button onclick="show('${count}')" class="btn btn-default" style="font-size: 15px; color: green; margin-top: 20px" >Thêm lớp thi</button>
													</div>
												</div>
								      	</div>      
								    </div>
								</div> 
								</c:if>																	
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

if( ${not empty param.statusDelete})
	if(${param.statusDelete=="true" }){
 		alert("Xóa thành công !!!");
 		window.location.href = 'assignmentTest?examinationID=${param.examinationID}'; 
	}
	
	else {
		alert("Xóa không thành công !!!");
		window.location.href = 'assignmentTest?examinationID=${param.examinationID}'; 
	}
	function DL(id) {
		$("#id"+id).remove();
	}
	function show(id){
		$("#addClass"+id+"").show();
	}
	if(${not empty param.statusInsert}){
		if(${param.statusInsert==true}){
			alert("Thành công!!!");
			window.location.href = 'assignmentTest?examinationID=${param.examinationID}'; 
		}
		else{
			alert("sorry !!! không thêm được rồi ")
			window.location.href = 'assignmentTest?examinationID=${param.examinationID}'; 
		}
	}
    $(document).ready(function(){
    	<c:set var="count1" value="0"></c:set>
		<c:forEach var="et" items="${requestScope.listExaminationAndTest }">
		<c:if test="${et.getExaminationID()==param.examinationID }">
		<c:set var="count1" value="${count1+1 }"></c:set>
    	$("#select${count1}").change(function(){
    		var str=" ";
    		 $("#select${count1} option:selected").each(function(){
    			 str+=$(this).text()+"   ";
    		 });
    		 $("#textarea${count1}").html(str);
    	});
    	</c:if>																	
		</c:forEach>
    });

</script>
</body>
</html>