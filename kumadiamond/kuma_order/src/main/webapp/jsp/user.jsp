	<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Basic Tree - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="../jquery-easyui-1.5.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jquery-easyui-1.5.1/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../jquery-easyui-1.5.1/demo.css">
    <script type="text/javascript" src="../jquery-easyui-1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="../jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
    <h2>Basic Tree</h2>
    <p>Click the arrow on the left to expand or collapse nodes.</p>
    <div style="margin:20px 0;"></div>
    <div class="easyui-panel" style="padding:5px">
  <title>无标题文档</title>
<style>
#main {
	width: 980px;
	height: auto !important;
	margin: auto;
	margin-top: 0px;
}

#left {
	width: 100px;
	float: left;
	border: #CCCCCC 1px solid;
	height: 300px;
	padding-top: 40px;
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


</script>
</head>
<body>
	<div id="main">

		<!--左侧栏目-->
		<div id="left">
		<table>
			<ul >
				<li id="z1" onclick="testdata('栏目一的内容')">用户</li>
				<li id="z2" onclick="testdata('栏目二的内容')">订单</li>
			</ul>
			</table>
		</div>
		<!--右侧内容-->
		<div id="right" >123123213 </div>
	</div>
</body>     
 
</body>
</html>