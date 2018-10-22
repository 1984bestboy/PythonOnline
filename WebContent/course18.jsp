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
							<p>函数的编写与调用</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>在Python中，定义一个函数要使用 def 语句，依次写出函数名、括号、括号中的参数和冒号:，然后，在缩进块中编写函数体，函数的返回值用 return 语句返回。
我们以自定义一个求绝对值的 my_abs 函数为例：<br>
def my_abs(x):<br>
    if x >= 0:<br>
        return x<br>
    else:<br>
        return -x<br>
请注意，函数体内部的语句在执行时，一旦执行到return时，函数就执行完毕，并将结果返回。因此，函数内部通过条件判断和循环可以实现非常复杂的逻辑。
如果没有return语句，函数执行完毕后也会返回结果，只是结果为 None。
return None可以简写为return。</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>请定义一个 square_of_sum 函数，它接受一个list，返回list中每个元素平方的和。</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>
							55<br>
							900<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							def square_of_sum(L):<br>
    sum = 0<br>
    for x in L:<br>
        sum = sum + x * x<br>
    return sum<br>
print square_of_sum([1, 2, 3, 4, 5])<br>
print square_of_sum([-5, 0, 5, 15, 25])<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>for 循环可以取出list中每个元素。</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>
def square_of_sum(L):<br>
    sum = 0<br>
    for x in L:<br>
        sum??<br>
    return sum<br>
print square_of_sum([1, 2, 3, 4, 5])<br>
print square_of_sum([-5, 0, 5, 15, 25])<br>							
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>