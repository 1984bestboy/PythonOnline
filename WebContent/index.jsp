<%@page import="util.Page"%>
<%-- <%@page import="pojo.MessageCriteria"%>
<%@page import="dao.IMessageDao"%>
<%@page import="dao.impl.MessageDaoImpl"%> --%>
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
<script>
$(function() {
	getNew();
	getHot();
	getTheme();
});
	function getNew() {
		// Ajax异步请求最新五条
		$.get("messageServlet?action=topNew",
				function(data){
			$.each(data.newMsg.data,function(index,element){
				var msg=$(".template").clone();
				msg.show();
				msg.removeClass("template");
				msg.find(".text-limit").text(element.msgtopic);
				msg.find(".text-limit").attr("href","<%=basePath%>newmsg.jsp?msgid="+element.msgid+"");
				msg.find(".badge").text(element.msgtime);
				$(".newList").append(msg);
			});
		
		},"json");
	}
	
	function getHot() {
		
		// Ajax异步请求最热五条,就是评论最多的五条
		$.get("messageServlet?action=topHot",
				function(data){
			$.each(data.hotMsg.data,function(index,element){
				var msg=$(".template").clone();
				msg.show();
				msg.removeClass("template");
				msg.find(".text-limit").text(element.msgtopic);
				msg.find(".text-limit").attr("href","<%=basePath%>hotmsg.jsp?msgid="+element.msgid+"");
				msg.find(".badge").text(element.replyCount);
				$(".hotList").append(msg);
			});
		
		},"json");
	}
	
	function getTheme() {
		
		// Ajax异步请求, 最热的五个主题
		$.get("messageServlet?action=topTheme",
				function(data){
			$.each(data.themeMsg.data,function(index,element){
				var msg=$(".template").clone();
				msg.show();
				msg.removeClass("template");
				msg.find(".text-limit").text(element.msgtopic);
				msg.find(".text-limit").attr("href","<%=basePath%>thememsg.jsp?msgid="+element.msgid+"");
				msg.find(".badge").text(element.thename);
				$(".themeList").append(msg);
			});
		
		},"json");
	}
	

</script>
</head>
<body>
	<jsp:include flush="fasle" page="header.jsp" />
	<div class="container">
		
		<div class="row">
		<div class="col-sm-2">
			<ul class="list-group hotList" style="list-style-type:none">
					    <li class="list-group-item">
							<p>课程列表 </p>
						</li>
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
			<div class="col-sm-4">
				<div
					style="overflow: auto; height: 60px; line-height: 40px; padding-top: 20px;">
					<div style="float: left">
						<h3 style="display: inline">最热</h3>
					</div>
					<div style="float: right; vertical-align: bottom;">
						<a href="hotmsg.jsp">更多>></a>
					</div>
				</div>
			
				 <div>
					<ul class="list-group hotList" style="list-style-type:none">
						<!-- <li class="list-group-item" display="block">
							<span class="badge"></span>
							<a class="msgtile text-limit" href="message.jsp?msgid=5"></a>
						</li> -->
						<!--<li class="list-group-item" display="block">
							<span class="badge">5</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=3">JDK配置环境变量</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">1</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=4">盒子模型是怎么回事?</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">1</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=1">Java 命令行打印圣诞树</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">0</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=2">异步是啥东西</a>
						</li>-->
					</ul>
				</div>
			</div> 
			<div class="col-sm-4">
				<div
					style="overflow: auto; height: 60px; line-height: 40px; padding-top: 20px;">
					<div style="float: left">
						<h3 style="display: inline">话题</h3>
					</div>
					<div style="float: right; vertical-align: bottom;">
						<a href="thememsg.jsp">更多>></a>
					</div>
				</div>
				
				  <div>
					<ul class="list-group themeList" style="list-style-type:none">
						<!-- <li class="list-group-item" display="block">
							<span class="badge"></span>
							<a class="msgtile text-limit" href="message.jsp?msgid=7"></a>
						</li> -->
			<!--			<li class="list-group-item" display="block">
							<span class="badge">BUG反馈</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=6">网站Bug请在此留下</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">MySQL</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=5">如何完全卸载MySQL数据库</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">Web前端</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=4">盒子模型是怎么回事?</a>
						</li>
						<li class="list-group-item" display="block">
							<span class="badge">Java</span>
							<a class="msgtile text-limit" href="message.jsp?msgid=3">JDK配置环境变量</a>
						</li>-->
					</ul>
				</div>  
			</div>
		</div>
	</div>
	<jsp:include flush="fasle" page="footer.jsp" />
	
</body>
</html>