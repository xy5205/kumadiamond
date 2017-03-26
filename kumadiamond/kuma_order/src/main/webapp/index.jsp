<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- 引入JQuery -->
  <script type="text/javascript" src="jquery-easyui-1.5.1/jquery.min.js"></script>
  <!-- 引入EasyUI -->
  <script type="text/javascript" src="jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
  <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
  <script type="text/javascript" src="jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
  
  <script type="text/javascript" src="js/login.js"></script>
  <!-- 引入EasyUI的样式文件-->
  <link rel="stylesheet" href="jquery-easyui-1.5.1/themes/default/easyui.css" type="text/css"/>
  <!-- 引入EasyUI的图标样式文件-->
  <link rel="stylesheet" href="jquery-easyui-1.5.1/themes/icon.css" type="text/css"/>

<title>首页</title>
</head>
<body>
	<div style="margin:20px 0;centor"></div>
	<div class="easyui-panel" title="New Topic" style="width:400px">
		<div style="padding:10px 60px 20px 60px">
	    <form id="ff" method="post">
	    	<table cellpadding="5">
	    		<tr>
	    			<td>账号:</td>
	    			<td><input class="easyui-textbox "  type="text"  id="t1" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>密码:</td>
	    			<td><input class="easyui-textbox" type="password" id="t3" data-options="required:true"></input></td>
	    		</tr>
	    	</table>
	    </form>
	    <div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" type="button" onclick="login()">登录</a>
	    </div>
	    </div>
	</div>
	
 	</body>
</html>
