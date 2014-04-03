<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>register</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
	<script text="text/javascript" src="js/jquery-2.1.0.min.js"></script>
	<script text="text/javascript" src="js/bootstrap.min.js"></script>
	<script text="text/javascript" src="js/validation/validate.js" charset="gb2312"></script>
	<script text="text/javascript" src="js/main/main.js"></script>

  </head>
  
  <body>
    <jsp:include page="/views/header.jsp"/>
    
    <div class="container">
    	<form class="form-signin" role="form" action="admin/addAdminAction.action" method="POST">
        	<h2 class="form-signin-heading">Registion</h2>
        	<label for="exampleInputPassword1">Nickname</label>
        	<input id="nickname" name="admin.nickname" type="text" class="form-control" placeholder="Nickname" required autofocus>
        	<label for="exampleInputPassword1">Username</label>
        	<input id="adminname" name="admin.adminname" type="text" class="form-control" placeholder="Username" required autofocus>
        	<label for="exampleInputPassword1">Password</label>
        	<input id="password" name="admin.password" type="password" class="form-control" placeholder="Password" required>
        	<label for="exampleInputPassword2">Confirm Password</label>
        	<input id="confirmPassword" name="confirmPassword" type="password" class="form-control" placeholder="Confirm Password" required>
        	<label for="exampleInputEmail1">Email address</label>
        	<input id="email" name="admin.email" type="text" class="form-control" placeholder="Email" required>
        	<div class="alert alert-danger"></div>
        	<button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
      	</form>
    </div>
    
    <jsp:include page="/views/footer.jsp"/>
  </body>
</html>
