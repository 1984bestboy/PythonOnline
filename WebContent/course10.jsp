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
							<p>Python中的循环</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>1、while语句<br>
      while是一个条件循环语句，与if声明相比，如果 if 后的条件为真，就会执行一次相应的代码块。而while中的代码块会一直循环执行，直到循环条件不再为真。<br>
（1）一般语法<br>
while循环的语法如下：<br>
      while expression:<br>
           suite_to_repeat<br>
while循环的suite_to_repeat子句会一直循环执行，直到expression值为布尔假。<br>
（2）计数循环<br>
     count = 0<br>
    while (count < 9):<br>
        print 'the index is:', count<br>
        count += 1<br>
 代码块里包含了print和自增语句，它们被重复执行，直到count不再小于9。索引count在每次迭代时被打印出来然后自增 1。<br>
（3）无限循环<br>
   while True:<br>
        handle, indata = wait_for_client_connect()<br>
        outdata = process_request(indata)<br>
        ack_result_to_client(handle, outdata)<br>
2、for语句<br>
        Python提供了的另一个循环机制就是for语句，它是Python中最强大的循环结构。它可以遍历序列成员，可以用在列表解析和生成器表达式中，它会自动地调用迭代器的next()方法，捕获StopIteration异常并结束循环（所有这一切都是在内部发生的）。 Python的for更像是shell或是脚本语言中的foreach循环。
<br>
（1）一般语法<br>
       for循环会访问一个可迭代对象（例如序列或是迭代器）中的所有元素,，并在所有条目都处理过后结束循环。它的语法如下：<br>
for iter_var in iterable:<br>
     suite_to_repeat<br>
         每次循环， iter_var迭代变量被设置为可迭代对象（序列、迭代器或者是其他支持迭代的对象）的当前元素，提供给suite_to_repeat 语句块使用。<br>
 （2）用于序列类型<br>
       for循环可以迭代不同的序列对象，像字符串、 列表、以及元组。<br>
</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>编写代码分别输出Python中的每一个字母和水果元组中的每一个水果名称</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>当前字母 : P<br>
当前字母 : y<br>
当前字母 : t<br>
当前字母 : h<br>
当前字母 : o<br>
当前字母 : n<br>
当前水果 : banana<br>
当前水果 : apple<br>
当前水果 : mango<br>
Good bye!<br></p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p># -*- coding: UTF-8 -*-<br>
 
for letter in 'Python': <br>    # 第一个实例<br>
   print '当前字母 :', letter<br>
 
fruits = ['banana', 'apple',  'mango']<br>
for fruit in fruits:    <br>    # 第二个实例<br>
   print '当前水果 :', fruit<br>
 
print "Good bye!"<br></p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>基本语法：
for iter_var in iterable:<br>
     suite_to_repeat<br></p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
	<p># -*- coding: UTF-8 -*-<br>
 
for ??? in 'Python': <br>    # 第一个实例<br>
   print '当前字母 :', letter<br>
 
fruits = ['banana', 'apple',  'mango']<br>
for fruit in fruits:    <br>    # 第二个实例<br>
   print '当前水果 :', fruit<br>
 
print "Good bye!"<br></p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>