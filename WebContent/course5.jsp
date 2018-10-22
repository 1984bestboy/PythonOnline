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
							<p>Python中的list创建  </p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>序列是Python中最基本的数据结构。序列中的每个元素都分配一个数字 - 它的位置，或索引，第一个索引是0，第二个索引是1，依此类推。
Python有6个序列的内置类型，但最常见的是列表和元组。
序列都可以进行的操作包括索引，切片，加，乘，检查成员。
此外，Python已经内置确定序列的长度以及确定最大和最小的元素的方法。
列表是最常用的Python数据类型，它可以作为一个方括号内的逗号分隔值出现。
							</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>编写程序，将physics，chemistry，1997,2000放入列表1中；将1，2,3,4,5,6,7放入列表2中，将a,b,c,d放入列表3中</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>无</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							list1 = ['physics', 'chemistry', 1997, 2000];<br>
							list2 = [1,2,3,4,5,6,7 ];<br>
							list3 = ["a", "b", "c", "d"];
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>
							列表的数据项不需要具有相同的类型，
创建一个列表，只要把逗号分隔的不同的数据项使用方括号括起来即可。
							</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>
							list1 = ??<br>
list2 = [1,2,3,4,5,6,7 ]<br>
list3 = ["a", "b", "c", "d"]
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>