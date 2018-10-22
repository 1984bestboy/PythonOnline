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
							<p>访问dict</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>
							我们已经能创建一个dict，用于表示名字和成绩的对应关系：<br>
d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br>
那么，如何根据名字来查找对应的成绩呢？v
可以简单地使用 d[key] 的形式来查找对应的 value，这和 list 很像，不同之处是，list 必须使用索引返回对应的元素，而dict使用key：<br>
>>> print d['Adam']<br>
95<br>
>>> print d['Paul']<br>
Traceback (most recent call last):<br>
  File "index.py", line 11, in <module><br>
    print d['Paul']<br>
KeyError: 'Paul'<br>
注意: 通过 key 访问 dict 的value，只要 key 存在，dict就返回对应的value。如果key不存在，会直接报错：KeyError。<br>
要避免 KeyError 发生，有两个办法：<br>
一是先判断一下 key 是否存在，用 in 操作符：<br>
if 'Paul' in d:<br>
    print d['Paul']<br>
如果 'Paul' 不存在，if语句判断为False，自然不会执行 print d['Paul'] ，从而避免了错误。<br>
二是使用dict本身提供的一个 get 方法，在Key不存在的时候，返回None：<br>
>>> print d.get('Bart')<br>
59<br>
>>> print d.get('Paul')<br>
None<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>根据如下dict：<br>
d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br>
请打印出：<br>
Adam: 95<br>
Lisa: 85<br>
Bart: 59</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>Adam: 95<br>
Lisa: 85<br>
Bart: 59</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br>
print 'Adam:', d['Adam']<br>
print 'Lisa:', d['Lisa']<br>
print 'Bart:', d['Bart']<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>使用 d[key] 的形式来查找对应的 value</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br>
print 'Adam:',???<br>
print 'Lisa:',???<br>
print 'Bart:',???<br></p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>