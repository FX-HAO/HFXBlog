<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>admin login</title>
    
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
	<script text="text/javascript" src="js/main/main.js"></script>

  </head>
  
  <body>
  	
    <jsp:include page="/views/header.jsp"/>
    <br />
    <div class="container">
    	
    	<form class="form-signin" role="form" method="POST" action="admin/loginAction.action">
        	<h2 class="form-signin-heading">HFXBlog</h2>
        	<input name="admin.adminname" type="text" class="form-control" placeholder="Username" required autofocus>
        	<input name="admin.password" type="password" class="form-control" placeholder="Password" required>
        	<a href="mailto:#">忘记密码?</a><br />
        	<a href="jsp/admin/register.jsp">用户注册</a>
        	<strong style="color:red;"><s:actionerror /></strong>
        	<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      	</form>
      </div>
    
    <jsp:include page="/views/footer.jsp"/>
    
    
  </body>
</html>
