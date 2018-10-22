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
							<p>介绍dict</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>我们已经知道，list 和 tuple 可以用来表示顺序集合，例如，班里同学的名字：
['Adam', 'Lisa', 'Bart']
或者考试的成绩列表：
[95, 85, 59]
但是，要根据名字找到对应的成绩，用两个 list 表示就不方便。
如果把名字和分数关联起来，组成类似的查找表：<br>
'Adam' ==> 95<br>
'Lisa' ==> 85<br>
'Bart' ==> 59<br>
给定一个名字，就可以直接查到分数。
Python的 dict 就是专门干这件事的。用 dict 表示“名字”-“成绩”的查找表如下：<br>
d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br>
我们把名字称为key，对应的成绩称为value，dict就是通过 key 来查找 value。
花括号 {} 表示这是一个dict，然后按照 key: value, 写出来即可。最后一个 key: value 的逗号可以省略。
由于dict也是集合，len() 函数可以计算任意集合的大小：<br>
>>> len(d)<br>
3<br>
注意: 一个 key-value 算一个，因此，dict大小为3。<br></p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>新来的Paul同学成绩是 75 分，请编写一个dict，把Paul同学的成绩也加进去。<br>
d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br></p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>无</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59,<br>
    'Paul': 75<br>
}<br></p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>字典是另一种可变容器模型，且可存储任意类型对象。
字典的每个键值(key=>value)对用冒号(:)分割，每个对之间用逗号(,)分割，整个字典包括在花括号({})中 ,格式如下所示：<br>
d = {key1 : value1, key2 : value2 }<br>
键必须是唯一的，但值则不必。
值可以取任何数据类型，但键必须是不可变的，如字符串，数字或元组</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59,<br>
     ??<br>
}<br></p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>