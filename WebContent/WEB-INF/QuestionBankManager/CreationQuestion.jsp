<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>	
  <title>Tạo câu hỏi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script type="text/javascript">
            function Redirect() {
               window.location="#";
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
					          	<li><a href="questionManager"><img src="Image/logout.png" style="width: 20px; height: 20px;">Thoát</a></li>
					        </ul>					        
				     	</li>				     
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >QUẢN LÝ KHO CÂU HỎI</p>			     					      	
				   	 </div>
					</div>
				    <div class="col-sm-6 visible-lg">				    					
				    	<ul class="nav navbar-nav navbar-right">
					      	<li><a href="#"><span class="glyphicon glyphicon-user"></span> liên hệ </a></li>
					      	<li><a href="questionManager"><span class="glyphicon glyphicon-log-out"></span> Thoát</a></li>
				    	</ul>
				    </div>
				 </div>			
			</nav>
		</div>
	</div>
	<div class="container" id="BlockBody" style="overflow: auto; height: 600px">	
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
	    <div class="col-sm-10" style="height: 500px">    	 
	    	<p style="text-align: center;"><strong><span class="glyphicon glyphicon-pencil" style="margin-right: 5px"></span>TẠO CÂU HỎI</strong></p>
	 		<hr width="90%" align="left" />	
	 		<form class="form" action="insertController" method="post">
	 			<div class="row">
	 				<div class="col-sm-6"> 				
					      					      
					      <label class="control-label col-sm-3" for="Subject" style="margin-top: 5px">Môn học:</label>
					      <div class="col-sm-7">
					            <select class="form-control" id="subjectChose" style="margin-bottom: 20px" name="subjectID">
					            	<c:forEach var="subject" items="${requestScope.listSubject }">				          
							        	<option value="${subject.getSubjectID() }">${subject.getSubjectName() }</option>
							       </c:forEach>	
							    </select>							        
					      </div>					      
					      <label class="control-label col-sm-3" for="ChoseTheme" style="margin-top: 5px">Chọn chủ đề:</label>
					      <div class="col-sm-7">
					            <select class="form-control" id="themeChose" style="margin-bottom: 20px" name="themeID">							   
							      							        
							    </select>
					      </div>
					 
					      <label class="control-label col-sm-3" for="Level" style="margin-top: 5px">Mức độ:</label>
					      <div class="col-sm-7">					      
					            <select class="form-control" id="Level" style="margin-bottom: 20px" name="levelID">
					            <c:forEach var="level" items="${requestScope.listLevel }">
					             <option value="${level.getLevelID() }">${level.getLevelName() }</option>	
					            </c:forEach>							       						       							        
							    </select>
					      </div>
					      	
					</div>	
					<div class="col-sm-6" >
						<label class="control-label col-sm-3" for="IDQuestion" style="margin-top: 5px" >Nội dung:</label>
					      <div class="col-sm-7">
					            <textarea class="form-control" id="IDQuestion" style="margin-bottom: 20px" required="required" name="content"></textarea>						       
					      </div>
					       <div class="col-sm-2">
					       </div>
					      
						      <label class="control-label col-sm-3" for="A" style="margin-top: 5px">Câu trả lời:</label>
						      <div class="col-sm-2">
						            <input class="form-control answerClass" id="A" style="margin-bottom: 20px" placeholder="vd: A.." name="answerName0" required="required">							        
						      </div>
						      <div class="col-sm-5">
						            <input class="form-control" id="A" style="margin-bottom: 20px" placeholder="Nội dung câu trả lời..." name="answerContent0" required="required">							        
						      </div>
						      <div class="col-sm-2">
					       </div>
						     <div id="inputAnswer">
					      		</div>			     
					       <div class="col-sm-3">
					       </div>
					         <div class="col-sm-7">
					         	<input id="addAnswer" type="button" class="btn btn-default btn-sm" name="addAnwer" value=" Thêm câu trả lời " style="font-size: 15px ;color: #090808; background-color: #D2C092; margin-bottom: 20px" required="required" />
					       </div>					     
					     <div class="col-sm-2">
					       </div>
					     
					      <label class="control-label col-sm-3" for="Answer" style="margin-top: 5px">Câu đúng:</label>
					      <div class="col-sm-3">
					            <input class="form-control isCorrectClass" onblur="check()" id="A" style="margin-bottom: 20px" placeholder="vd: A..." name="isCorrect" required="required" >	
					      </div>
					      <div class="col-sm-7">
					       </div> 
					      
					</div> 				
	 			</div>
	 			<div class="form-group">				    
					
					<div class=" col-sm-3">
					     <button id="save" type="submit" class="btn btn-default" style="color: #F9D1AE; background-color: #161514" name="command" value="insertQuestion">Lưu thay đổi</button>
					     <button class="btn btn-default"style=" background-color: #DFABBA"><a href="questionManager" style="color: red">Hủy</a></button>
					 </div>
				</div>
	 		</form>	 		
	    </div>	   	   
	</div>	  
	<div class=" container-fluid hidden-xs" id="BlockBottom" style="padding: 0">
	 	<div class="col-sm-4"  id="BlockBottom_left">
	 		<strong>THÔNG TIN TRƯỜNG</strong>
	 		<hr width="60%" align="left" />
	 		<ul style="list-style-type:none;padding: 0">
				 <li ><a href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90HSP+K%E1%BB%B9+Thu%E1%BA%ADt+Tp.+HCM/@10.8510617,106.7698235,17z/data=!3m1!4b1!4m5!3m4!1s0x3175270ad28d48ab:0xa6c02de0a7c40d6c!8m2!3d10.8510564!4d106.7720122" style="color: white"><i class="fa fa-map-marker" style="padding: 2px"></i>số 1, đường Võ Văn Ngân, P. Linh Chiểu, TP. Hồ Chí Minh</a></li>				
			</ul> 
	 	</div>
	    <div class="col-sm-4" id="BlockBottom_center">
	    	<strong>VỀ CHÚNG TÔI</strong>
	 		<hr width="60%" align="left" />
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
	    
	   <!--   -->
	
	</div>
	<script type="text/javascript">
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
<script type="text/javascript">

/*===================== Add Answer ======================  */
var i=1;
var j=0;
var bl=false;
	$("#addAnswer").click(function(){

		var String="<div id='divH"+i+"'><button onclick='DL("+i+")' style='margin-top: 5px' class='btn btn-default btn-sm control-label col-sm-3 ' id='delete"+i+"'>xóa câu trả lời</button><div class='col-sm-2'><input class='form-control answerClass' id='A"+i+"' style='margin-bottom: 20px' placeholder='vd: A...' name='answerName"+i+"' required='required'></div><div class='col-sm-5'><input class='form-control' id='B"+i+"' style='margin-bottom: 20px' placeholder='Nội dung câu trả lời...'  name='answerContent"+i+"' required='required'></div><div class='col-sm-2'></div></div>";
	      $("#inputAnswer").append(String);	
	      i++;		
	});
/*------------------- end -----------------  */
/*=================== Delete Answer =================  */
	function DL(id){
		$("#delete"+id).remove();
		$("#divH"+id).remove();	
		
	}
	/*----------- end -----------------  */
	
/* ================== Check same answerName =============== */
	var check =function(){
	  	var list=$(".answerClass").get();
		for(var entry in list){
			if($(list[entry]).val()===$(".isCorrectClass").val()){
				return;
			}
		}
		alert('Đáp án đúng không trùng khớp :) vui lòng nhập lại !!!');
	}
	
/* --------------- end ------------------ */


	$("#save").click(function(){

		var count="<input id='count' name='count' value='"+i+"'/>";
		if(bl=false){
			
			$("#save").remove();
			bl=true;
		}else{
			$("#inputAnswer").append(count);
		}		
	});
	if(${not empty param.statusInsert}){
		if(${param.statusInsert==true}){
			alert("đã thêm thành công!!!");
			window.location.href = 'insertController?command=insertQuestion'; 
		}
		else{
			alert("sorry !!! không thêm được rồi ");
			window.location.href = 'insertController?command=insertQuestion'; 
		}
	}

</script>
<script type="text/javascript">
	
</script>

</body>
</html>