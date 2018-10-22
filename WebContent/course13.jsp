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
							<p>操作dict</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>dict是可变的，也就是说，我们可以随时往dict中添加新的 key-value。比如已有dict：<br>
d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br>
要把新同学'Paul'的成绩 72 加进去，用赋值语句：<br>
>>> d['Paul'] = 72<br>
再看看dict的内容：<br>
>>> print d<br>
{'Lisa': 85, 'Paul': 72, 'Adam': 95, 'Bart': 59}<br>
如果 key 已经存在，则赋值会用新的 value 替换掉原来的 value：<br>
>>> d['Bart'] = 60<br>
>>> print d<br>
{'Lisa': 85, 'Paul': 72, 'Adam': 95, 'Bart': 60}<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>请根据Paul的成绩 72 更新下面的dict：<br>
d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>无</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
d = {<br>
    'Adam': 95,<br>
    'Lisa': 85,<br>
    'Bart': 59<br>
}<br>
d[72] = 'Paul'<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>d['key] = 新元素</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>    95: 'Adam',<br>
    85: 'Lisa',<br>
    59: 'Bart'<br>
}<br>
??<br>
</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>