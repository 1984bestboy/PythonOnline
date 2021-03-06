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
							<p>函数介绍  </p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>我们知道圆的面积计算公式为：<br>
S = πr²<br>
当我们知道半径r的值时，就可以根据公式计算出面积。假设我们需要计算3个不同大小的圆的面积：<br>
r1 = 12.34<br>
r2 = 9.08<br>
r3 = 73.1<br>
s1 = 3.14 * r1 * r1<br>
s2 = 3.14 * r2 * r2<br>
s3 = 3.14 * r3 * r3<br>
当代码出现有规律的重复的时候，你就需要当心了，每次写3.14 * x * x不仅很麻烦，而且，如果要把3.14改成3.14159265359的时候，得全部替换。
有了函数，我们就不再每次写s = 3.14 * x * x，而是写成更有意义的函数调用 s = area_of_circle(x)，而函数 area_of_circle 本身只需要写一次，就可以多次调用。
抽象是数学中非常常见的概念。举个例子：<br>
计算数列的和，比如：1 + 2 + 3 + ... + 100，写起来十分不方便，于是数学家发明了求和符号∑，可以把1 + 2 + 3 + ... + 100记作：
100
∑n
n=1<br>
这种抽象记法非常强大，因为我们看到∑就可以理解成求和，而不是还原成低级的加法运算。
而且，这种抽象记法是可扩展的，比如：<br>
100
∑(n²+1)
n=1<br>
还原成加法运算就变成了：<br>
(1 x 1 + 1) + (2 x 2 + 1) + (3 x 3 + 1) + ... + (100 x 100 + 1)<br>
可见，借助抽象，我们才能不关心底层的具体计算过程，而直接在更高的层次上思考问题。<br>
写计算机程序也是一样，函数就是最基本的一种代码抽象的方式。
Python不但能非常灵活地定义函数，而且本身内置了很多有用的函数，可以直接调用。<br>
</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>无</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>无</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							无
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>无</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>无</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>