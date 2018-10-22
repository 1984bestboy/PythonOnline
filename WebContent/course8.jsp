<%@page import="util.Page"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/site.css">
<script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<title>Python在线学习</title>

</head>
<body>
 <div class="col-sm-3">
				 <div>
					<ul class="list-group hotList" style="list-style-type:none">
						<li class="list-group-item">
						<h3>小节名称</h3>
							<p>Python单元素tuple的创建 </p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>包含 0 个元素的 tuple，也就是空tuple，直接用 ()表示单元素 tuple 要在元素后面多加一个逗号“,“</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>编写代码，创建一个包含0个元素的元组，一个包含一个元素a的元组</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>()<br>
								('a',)<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							t1 = () <br>
print t1<br>
t2=('a',)<br>
print t2<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>()既可以表示tuple，又可以作为括号表示运算时的优先级，结果 (1) 被Python解释器计算出结果 1，导致我们得到的不是tuple，而是整数 1。
正是因为用()定义单元素的tuple有歧义，所以 Python 规定，单元素 tuple 要多加一个逗号“,”，这样就避免了歧义Python在打印单元素tuple时，也自动添加了一个“,”，为了更明确地告诉你这是一个tuple。</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>t1 = ??<br>
print t1<br>
t2=??<br>
print t2<br></p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>