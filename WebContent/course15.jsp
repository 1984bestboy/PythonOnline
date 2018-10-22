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
							<p>访问set</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>由于set存储的是无序集合，所以我们没法通过索引来访问。
访问 set中的某个元素实际上就是判断一个元素是否在set中。
例如，存储了班里同学名字的set：<br>
>>> s = set(['Adam', 'Lisa', 'Bart', 'Paul'])<br>
我们可以用 in 操作符判断：<br>
Bart是该班的同学吗？<br>
>>> 'Bart' in s<br>
True<br>
Bill是该班的同学吗？<br>
>>> 'Bill' in s<br>
False<br>
bart是该班的同学吗？<br>
>>> 'bart' in s<br>
False<br>
看来大小写很重要，'Bart' 和 'bart'被认为是两个不同的元素。</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>由于上述set不能识别小写的名字，请改进set，使得 'adam' 和 'bart'都能返回True。</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>True<br>True</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
						s = set(['Adam', 'adam', 'Lisa', 'lisa', 'Bart', 'bart', 'Paul', 'paul'])<br>
						print 'adam' in s<br>
						print 'bart' in s<br>
						</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>在list中，需要把两个名字同时放进去</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>s =??)<br>
						print 'adam' in s<br>
						print 'bart' in s<br>
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>