<%@ page language="java" import="java.util.*,it.sauronsoftware.base64.Base64,com.HFXBlog.main.model.Article;" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div class="jumbotron" style="background-image:url('picture/welcome.jpg');width:1400px; height:300px;overflow:hidden;">
	<div class="jumbotron" id="center" style="filter:alpha(opacity=50);-moz-opacity:0.5;-khtml-opacity: 0.5;  opacity: 0.5;">
		<div class="container">
       		<h1>Surely I Am Joking</h1>
        	<p>welcome to HFXBlog.com</p>
		</div>
	</div>
	</div>

	
	<div class="container" id="container">
		<div class="row">
		<div class="col-lg-10">
		<c:if test="${ requestScope.articles!=null }">
			<c:forEach var="article" items="${ requestScope.articles }">
			<div class="row">
				
				<div class="col-lg-2">
					<div id="main" class="postlist" role="main">
						<article class="post hentry clearfix" data-post-id="blog/cataclysm-problem">

    						<aside class="entry-meta">
    							<div class="row">
								<time class="post-date" datetime="${ article.date }">
    								<span class="post-month"><fmt:formatDate value="${article.date}" type="both" pattern="MMMM"/></span>
									<strong class="post-day"><fmt:formatDate value="${article.date}" type="both" pattern="d"/></strong>
									<span class="post-year"><fmt:formatDate value="${article.date}" type="both" pattern="yyyy"/></span>
								</time>
								</div>
								<div class="row">&nbsp;<strong>作者:${ article.author }</strong></div>
    							<div class="row">&nbsp;<strong>閱讀:${ article.readership }</strong></div>
    							<div class="row">&nbsp;<strong>${ article.category }</strong></div>
    							<c:forTokens items="${ article.tag }" delims=",，" var="tag">
    								<div class="row">&nbsp;${ tag }</div>
    							</c:forTokens>
							</aside>
						</article>
					</div>
				</div>
			
				<div class="col-xs-10">
					<% String titleURL=((Article)(pageContext.getAttribute("article"))).getTitle(); 
						String encrypt=Base64.encode(titleURL); %>
					<h2 style="color:blue;"><a href='reader/articleAction.action?title=<%= encrypt %>'><c:out value="${ article.title }" /></a></h2>
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
		
		<div class="sidebarBox col-md-2">
			<h4>最熱門</h4>
			<ul>
			<c:forEach var="hotArticle" items="${ requestScope.hotests }">	
				<li>
				<% String titleURL=((Article)(pageContext.getAttribute("hotArticle"))).getTitle(); 
						String encrypt=Base64.encode(titleURL); %>
				<a href='reader/articleAction.action?title=<%= encrypt %>'><c:out value="${ hotArticle.title }" /></a>
				- <p>${ hotArticle.readership }</p>
				</li>
			</c:forEach>
			</ul>
		</div>
		
		</div>
	</div>
