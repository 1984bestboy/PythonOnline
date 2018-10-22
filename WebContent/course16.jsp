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
							<p>操作set</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>于set存储的是一组不重复的无序元素，因此，更新set主要做两件事：<br>
一是把新的元素添加到set中，二是把已有元素从set中删除。<br>
添加元素时，用set的add()方法：<br>
>>> s = set([1, 2, 3])<br>
>>> s.add(4)<br>
>>> print s<br>
set([1, 2, 3, 4])<br>
如果添加的元素已经存在于set中，add()不会报错，但是不会加进去了：<br>
>>> s = set([1, 2, 3])<br>
>>> s.add(3)<br>
>>> print s<br>
set([1, 2, 3])<br>
删除set中的元素时，用set的remove()方法：<br>
>>> s = set([1, 2, 3, 4])<br>
>>> s.remove(4)<br>
>>> print s<br>
set([1, 2, 3])<br>
如果删除的元素不存在set中，remove()会报错：<br>
>>> s = set([1, 2, 3])<br>
>>> s.remove(4)<br>
Traceback (most recent call last):<br>
  File "<stdin>", line 1, in <module>
KeyError: 4<br>
所以用add()可以直接添加，而remove()前需要判断。<br></p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>针对下面的set，给定一个list，对list中的每一个元素，如果在set中，就将其删除，如果不在set中，就添加进去。<br>
s = set(['Adam', 'Lisa', 'Paul'])<br>
L = ['Adam', 'Lisa', 'Bart', 'Paul']<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>set(['Bart'])</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							s = set(['Adam', 'Lisa', 'Paul'])<br>
L = ['Adam', 'Lisa', 'Bart', 'Paul']<br>
for name in L:<br>
    if name in s:<br>
        s.remove(name)<br>
    else:<br>
        s.add(name)<br>
print s<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>判断元素是否在set中，使用in操作符。</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>s = set(['Adam', 'Lisa', 'Paul'])<br>
L = ['Adam', 'Lisa', 'Bart', 'Paul']<br>
for name ??:<br>
    if name in s:<br>
       ??<br>
    else:<br>
       ??<br>
print s<br>
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>