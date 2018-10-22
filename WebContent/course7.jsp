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
							<p>Python中list的基本操作方式 </p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>
							1、你可以对列表的数据项进行修改或更新，你也可以使用append()方法来添加列表项<br>
2、也可以使用 del 语句来删除列表的的元素<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>将list中的1997修改为2001，并在列表后添加新元素loveyou,并且删除元素physics</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>
							Value available at index 2 : <br>
1997<br>
New value available at index 2 : <br>
2001<br>
after append the list is ['physics', 'chemistry', 2001, 2000, 'loveyou']<br>
After deleting value at index 0 : <br>
['chemistry', 2001, 2000, 'loveyou']<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							list = ['physics', 'chemistry', 1997, 2000]<br>
print "Value available at index 2 : "<br>
print list[2]<br>
list[2] = 2001<br>
print "New value available at index 2 : "<br>
print list[2]<br>
list.append('loveyou')<br>
print "after append the list is",list<br>
del list[0];<br>
print "After deleting value at index 0 : "<br>
print list;<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>
							1、更新操作：list[索引]：新元素<br>
2、添加操作：列表名.append(添加元素)<br>
3、删除操作：del list[索引]<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>
							list = ['physics', 'chemistry', 1997, 2000]<br>
print "Value available at index 2 : "<br>
print list[2]<br>
list[2] = 2001<br>
print "New value available at index 2 : "<br>
print list[2]<br>
list.??('loveyou')<br>
print "after append the list is",list<br>
?? list[0];<br>
print "After deleting value at index 0 : "<br>
print list;<br>
							
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>