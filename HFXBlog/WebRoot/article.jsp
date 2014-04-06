<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${ requestScope.article.title }</title>
    
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
  
    <div class="container" id="container">
		<c:if test="${ requestScope.article!=null }">
			<c:set var="article" value="${ requestScope.article }" />
			<div class="row">
				
				<div class="col-md-2">
					<div id="main" class="postlist" role="main">
						<article class="post hentry clearfix" data-post-id="blog/cataclysm-problem">

    						<aside class="entry-meta">
    							<div class="row">
								<time class="post-date" datetime="2014-03-29T04:40:27.714Z">
    								<span class="post-month">三月</span>
									<strong class="post-day">29</strong>
									<span class="post-year">2014</span>
								</time>
								</div>
								<div class="row">&nbsp;<strong>作者:${ article.author }</strong></div>
    							<div class="row">&nbsp;<strong>閱讀:${ article.readership }</strong></div>
							</aside>
						</article>
					</div>
				</div>
			
				<div class="col-md-10">
					<h2 style="color:blue;"><a href="reader/articleAction.action?title=${ article.title }"><c:out value="${ article.title }" /></a></h2>
					<p><c:out value="${ article.content }" escapeXml="false" /></p>
				</div>
			</div>
			<hr/>
		</c:if>
	</div>
	
	<jsp:include page="/views/footer.jsp"/>
  </body>
</html>
