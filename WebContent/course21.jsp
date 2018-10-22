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
							<p>迭代</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>
							在Python中，如果给定一个list或tuple，我们可以通过for循环来遍历这个list或tuple，这种遍历我们成为迭代（Iteration）。集合是指包含一组元素的数据结构，我们已经介绍的包括：<br>
1. 有序集合：list，tuple，str和unicode；<br>
2. 无序集合：set<br>
3. 无序集合并且具有 key-value 对：dict<br>
而迭代是一个动词，它指的是一种操作，在Python中，就是 for 循环。迭代与按下标访问数组最大的不同是，后者是一种具体的迭代实现方式，而前者只关心迭代结果，根本不关心迭代内部是如何实现的。
							</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>请用for循环迭代数列 1-100 并打印出7的倍数。</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>
7<br>
14<br>
21<br>
28<br>
35<br>
42<br>
49<br>
56<br>
63<br>
70<br>
77<br>
84<br>
91<br>
98<br>						
							</p>
							</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							for i in range(1, 101):<br>
    						if i % 7 == 0:<br>
        					print i<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>用range(1, 101)可以创建数组。</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>for i in range(??):<br>
    						if i % 7 == 0:<br>
        					print i<br></p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>