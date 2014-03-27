<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <base href="<%=basePath%>">

	<div id="navbar">
		<tiles:insertAttribute name="header" /><br /><br /><br /><br />
	</div>
	
	<div id="body">
		<tiles:insertAttribute name="center" /><br />
	</div>
	
	<div id="bottom">
		<tiles:insertAttribute name="footer" /><br />
	</div>
    
	

