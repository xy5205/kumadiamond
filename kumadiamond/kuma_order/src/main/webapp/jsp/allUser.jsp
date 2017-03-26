<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>用户列表</title>

<script type="text/javascript">  
    function del(id){  
        $.get("<%=basePath%>
	userController/delUser?id=" + id, function(data) {
			if ("success" == data.result) {
				alert("删除成功");
				window.location.reload();
			} else {
				alert("删除失败");
			}
		});
	}
</script>
</head>

<body>
	<h6>
		<a href="<%=basePath%>userController/toAddUser">添加用户</a>
	</h6>
	<table border="1">
		<tbody>
			<tr>
				<th>姓名</th>
				<th>年龄</th>
				<th>操作</th>
			</tr>
					<tr>
						<td>${userList[0].userName }</td>
						<td>${userList[0].age }</td>
						<td><a
							href="<%=basePath%>userController/getUser?id=${user.id}">编辑</a> <a
							href="javascript:del('${user.id }')">删除</a></td>
					</tr>
		</tbody>
	</table>
</body>
</html>
