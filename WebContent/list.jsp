<%@page import="util.Page"%>
<%-- <%@page import="com.muke.pojo.MessageCriteria"%>
<%@page import="com.muke.dao.IMessageDao"%>
<%@page import="com.muke.dao.impl.MessageDaoImpl"%> --%>
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
	<jsp:include flush="fasle" page="header.jsp" />
	
	<div class="container">
		<div class="row">
			<div class="col-sm-2">
			<ul class="list-group hotList" style="list-style-type:none">
				<li class="list-group-item">
							<a class="msgtile text-limit" href="course1.jsp? msgid=1">第一个python程序 </a>
						</li>
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course2.jsp?msgid=2">Python的数据类型 </a>
						</li>
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course3.jsp?msgid=3"> Python的输出语句</a>
						</li>
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course4.jsp?msgid=4">Python变量的定义与使用</a>
						</li>
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course5.jsp?msgid=5"> Python中的list创建</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course6.jsp?msgid=6">Python访问list的基本方式</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course7.jsp?msgid=7">Python中list的基本操作方式</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course8.jsp?msgid=8">Python单元素tuple的创建</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course9.jsp?msgid=9">Python中的条件判断</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course10.jsp?msgid=10">Python中的循环</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course11.jsp?msgid=11">介绍dict</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course12.jsp?msgid=12">访问dict</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course13.jsp?msgid=13">操作dict</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course14.jsp?msgid=14">介绍set</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course15.jsp?msgid=15">访问set</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course16.jsp?msgid=16">操作set</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course17.jsp?msgid=17">函数介绍 </a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course18.jsp?msgid=18">函数的编写与调用</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course19.jsp?msgid=19">函数的返回多值</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course20.jsp?msgid=20">函数的可变参数</a>
						</li> 
						<li class="list-group-item">
							
							<a class="msgtile text-limit" href="course21.jsp?msgid=21">迭代</a>
						</li> 
				     </ul>
				</div>
	        <div class="col-sm-10">
				 <div>
					<ul class="list-group hotList" style="list-style-type:none">
						<li class="list-group-item">
							<span class="badge">5</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=3">JDK配置环境变量</a>
						</li>
					</ul>
				</div>
			</div> 
	    </div>	
	</div>

	<jsp:include flush="fasle" page="footer.jsp" />
	
</body>
</html>