<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>在线课堂后台管理</title>

<link
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/admin.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/font/iconfont.css">

<!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- 导航条 -->
	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container">
			<a href="#" class="navbar-brand"><span
				class="iconfont icon-chuanxiang "></span>在线课堂后台管理系统</a>
			<div class="log_info">
				<div class="col-md-8 col-md-offset-8">
					<i class="iconfont icon-denglu" style="font-size: 24px"></i>
					${user.username} <i class="iconfont icon-rili"
						style="font-size: 24px; margin-left: 60px"></i> ${date}
				</div>
				<a href="${pageContext.request.contextPath}/logout"
					class="pull-right"><i class="iconfont icon-tuichu"></i></a>
			</div>
		</div>
	</nav>
	<!-- 侧边栏 -->
	<div id="sidle_bar">
		<div class="sidlebar_title">
			<p>
				<span>导航模块 / </span> <span>Nav Module</span>
			</p>
		</div>
		<div class="sidlebar_content navbar-fixed-bottom">
			<a href="#collapse_system" data-toggle="collapse"><i
				style="font-size: 16px" class="iconfont icon-hao"></i>用户管理</a>
			<ul id="collapse_system" class="collapse collapse_all">
				<li><a href="" data-iframesrc="admin/user/1"> <i
						style="font-size: 16px" class="iconfont icon-jianhao"></i>普通用户管理
				</a></li>
				<li><a href="" data-iframesrc="admin/user/2"> <i
						style="font-size: 16px" class="iconfont icon-jianhao"></i>教师管理
				</a></li>
				<li><a href="" data-iframesrc="admin/user/3"> <i
						style="font-size: 16px" class="iconfont icon-jianhao"></i>管理员设置
				</a></li>

			</ul>
			<a href="#collapse_course" data-toggle="collapse"><i
				style="font-size: 16px" class="iconfont icon-hao"></i>课程管理</a>
			<ul id="collapse_course" class="collapse collapse_all">
				<li><a href="" data-iframesrc="admin/course"> <i
						style="font-size: 16px" class="iconfont icon-jianhao"></i>课程管理
				</a></li>
			</ul>
			<a href="#collapse_vedio" data-toggle="collapse"><i
				style="font-size: 16px" class="iconfont icon-hao"></i>视频管理</a>
			<ul id="collapse_vedio" class="collapse collapse_all">
				<li><a href="" data-iframesrc="admin/video"> <i
						style="font-size: 16px" class="iconfont icon-jianhao"></i>视频管理
				</a></li>
			</ul>
		</div>
	</div>
	<!-- 路径导航 -->
	<div id="path_nav">
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/admin">后台首页</a></li>
			<li>系统设置</li>
			<li class="active">欢迎</li>
		</ol>
	</div>
	<script
		src="${pageContext.request.contextPath}/static/lib/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/lib/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/static/js/admin.js"></script>
</body>
</html>
<iframe id="iframe-contant" class="navbar-fixed-bottom" frameborder="no"
	scrolling="auto" width="100%" height="100%" allowtransparency="true"
	src="${pageContext.request.contextPath}/admin/welcome"></iframe>