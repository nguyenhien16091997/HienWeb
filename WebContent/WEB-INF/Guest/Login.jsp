<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	
    <link href="index.css" rel="stylesheet" type="text/css"/>
 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link rel="shortcut icon" type="image/x-icon" href="Image/Elite Captain Black Shielded.ico" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style type="text/css">
body{
	background-image: url("Image/rose.jpg");
	background-color: whitesmoke;
        background-attachment: fixed;

} 
h1, input::-webkit-input-placeholder, button {
  font-family: 'roboto', sans-serif;
  transition: all 0.3s ease-in-out;
}
form {
  box-sizing: border-box;
  width: 350px;
  margin: 100px auto 100px;
  box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.2);
  padding-bottom: 40px;
  border-radius: 3px;
}
form h1 {
  box-sizing: border-box;
  padding: 20px;
}

.input {
  margin: 40px 25px;
  width: 300px;
  display: block;
  border: none;
  padding: 10px 0;
  border-bottom: solid 1px #755F3D;
  transition: all 0.3s cubic-bezier(0.64, 0.09, 0.08, 1);
  background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 96%, #755F3D 4%);
  background-position: -200px 0;
  background-size: 200px 100%;
  background-repeat: no-repeat;
  color: #DAB667;
}
.input:focus, input:valid {
  box-shadow: none;
  outline: none;
  background-position: 0 0;
}
.input:focus::-webkit-input-placeholder, input:valid::-webkit-input-placeholder {
  color: #755F3D;
  font-size: 11px;
  transform: translateY(-20px);
  visibility: visible !important;
}

button {
margin-top: 20px;
  border: none;
  background: #5B4F34;
  cursor: pointer;
  border-radius: 3px;
  padding: 6px;
  width: 200px;
  color: #DAB667;
  margin-left: 70px;
  box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.2);
}
button:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 6px 0 rgba(0, 0, 0, 0.2);
}

/*Thats all. I hope you enjoyed it.
Thanks :)*/
/***************************************************************/
/*************** Footer Bar Style ******************************/
/***************************************************************/
.footer-bar
{
    display: block;
    width: 100%;
    height: 45px;
    line-height: 45px;
    background: #755F3D;
    border-top: 1px solid #755F3D;
    position: fixed;
    bottom: 0;
    left: 0;
}
.footer-bar .article-wrapper{
    font-family: arial, sans-serif;
    font-size: 14px;
    color: #755F3D;
    float: left;
    margin-left: 10%;
}
.footer-bar .article-link a, .footer-bar .article-link a:visited{
    text-decoration: none;
    color: #755F3D;
}
.site-link a, .site-link a:visited{
    color: #755F3D;
    font-size: 14px;
    font-family: arial, sans-serif;
    float: right;
    margin-right: 10%;
    text-decoration: none;
}
.site-link a:hover{
    color: #755F3D;
    
}
label{
	color: #DAB667 
}
table{
	width: 200px;
}

  </style>

</head>
<body>

<form action="loginController" method="post" >
	  <input class="input" placeholder="Tài khoản" type="text" required="required" name="userName" value="${param.userName }">
	  <input class="input" placeholder="Mật khẩu" type="password" required="required" name="password" value="${param.password }">
	 
	  <c:forEach var="role" items="${requestScope.INFO}">
	  <div class="row">
	  <div class="col-sm-2"></div>
	 	<div class="col-sm-1">
	 		<input  type="radio" name="roleName" value="${role.getRoleID() }">
	 	</div>
	 	<div class="col-sm-9">
	 		<label><c:out value="${role.getRoleName()}" /></label>
	 	</div>
	 	 </div>
	 	</c:forEach>
	
	 
  <button type="submit">Đăng nhập</button>
</form>

<script type="text/javascript">
if( ${not empty param.error}){
	if(${param.error=="role"}){
 		alert("Vui lòng chọn role!");
 		window.location.href='loginController?userName=${param.userName}&password=${param.password}';
	}
	else if(${param.error=="wrongUserName"}){
		alert("Sai userName ! vui lòng nhập lại :)");
 		window.location.href='loginController?userName=${param.userName}&password=${param.password}';
	}
	else if(${param.error=="wrongPassword"}){
		alert("Sai password ! vui lòng nhập lại :)");
 		window.location.href='loginController?userName=${param.userName}&password=${param.password}';
	}
	else if(${param.error=="wrongRole"}){
		alert("Chọn sai role ! vui lòng chọn lại :)");
 		window.location.href='loginController?userName=${param.userName}&password=${param.password}';
	}
}	

if( ${not empty param.statusSession==true}){
	alert("Thời hạn làm việc đã hết vui lòng nhập lại !!!");
	window.location.href='loginController';
}

</script>
</body>
</html>