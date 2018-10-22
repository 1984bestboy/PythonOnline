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
							<p>介绍set</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>dict的作用是建立一组 key 和一组 value 的映射关系，dict的key是不能重复的。
有的时候，我们只想要 dict 的 key，不关心 key 对应的 value，目的就是保证这个集合的元素不会重复，这时，set就派上用场了。
set 持有一系列元素，这一点和 list 很像，但是set的元素没有重复，而且是无序的，这点和 dict 的 key很像。
创建 set 的方式是调用 set() 并传入一个 list，list的元素将作为set的元素：<br>
>>> s = set(['A', 'B', 'C'])<br>
可以查看 set 的内容：<br>
>>> print s<br>
set(['A', 'C', 'B'])<br>
请注意，上述打印的形式类似 list， 但它不是 list，仔细看还可以发现，打印的顺序和原始 list 的顺序有可能是不同的，因为set内部存储的元素是无序的。
因为set不能包含重复的元素，所以，当我们传入包含重复元素的 list 会怎么样呢？<br>
>>> s = set(['A', 'B', 'C', 'C'])<br>
>>> print s<br>
set(['A', 'C', 'B'])<br>
>>> len(s)<br>
3<br>
结果显示，set会自动去掉重复的元素，原来的list有4个元素，但set只有3个元素。<br>
</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>请用set表示班里的4位同学：<br>
Adam, Lisa, Bart, Paul</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>
							无
							</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>s = set(['Adam', 'Lisa', 'Bart', 'Paul'])</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>set 语法：<br>
class set([iterable])</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>s = ??</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>