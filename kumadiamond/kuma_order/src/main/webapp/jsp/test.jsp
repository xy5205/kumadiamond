<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- 引入JQuery -->
  <script type="text/javascript" src="../jquery-easyui-1.5.1/jquery.min.js"></script>
  <!-- 引入EasyUI -->
  <script type="text/javascript" src="../jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
  <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
  <script type="text/javascript" src="../jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
  <!-- 引入EasyUI的样式文件-->
  <link rel="stylesheet" href="../jquery-easyui-1.5.1/themes/default/easyui.css" type="text/css"/>
  <!-- 引入EasyUI的图标样式文件-->
  <link rel="stylesheet" href="../jquery-easyui-1.5.1/themes/icon.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style>
#main {
	width: 980px;
	height: auto !important;
	overflow: hidden;
	visibility: visible;
	margin: auto;
	margin-top: 0px;
}

#left {
	width: 378px;
	float: left;
	border: #CCCCCC 1px solid;
}

#right {
	width: 598px;
	float: left;
	border: #CCCCCC 1px solid;
	height: 300px;
	padding-top: 40px;
}
</style>
<script>
	function testdata(obj) {
		document.getElementById('right').innerHTML = obj;
	}
	
    function login(){  
        var form = document.forms[0];  
        form.action = "<%=basePath%>userController/login"; 
		form.method = "post";
		form.submit();
	}
</script>
</head>
<body>
	<div id="main">

		<!--左侧栏目-->
		<div id="left">
		<table>
			<ol>
				<li onclick="testdata('栏目一的内容')">用户</li>
				<li onclick="testdata('栏目二的内容')">订单</li>
			</ol>
			</table>
		</div>
		<!--右侧内容-->
		<div id="right" value="login()"> <a href="<%=basePath%>userController/getAllUser">进入用户管理页</a>这里将显示左侧栏目的内容</div>
	</div>
</body>
</html>