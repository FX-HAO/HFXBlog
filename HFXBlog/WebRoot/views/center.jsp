<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<div class="jumbotron" id="center">
		<div class="container">
       		<h1>欢迎来到HFXBlog.com</h1>
        	<p>welcome to HFXBlog.com</p>
		</div>
	</div>
	
	<div class="container" id="container">
		
		<c:if test="${ requestScope.page!=null }" var="ifpage">
			
		</c:if>
		
		
		<c:forEach var="page" items="${ requestScope.page } ">
			
		</c:forEach>
		
	</div>