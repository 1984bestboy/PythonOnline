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
							<p>Python访问list的基本方式 </p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>使用下标索引来访问列表中的值，同样你也可以使用方括号的形式截取字符</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>编写程序，访问list1中physics和list2中2,3,4,5</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>list1[0]:  physics<br>
								list2[1:5]:  [2, 3, 4, 5]<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							# -*- coding: UTF-8 -*-<br>
list1 = ['physics', 'chemistry', 1997, 2000];<br>
list2 = [1, 2, 3, 4, 5,6,7 ];<br>
list3 = ["a", "b", "c", "d"];<br>
print "list1[0]: ", list1[0]<br>
print "list2[1:5]: ", list2[1:5]<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>
							序列中的每个元素都分配一个数字 - 它的位置，或索引，第一个索引是0，第二个索引是1，依此类推。
例如：1997可以用list1[1]来表示，[b,c]可以用list3[1:2]表示
							</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>
							# -*- coding: UTF-8 -*-<br>
list1 = ['physics', 'chemistry', 1997, 2000];<br>
list2 = [1, 2, 3, 4, 5,6,7 ];<br>
list3 = ["a", "b", "c", "d"];<br>
print "list1[0]: ", ??<br>
print "list2[1:5]: ", ??<br>
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>