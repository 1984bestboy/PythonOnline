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
							<p>Python变量的定义与使用</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>在Python中，变量不需要明确的声明类型来保留内存空间。当向变量分配值时，Python会自动发出声明。 等号(=)用于为变量赋值。
=运算符左侧的操作数是变量的名称，而=运算符右侧的操作数是将在存储在变量中的值。</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>修改代码，给下面的变量赋值</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>100<br>
999.99<br>
Maxsu<br>
http://www.yiibai.com<br>
</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>
							counter = 100<br>          # 一个整型数<br>
miles   = 999.99 <br>      # 一个浮点数<br>
name    = ""Maxsu""  <br>     # 一个字符串<br>
site_url  = ""http://www.yiibai.com""<br> # 一个字符串<br>

print (counter)<br>
print (miles)<br>
print (name)<br>
print (site_url)<br>
							</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>Python的变量不需要声明,数据类型是Python自动决定的。</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>
							int counter = 100 <br>         # 一个整型数<br>
float miles   = 999.99 <br>      # 一个浮点数<br>
name    = ""Maxsu""  <br>     # 一个字符串<br>
site_url  = ""http://www.yiibai.com""<br># 一个字符串<br>

print (counter)<br>
print (miles)<br>
print (name)<br>
print (site_url)<br>
							
							</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>