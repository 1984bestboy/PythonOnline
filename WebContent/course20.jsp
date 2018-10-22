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
							<p>函数的可变参数</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>
如果想让一个函数能接受任意个参数，我们就可以定义一个可变参数：<br>
def fn(*args):<br>
    print args<br>
可变参数的名字前面有个 * 号，我们可以传入0个、1个或多个参数给可变参数：<br>
>>> fn()<br>
()<br>
>>> fn('a')<br>
('a',)<br>
>>> fn('a', 'b')<br>
('a', 'b')<br>
>>> fn('a', 'b', 'c')<br>
('a', 'b', 'c')<br>
可变参数也不是很神秘，Python解释器会把传入的一组参数组装成一个tuple传递给可变参数，因此，在函数内部，直接把变量 args 看成一个 tuple 就好了。
定义可变参数的目的也是为了简化调用。假设我们要计算任意个数的平均值，就可以定义一个可变参数：<br>
def average(*args):<br>
    ...<br>
这样，在调用的时候，可以这样写：<br>
>>> average()<br>
0<br>
>>> average(1, 2)<br>
1.5<br>
>>> average(1, 2, 2, 3, 4)<br>
2.4	<br>						
							</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>请编写接受可变参数的 average() 函数。</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>
0.0<br>
1.5<br>
2.4<br>							
							</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
def average(*args):<br>	
    sum = 0.0<br>	
    if len(args) == 0:<br>	
        return sum<br>	
    for x in args:<br>	
        sum = sum + x<br>	
    return sum / len(args)<br>	
print average()<br>	
print average(1, 2)<br>	
print average(1, 2, 2, 3, 4)<br>								
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>可变参数 args 是一个tuple，当0个参数传入时，args是一个空tuple。</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>
def average(??):<br>	
    sum = 0.0<br>	
    if len(args) == 0:<br>	
        return sum<br>	
    for x in args:<br>	
        sum = sum + x<br>	
    return sum / len(args)<br>	
print average()<br>	
print average(1, 2)<br>	
print average(1, 2, 2, 3, 4)<br>							
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>