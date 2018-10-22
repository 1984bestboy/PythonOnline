<%@page import="util.Page"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap-datetimepicker\css\codemirror.css" rel="stylesheet">
<script type="text/javascript" src="bootstrap-datetimepicker\js\codemirror.js"></script>

<!-- 主题 -->
<link href="bootstrap-datetimepicker\css\liquibyte.css" rel="stylesheet">

<!-- mode -->
<script type="text/javascript" src="bootstrap-datetimepicker\js\clike.js"></script>

<!-- 编辑 -->
<script type="text/javascript" src="bootstrap-datetimepicker\js\python.js"></script>

<!-- hint -->
<script type="text/javascript" src="bootstrap-datetimepicker\js\javascript-hint.js"></script>
<script type="text/javascript" src="bootstrap-datetimepicker\js\show-hint.js"></script>
<link href="bootstrap-datetimepicker\css\show-hint.css" rel="stylesheet">

<link href="bootstrap-3.3.7-dist\css\bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="jquery\jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist\js\bootstrap.min.js"></script>

<title>Python在线学习</title>
<style>
     .CodeMirror{border:1px solid gray;font-size:16px;width:500px;height:450px}
</style>
<script>
var editor = null;
function loadfile(){
	var fileName = $('#file-selector').val();
	$.get("/load-file?file-name=" + fileName, function(data) {
		$('#lispcode').empty();
		$('#lispcode').text(data);
		$('.CodeMirror').remove();
		editor = CodeMirror.fromTextArea(document.getElementById("lispcode"), {lineNumbers: true});
	});
}
</script>
<form>
	<select id="file-selector" onchange="loadfile()">
		<option>1</option>
		<option>2</option>
	</select>
	<textarea id="lispcode">xxx</textarea>
</form>
<script>editor = CodeMirror.fromTextArea(document.getElementById("lispcode"), {lineNumbers: true}); </script>  //写在textarea之后，加载textarea内容
</head>
<body>

</body>
</html>