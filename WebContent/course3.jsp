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
							<p> Python的输出语句  </p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>"1、print语句可以向屏幕上输出指定的文字。例如：print 'Hello World!'<br>

2、print语句也可以跟上多个字符串，用逗号“,”隔开，就可以连成一串输出：<br>
如：print 'my','name','is','Tom'，<br>
最终就会输出显示：my name is Tom<br>

3、也可以不加上逗号，直接：<br>
 print 'my''name''is''Tom'<br>
最终就会输出：mynameisTom<br>

4、print也可以用来打印数值或者是计算结果：<br>
     print 100<br>
     print 100 + 300"<br>
</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>练习知识点内的代码</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>"Hello World!<br>
my name is Tom<br>
mynameisTom<br>
100<br>
400"<br>
</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
"print 'Hello World!'<br>
print 'my','name','is','Tom'<br>
print 'my''name''is''Tom'<br>
print 100<br>
print 100 + 300"<br>

						</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>
							（1）print前不得有空格<br> （2）Python3中print后需带括号并缩进使用四个空格 <br>                                  
（3）print后单引号和双引号用法都是一样的，但是如果字符串里有相同的字符时要使用\进行转义<br>
（4） print会依次打印每个字符串，遇到逗号“,”会输出一个空格				
							</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>
"print 'Hello World!'<br> 
print ？？<br> 
print '？？<br> 
print 100<br> 
print 100 + 300"<br> 
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>