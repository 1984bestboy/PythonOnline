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
							<p>函数的返回多值</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>
							函数可以返回多个值吗？答案是肯定的。
比如在游戏中经常需要从一个点移动到另一个点，给出坐标、位移和角度，就可以计算出新的坐标：<br>
# math包提供了sin()和 cos()函数，我们先用import引用它：<br>
import math<br>
def move(x, y, step, angle):<br>
    nx = x + step * math.cos(angle)<br>
    ny = y - step * math.sin(angle)<br>
    return nx, ny<br>
这样我们就可以同时获得返回值：<br>
>>> x, y = move(100, 100, 60, math.pi / 6)<br>
>>> print x, y<br>
151.961524227 70.0<br>
但其实这只是一种假象，Python函数返回的仍然是单一值：<br>
>>> r = move(100, 100, 60, math.pi / 6)<br>
>>> print r<br>
(151.96152422706632, 70.0)<br>
用print打印返回结果，原来返回值是一个tuple！
但是，在语法上，返回一个tuple可以省略括号，而多个变量可以同时接收一个tuple，按位置赋给对应的值，所以，Python的函数返回多值其实就是返回一个tuple，但写起来更方便。
							</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>一元二次方程的定义是：ax² + bx + c = 0
请编写一个函数，返回一元二次方程的两个解。
注意：Python的math包提供了sqrt()函数用于计算平方根</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>
							(0.0, -1.5)<br>
							(5.0, 1.0)<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							import math<br>
def quadratic_equation(a, b, c):<br>
    t = math.sqrt(b * b - 4 * a * c)<br>
    return (-b + t) / (2 * a),( -b - t )/ (2 * a)<br>
print quadratic_equation(2, 3, 0)<br>
print quadratic_equation(1, -6, 5)<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>请参考求根公式：x = (-b±√(b²-4ac)) / 2a</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>
import math<br>
def quadratic_equation(a, b, c):<br>
    t = math.sqrt(b * b - 4 * a * c)<br>
    return ??<br>
print quadratic_equation(2, 3, 0)<br>
print quadratic_equation(1, -6, 5)<br>							
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>