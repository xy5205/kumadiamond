/**
 * 
 */
function login() {
	var order = $("#t1").val();
	var pass = $("#t3").val();

	alert("Value: " + order + pass);
	$.ajax({
		// 提交数据的类型 POST GET
		type : "POST",
		// 提交的网址
		url : "userController/login",
		// 提交的数据
		data : {
			account : order,
			passWord : pass
		},
		// 返回数据的格式
		datatype : "json",// "xml", "html", "script", "json", "jsonp", "text".
		// 在请求之前调用的函数
		// beforeSend:function(){$("#msg").html("logining");},
		// 成功返回之后调用的函数

		success : function(data) {
			alert(11);
			// 利用http的重定向来跳转
			window.location.replace(data);
			// $("#msg").html(decodeURI(data));
		},
		// 调用执行后调用的函数
		complete : function(XMLHttpRequest, textStatus) {
			alert("111");

		},
		// 调用出错执行的函数
		error : function() {
			// 请求出错处理
		}
	});
}
