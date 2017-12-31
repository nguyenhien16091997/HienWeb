<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>	
  <title>Chỉnh sửa đề thi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />
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
					        	<li><a href="loginController"><img src="../Image/home-icon.png" style="width: 20px; height: 20px">Trang chủ</a><hr width="100%" style="margin: 0"/></li>					          	
					          	<li><a href="logoutController"><img src="../Image/logout.png" style="width: 20px; height: 20px;">Đăng xuất</a></li>
					        </ul>					        
				     	</li>				     
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >CHỈNH SỬA ĐỀ THI</p>			     					      	
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
			<p style="text-align: center;font-size: 12px"><strong>XIN CHÀO ${fullNameSession } !</strong> </p>
	 		<hr width="90%" align="left" />			
	 		<div style="border: 0.1px solid #CEA97C;  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.2), 0 2px 5px 0 rgba(0, 0, 0, 0.19);">
	 			<p style="padding: 10px; margin: 0"><img src="Image/introduction.png" style="width: 20px; height: 20px; margin-right: 3px"><a href="#"> Giới thiệu chung</a> </p>
	 			<hr style="width: 100%; color: #CEA97C; margin:0">
	 			<p style="padding: 10px; margin: 0"><img src="Image/annount.png" style="height: 20px;width: 20px; margin-right: 3px"><a href="#"> Thông báo PĐT</a> </p>	 
	 		</div>		 				 	 	
	 	</div>
	    <div class="col-sm-10" style="height: 400px">    	 
	    	<p style="text-align: center;"><strong><span class="glyphicon glyphicon-pencil" style="margin-right: 5px"></span>CHỈNH SỬA ĐỀ THI</strong></p>
	 		<hr width="90%" align="left" />	
	 		<form class="form" action="updateController" method="post">
	 			<div class="row">
	 				<div class="col-sm-6">
	 					 <label class="control-label col-sm-5" for="IDExam" style="margin-top: 5px" >Tên đề thi:</label>
					      <div class="col-sm-7">
					            <input name="testName" class="form-control" type="text" id="IDExam" style="margin-bottom: 20px" required="required" value="${mapTest.get(testID).getTestName() }"/>
					      </div>					      
					      <label class="control-label col-sm-5" for="Number" style="margin-top: 5px">Số câu:</label>
					      <div class="col-sm-7">
					            <input class="form-control" id="Number" style="margin-bottom: 20px" required="required" disabled="disabled" value="${mapTest.get(testID).getQuestionNumber() }"/>						      
					      </div>
					      <label class="control-label col-sm-5" for="Day" style="margin-top: 5px">Ngày ra:</label>
					      <div class="col-sm-7">
					            <input name="dateCreate" class="form-control" id="Day" style="margin-bottom: 20px" disabled="disabled" value="${mapTest.get(testID).getDateCreate() }"/>							       
					      </div>
					      <label class="control-label col-sm-3" for="Time" style="margin-top: 5px">Thời gian:</label>
					      <div class="col-sm-9">
					            <div class="form-group">					            	
									<div class="col-sm-4"><input class="form-control" type="number" name="hour" min="0" max="24" step="1" required="required" placeholder="giờ..." value="${hour}"/></div>
									<div class="col-sm-4"><input class="form-control" type="number" name="minute" min="0" max="60" step="30" required="required" placeholder="phút..." value="${minute }"/></div>
									<div class="col-sm-4"><input class="form-control" type="number" name="ticking" min="0" max="60" step="0" required="required" placeholder="giây..." value="${ticking }"/></div>
					            </div>						       
					      </div>
					      
	 				</div>
	 				<div class="col-sm-6"> 
	 					<label class="control-label col-sm-3" for="Subject" style="margin-top: 5px">Môn học:</label>
					     	<div class="col-sm-7">
					            <select class="form-control" id="subjectChose" name="subjectID" style="margin-bottom: 20px">
						        	<c:forEach var="subject" items="${requestScope.listSubject }">
								        <option value="${subject.getSubjectID() }">${subject.getSubjectName() }</option>	
								    </c:forEach>						        
								</select>
					      </div>
					      <label class="control-label col-sm-3" for="Subject" style="margin-top: 5px" >Chủ đề:</label>
					      <div class="col-sm-7" >
					      		<select class="form-control" id="themeChose" >	
					    									            
								</select>
					      </div>
					      <div class="row" id="addContent">
					      </div>
					      <label class="control-label col-sm-3" style="margin-top: 5px" ></label>
					      <div class="col-sm-7" style="margin-top: 20px">
					      		<input id="btnAddContent" type="button" class="btn btn-default btn-sm" name="addAnwer" value=" Thêm nhóm câu hỏi " style="font-size: 15px ;color: #090808; background-color: #D2C092; margin-bottom: 20px" required="required" />
					      </div>	
					      <label class="control-label col-sm-3" style="margin-top: 5px" ></label>
					      <div class="col-sm-7" >
								Tổng số câu hỏi: <label id="lb">0</label>								      					   
					    </div>	
					
	 				</div> 					 				
	 			</div>
	 			<div class="row">
	 				<div class=" col-sm-8"></div>		 								   						    					    					    				    					  
					<div class=" col-sm-4">
					     <button id="done" type="submit" class="btn btn-default" style="color: green; background-color: white" name="command" value="updateExam">Lưu thay đổi</button>
					     <button class="btn btn-default" style=" background-color: white"><a href="examManager" style="color: red; text-decoration: none">Hủy</a></button>
					 </div>
				</div>	
				<input name="testID" value="${testID }" style="display: none"/>			
	 		</form>	 		
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
	/*======================== add sum Question ===================  */
	
	/*==========================================================  */
	
	
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
	
$("#done").click(function(){
		
		var countLast="<input name='countLast' value='"+i+"' type='hidden'/>";
		var countLast1="<input name='countLast1' value='"+j+"' type='hidden'/>";
		$("#addContent").append(countLast+countLast1);
		
	});
	function deleteGroupQuestion(id){
		$("#delete"+id).remove();
		sc();
		j--;
	}
	/*------------------------------------------*/
	
	if(${not empty param.statusUpdate}){
		if(${param.statusUpdate==true}){
			alert("đã sửa thành công!!!");
			window.location.href = 'updateController?command=updateExam&testID=${param.testID}'; 
		}
		else{
			alert("sorry :) thất bại rồi !!!")
			window.location.href = 'updateController?command=updateExam&testID=${param.testID}'; 
		}
	}	
	</script>
</body>
</html>