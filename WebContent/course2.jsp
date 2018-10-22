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
							<p>Python的数据类型 </p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>空（None）<br>布尔类型（Boolean）<br>整型(Int)<br>集合(Set)<br>浮点型(Float)<br>字符串(String)<br>列表(List)<br>元组(Tuple)<br>集合(Set)和字典(Dict)。<br>Python的变量不需要声明，如果你直接输入，a = 10，那么你的内存里就有了一个变量a， 它的值是10，它的类型是integer (整数)。 在此之前你不需要做什么特别的声明，而数据类型是Python自动决定的。</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>请编写一个程序，判断a,b,c,d,e,f的数据类型</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>(10, <type 'int'>)<br>(1.3, <type 'float'>)<br>(True, <type 'bool'>)<br>([1, 2, 3], <type 'list'>)<br>('Hello', <type 'str'>)<br>(None, <type 'NoneType'>)</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>a=10<br>
								b=1.3<br>
								c=True<br>
								d=[1,2,3]<br>
								e='Hello'<br>
								print(a,type(a))<br>
								print(b,type(b))<br>
								print(c,type(c))<br>
								print(d,type(d))<br>
								print(e,type(e))<br>
								print(f,type(f))</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>（1）type()可以检测数据类型<br>
						（2）Python的变量不需要声明,数据类型是Python自动决定的。</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>a=10<br>
							b=1.3<br>
							c=True<br>
							d=[1,2,3]<br>
							e='Hello'<br>
							print(a,？？)<br>
							print(b,？？)<br>
							print(c,？？)<br>
							print(d,？？)<br>
							print(e,？？)<br>
							print(f,？？)</p>
						</li>
					</ul>
				</div>
			</div> 
  <div class="col-sm-9">
	<jsp:include flush="fasle" page="online.jsp" />
  </div> 
</body>
</html>