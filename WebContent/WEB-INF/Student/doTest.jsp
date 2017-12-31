<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>	
  <title>Làm bài thi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css"  href="properties/Properties.css"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
					          	<li><a href="studentSevlet?command=listExamination"><img src="../Image/logout.png" style="width: 20px; height: 20px;">Thoát</a></li>
					        </ul>					        
				     	</li>
				     	 <p class="navbar-text visible-lg" style="color: #C16D0D" >CHÚC THI TỐT !!!</p>			     					      	
				   	 </div>
					</div>
				    <div class="col-sm-6 visible-lg">				    					
				    	<ul class="nav navbar-nav navbar-right">
					      	<li><a href="#"><span class="glyphicon glyphicon-user"></span> liên hệ </a></li>
					      	<li><a href="studentSevlet?command=listExamination"><span class="glyphicon glyphicon-log-out"></span> Thoát</a></li>
				    	</ul>
				    </div>
				 </div>			
			</nav>
		</div>
	</div>
	<div class="container" id="BlockBody">	
		<div class="col-sm-3 " > 
			<p style="text-align: center;"><strong>Xin chào ${fullNameSession }!</strong> </p>
			<hr width="90%" align="left" />
			<div class="row" style="margin-bottom: 10px">	
			<div class="col-sm-7">
				 <div>
		            <span id="h">Giờ</span> :
		            <span id="m">Phút</span> :
		            <span id="s">Giây</span> 
		        </div>				
			</div>
			<div class="col-sm-5">	
		            <div style="display: none">
		            <input type="text" id="h_val" placeholder="Giờ" value="${hour }"/> <br/>
		            <input type="text" id="m_val" placeholder="Phút" value="${minute }"/> <br/>
		            <input type="text" id="s_val" placeholder="Giây" value="${ticking }"/>
		            <input type="button" value="Start" onclick="start()"/>
		            <input type="button" value="Stop" onclick="stop()"/>  <br/> <br/>
		            </div>            	        
				
			</div>				
			 </div>
	 		<hr width="90%" align="left" />	
	 		<c:set var="count1" value="0"></c:set>
	 		<c:forEach var="testQuestion" items="${requestScope.getListTestQuestionFollowTestID }">	
	 			<c:set var="count1" value="${count1+1 }"></c:set>
	 			<button id="btn${count1 }" style="margin-top: 5px; color: green" class="btn btn-default" onclick="showQuestion(${count1 })">Câu ${count1 }</button>
	 		</c:forEach>		           
		</div>    	
	    <div class="col-sm-9" >     	
	    	<div class="row">	
	    		<div class="row">
	    			<div class="col-sm-3"> 	    					
	    					
	    			</div>
	    			<div class="col-sm-6">
	    			  		
				 <p style="text-align: center; color: #8A836A"><strong>CHI TIẾT NỘI DUNG CÂU HỎI CỦA ĐỀ THI: <strong style="color: #A98A1B">GT_1</strong></p>
						</div>
			 		<hr width="90%" align="left" />	
			 		<div style="overflow: auto;width: 100%; height: 400px">
			 			<form action="studentSevlet" method="post">	 
			 			<button id="submit1" onclick="submit()" type="submit" style="color: red; margin-bottom: 20px" class="btn btn-default" >Nộp bài</button>
			 			<c:set var="count" value="0"></c:set>
			 			<c:forEach var="testQuestion" items="${requestScope.getListTestQuestionFollowTestID }">	
			 			<c:set var="count" value="${count+1 }"></c:set>  
			 				<div id="hideQuestion${count }" style="display: none">			
			 											
			 				<label class="label"><strong>Câu ${count }. ${mapQuestion.get(testQuestion.getQuestionID()).getContent() }</strong></label><br>
			 				<div class="input ">	 	
			 					<c:forEach var="answer" items="${answerDAO.getListAnswerFollowQuestionID(testQuestion.getQuestionID()) }">
			 						<input class="check${count }" type="radio" name="check${count }" value="${answer.getAnswerID() }"/> ${answer.getAnswerContent() }<br>
			 					</c:forEach>				 						
			 				</div>
			 				</div>		
			 			</c:forEach>
			 			 
			 			<input name="testID" value="${testID }" style="display: none"/>
			 			<div id="result"></div>
			 			</form>			 				 			
			 	
			 		</div>
	    		</div> 
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
<script type="text/javascript">	
	var i=0;
	function showQuestion(id){
		$("#hideQuestion"+i).hide();
		$("#hideQuestion"+id).show();
		$("#btn"+id).css('background','#ECFADA');
		var k=$("input[name='check"+i+"']:checked").val();
		if(k==undefined){
			$("#btn"+i).css('background','white');
		}		
		i=id;
	}
	showQuestion(i+1);
	
	/*============================= coutDown===========================  */
	var h = null; // Giờ
    var m = null; // Phút
    var s = null; // Giây
 
    var timeout = null; // Timeout

    function stop(){
        clearTimeout(timeout);
    }
    function start(){
    /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
    if (h === null)
    {
        h = parseInt(document.getElementById('h_val').value);
        m = parseInt(document.getElementById('m_val').value);
        s = parseInt(document.getElementById('s_val').value);
    }
 
    /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
    // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
    //  - giảm số phút xuống 1 đơn vị
    //  - thiết lập số giây lại 59
    if (s === -1){
        m -= 1;
        s = 59;
    }
 
    // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
    //  - giảm số giờ xuống 1 đơn vị
    //  - thiết lập số phút lại 59
    if (m === -1){
        h -= 1;
        m = 59;
    }
 
    // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
    //  - Dừng chương trình
    if (h == -1){
        clearTimeout(timeout);
        alert('Hết giờ');
        $("#submit1").click();
        return false;
    }
 
    /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
    document.getElementById('h').innerText = h.toString();
    document.getElementById('m').innerText = m.toString();
    document.getElementById('s').innerText = s.toString();
 
    /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
    timeout = setTimeout(function(){
        s--;
        start();
    }, 1000);
}
    start();
    
   function submit(){
	   if(i!=0){
		   for(k=1;k<=i;k++){
	    		var checkedVal= $("input[name=check"+k+"]:checked").val();    		
	    		var ip="<input name='checked"+k+"' value='"+checkedVal+"' style='display :none'/>";
	    		$("#result").append(ip); 
	  		 }
		  	
    	}
    }
    
 
</script>
</body>
</html>