<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
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
        			<a href="#" class="dropdown-toggle" data-toggle="dropdown" >项目 <b class="caret"></b></a>
        			<ul class="dropdown-menu">
          				<li><a href="www.baidu.com">filterfile.py</a></li>
          				
        			</ul>
      			</li>
				<li class="dropdown">
    				<a class="dropdown-toggle" data-toggle="dropdown" href="#">
        				关于 <b class="caret"></b>
    				</a>
    			<ul class="dropdown-menu">
    				<li><a href="#about">resume</a></li>
    				<li><a href="#about">logo</a></li>
    			</ul>
				</li>
				<li><a href="#contact">联系</a></li>
				<li><a href="#">图片展示</a></li>
			</ul>
			
			
			<ul class="nav navbar-nav navbar-right">
				<div class="tooltip-demo">
					<a href="https://www.github.com/FX-HAO/"><img title="my project on Github" data-placement="bottom" data-toggle="tooltip" data-original-title="Tooltip on bottom" style="position:relative;top:5px;" src="icon/github.png"/></a>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<div>
  						<div>
    						<form class="navbar-form navbar-left" role="search">
    							<button class="btn btn-primary" type="submit">Go!</button>
      							<div class="form-group">
      								<input type="text" class="form-control" placeholder="Search">
      							</div>
    						</form>
  						</div>
  					</div>
				</ul>
  			</ul>
		</div>
	</div>
	
</div>
