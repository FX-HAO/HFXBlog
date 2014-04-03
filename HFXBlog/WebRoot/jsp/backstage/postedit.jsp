<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>文章列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/component/RichText/index.css">
	
	<link rel="stylesheet" type="text/css" href="css/component/RichText/bootstrap-responsive.min.css">
	<!--  <link href="css/component/RichText/font-awesome.css" rel="stylesheet"> -->
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
	
	<script text="text/javascript" src="js/jquery-2.1.0.min.js"></script>
	<script text="text/javascript" src="js/bootstrap.min.js"></script>
	<script text="text/javascript" src="js/main/main.js"></script>
	<script text="text/javascript" src="js/component/RichText/jquery.hotkeys.js"></script>
	<script text="text/javascript" src="js/component/RichText/bootstrap-wysiwyg.js"></script>
	<script text="text/javascript" src="js/backstage/post.js" charset="gb2312"></script>

  </head>
  
  <body>
    <jsp:include page="/views/loggedheader.jsp"/>
	<br /><br />
    <div class="container" id="container">
		<ul class="nav nav-pills nav-justified">
  			<li class="active"><a href="#">写新文章</a></li>
  			<li><a href="#">管理文章</a></li>
  			<li><a href="#">类别管理</a></li>
  			<li><a href="#">评论管理</a></li>
  			<li><a href="#">回收站</a></li>
		</ul>
    </div>
    <br /><br /><br /><br />
    
    
    
    
    <div class="container" id="container">
  	<div class="hero-unit">
	<h1>撰写文章 <br/></h1>
	<hr/>
	<div id="alerts"></div>
	
	<strong><small>文章标题</small></strong><br />
	<div class="controls form-inline">
	<select class="form-control inline" style="width:80px;" id="category">
  		<option>原创</option>
  		<option>转载</option>
  		<option>翻译</option>
	</select>
   	 <input id="title" type="text" class="form-control inline" placeholder="标题" style="width:800px;">
   	 </div>
	
    <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
      <div class="btn-group">
        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
          <ul class="dropdown-menu">
          </ul>
        </div>
      <div class="btn-group">
        <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
          <ul class="dropdown-menu">
          <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
          <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
          <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
          </ul>
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
        <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
        <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
        <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
        <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
        <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
        <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
        <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
        <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
        <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
      </div>
      <div class="btn-group">
		  <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>
		    <div class="dropdown-menu input-append">
			    <input class="span2" placeholder="URL" type="text" data-edit="createLink"/>
			    <button class="btn" type="button">Add</button>
        </div>
        <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>
      </div>
      
      <div class="btn-group">
        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>
        <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
      </div>
      <div class="btn-group">
        <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
        <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
      </div>
      <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="">
    </div>

    <div id="editor">
      
    </div>
  	</div>
  	<form role="form" action="backstage/addArticleAction.action" method="POST" onsubmit="return Post();">
  		<input type="hidden" name="article.category" />
  		<input type="hidden" name="article.title" />
  		<input type="hidden" name="article.author" value="${sessionScope.admin.nickname}" />
  		<input type="hidden" name="article.content" />
    	<strong><small>文章标签（添加Tag，你的内容能被更多人看到）</small></strong>
    	<input name="article.tag" type="text" class="form-control inline" placeholder="tag之间用,分隔">
    	<strong><small>个人分类</small></strong>
    	<input name="article.sort" type="text" class="form-control inline" placeholder="多个分类之间用,分隔">
    	<button type="submit" class="btn btn-primary btn-lg btn-block">发表文章</button>
    </form>
    
    
    
    <br /><br /><br /><br />
    <jsp:include page="/views/footer.jsp"/>
  </body>
</html>
