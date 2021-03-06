<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
	<link rel="stylesheet" type="text/css" href="css/style-header-link-icon.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
	<script text="text/javascript" src="js/jquery-2.1.0.min.js"></script>
	<script text="text/javascript" src="js/bootstrap.min.js"></script>

  </head>
  
  <body>
    <jsp:include page="/views/header.jsp"/>
    
    <div class="container">
    	<form class="form-signin" role="form">
        	<h2 class="form-signin-heading">Registion</h2>
        	<input type="text" class="form-control" placeholder="Username" required autofocus>
        	<input type="text" class="form-control" placeholder="Email" required>
        	<input type="password" class="form-control" placeholder="Password" required>
        	<input type="password" class="form-control" placeholder="Confirm Password" required>
        	<div class="alert alert-danger"></div>
        	<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      	</form>
    </div>
    
    <jsp:include page="/views/footer.jsp"/>
  </body>
</html>
