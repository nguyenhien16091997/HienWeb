<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>	
  <title>Thêm đề thi vào kì thi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />

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
					          	<li><a href="ExamManagement.html"><img src="../Image/logout.png" style="width: 20px; height: 20px;">Thoát</a></li>
					        </ul>					        
				     	</li>
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >THÊM ĐỀ THI VÀO KÌ THI</p>			     					      	
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
			<p style="text-align: center;"><strong>Xin chào ${fullNameSession }!</strong> </p>
			
	 		<hr width="90%" align="left" />			
	 		<div style="border: 0.1px solid #CEA97C;  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.2), 0 2px 5px 0 rgba(0, 0, 0, 0.19);">
	 			<p style="padding: 10px; margin: 0"><img src="Image/introduction.png" style="width: 20px; height: 20px; margin-right: 3px"><a href="#"> Giới thiệu chung</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0"><img src="Image/annount.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#"> Thông báo PĐT</a> </p>	 
	 		</div>
	 		<hr width="90%" align="left" />		 		
	 	</div>
	    <div class="col-sm-10" >   
	    <form action="insertController" method="post">
	    	<div class="row">
	    		<div class="col-md-2">
	    			<select class="form-control" id="subjectChose" style="margin-top: 20px" name="subjectID">
					            	<c:forEach var="subject" items="${requestScope.listSubject }">				          
							        	<option value="${subject.getSubjectID() }">${subject.getSubjectName() }</option>
							       </c:forEach>	
					</select>
	    		</div> 
	    		<div class="col-md-3"></div>		    								    
						    <div class="col-sm-6">								
									<div class="col-sm-2">
										<button id="finish" type="submit" class="btn btn-default" name="command" value="insertTestExamination"  style="color: green; margin-top: 20px; margin-bottom: 20px" >Hoàn thành</button>									        	
									</div>  
								</div>
							</div>	
							  		   		 
	    	
	    	<hr width="90%" align="left" />	
	 		<div style="overflow: auto;width: 100%; height: 400px">
	 			<table id="datatable" class="table table-hover table-striped table-bordered" style="margin-top: 10px;text-align: center;">
	 				<thead>
						<tr>
						    <th style="text-align: center;">STT</th>
						    <th style="text-align: center;">Chọn</th>
						    <th style="text-align: center;">Tên môn học</th>
						    <th style="text-align: center;">Tên đề thi</th>						    						   
						    <th style="text-align: center;">Nội dung đề thi</th>		    					   
						    
						</tr>
					</thead>
					<tbody id="contentTable">
					
					</tbody>
	 			</table>
	 		</div>
	 		<div id="addInputCount"></div> 		
	 		<input name="examinationID" value="${param.examinationID }" style="display: none">
	 	</form>  
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
  $("#contentTable tr").filter(function() {
    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
  });
});

/*================ delete ===================  */
	function DL(id) {
		$("#id"+id).remove();
	}
	
/*================== show class ================  */
	function show(){
		$("#addClass").show();
	}
/*=============== anount Success =================  */
	if(${not empty param.statusInsert}){
		if(${param.statusInsert==true}){
			alert("Thành công!!!");
			window.location.href = 'assignmentTest?examinationID=${param.examinationID}'; 
		}
		else{
			alert("sorry !!! không thêm được rồi ")
			window.location.href = 'assignmentTest'; 
		}
	}
	
/*============== show class follow select =================  */
    $(document).ready(function(){
    	$("#select").change(function(){
    		var str=" ";
    		 $("#select option:selected").each(function(){
    			 str+=$(this).text()+"   ";
    		 });
    		 $("#textarea").html(str);
    	});
    });
    
    /*============== show table follow subject ==============  */
	var i=0;
	var access=function(){
		i=0;
		
		<c:forEach var="test" items="${requestScope.listTest}">		
		if(${test.getSubjectID()}==$("#subjectChose").val()){			
			
				
				var subjectID= $("#subjectChose").find("option:selected").val();
				var subjectName= $("#subjectChose").find("option:selected").text();
	    		var tb="<tr id='divDL'>";
	        	tb+="<td>"+i+"</td>";
	        	tb+="<td><input type='checkbox' value='${test.getTestID()}' name='check"+i+"'/></td>";
	        	tb+="<td><input style='display:none' name='subjectID"+i+"' value='"+subjectID+"'/>"+subjectName+"</td>";
	        	tb+="<td>${test.getTestName()}</td>";
	        	tb+="<td style='text-align: center'><a target='_blank' href='examContent?testID=${test.getTestID() }' style='font-size: 15px; color: #B75A0A ;' ><i><u>nội dung đề thi</u></i></a></td>";			
	    		tb+="</tr>";
	    		i++;
	    		
	    		$("#contentTable").append(tb);
		}		
   		</c:forEach>   		
	   	if(i===0){
			$("#divDL").remove();
		}
    };
    $("#finish").click(function(){
    	$("#addInputCount").html(function(){
    		var ip="<input name='count' value='"+i+"'/>";
    		return ip;
    	});    	
    });    
access();
$("#subjectChose").change(access);
</script>
</body>
</html>