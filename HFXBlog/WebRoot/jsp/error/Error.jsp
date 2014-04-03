<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Error</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/backgroud/batman.css">
	
	<script text="text/javascript" src="js/jquery-2.1.0.min.js"></script>
	<script text="text/javascript" src="js/bootstrap.min.js"></script>
	<script text="text/javascript" src="js/backgroud/batman.js"></script>

  </head>
  
  <body>
    <jsp:include page="/views/header.jsp"/>
    
    
    <body>
<div id="animate">
    <ol>
    <li class="run time">
        <div class="stage">
            <div id="head-1"></div>
            <div id="head-2"></div>
            <div id="headear"></div>
            <div id="headear-radius"></div>
            <div id="white-square"></div>
            <div id="face-left"></div>
            <div id="face-right"></div>
            <div id="face"></div>
            <div id="brow-right"></div>
            <div id="eye-left"></div>
            <div id="eye-right"></div>
            <div id="brow-left"></div>
            <div id="back_mouse"></div>
            <div id="circle1"></div>
            <div id="circle2"></div>
            <div id="circle3"></div>
            <div id="circle4"></div>
            <div id="ear"></div>
            <div id="ear-square"></div>
        </div>
    </li>
    </ol>
</div>

			<div style="text-align:center;clear:both">
				<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
				<script src="/follow.js" type="text/javascript"></script>
				<h1>Error Page 404</h1>
			</div>
	</body>
    
    <br /><br /><br /><br />
    <jsp:include page="/views/footer.jsp"/>
  </body>
</html>
