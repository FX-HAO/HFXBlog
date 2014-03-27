<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">HFXBLOG</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">首页</a></li>
				<li><a href="#about">网志</a></li>
				<li><a href="#contact">列表</a></li>
				<li class="dropdown">
        			<a href="#" class="dropdown-toggle" data-toggle="dropdown" >Dropdown <b class="caret"></b></a>
        			<ul class="dropdown-menu">
          				<li><a href="www.baidu.com">filterfile.py</a></li>
          				
        			</ul>
      			</li>
				<li class="dropdown">
    				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
        				关于 <b class="caret"></b>
    				</a>
    			<ul class="dropdown-menu">
    				<li><a href="#about">简历</a></li>
    				<li><a href="#about">logo</a></li>
    			</ul>
				</li>
				<li><a href="#contact">联系</a></li>
				<li><a href="#">图片展示</a></li>
			</ul>
			
			
			<ul class="nav navbar-nav navbar-right">
				<img src="icon/github.png" class=".wrap{position:relative;top:15px;}" />
				<div class="row">
  					<div class="col-lg-100">
    					<div class="input-group input-group-sm">
      						<span class="input-group-btn">
        						<button class="btn btn-primary" type="button">Go!</button>
      						</span>
      						<input type="text" class="form-control">
    					</div>
  					</div>
  				</div>
  			</ul>
		</div>
	</div>
</nav>

