<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="jumbotron">
	<div class="jumbotron" id="center">
		<div class="container">
       		<h1>欢迎来到HFXBlog.com</h1>
        	<p>welcome to HFXBlog.com</p>
		</div>
	</div>
	</div>
	
	<div class="container" id="container">
		<c:if test="${ requestScope.articles!=null }">
			<c:forEach var="article" items="${ requestScope.articles }">
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
			</c:forEach>
			
			<c:choose>
				<c:when test="${ requestScope.page<10 && requestScope.nums==10 }">
					<ul class="pager">
  						<li class="next"><a href="reader/indexAction.action?page=${ page+10 }">Next Page &rarr;</a></li>
					</ul>
				</c:when>
				<c:when test="${ requestScope.page>=10 && requestScope.nums==10 }">
					<ul class="pager">
  						<li class="previous"><a href="reader/indexAction.action?page=${ page-10 }">&larr; Previous Page</a></li>
  						<li class="next"><a href="reader/indexAction.action?page=${ page+10 }">Next Page &rarr;</a></li>
					</ul>
				</c:when>
				<c:when test="${ requestScope.nums<10 }">
					<ul class="pager">
  						<li class="previous"><a href="reader/indexAction.action?page=${ page-10 }">&larr; Previous Page</a></li>
					</ul>
				</c:when>
			</c:choose>
		</c:if>
	</div>