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
							<p>Python中的条件判断</p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>
				1、if语句<br>
        Python中的if子句由三部分组成：关键字本身、用于判断结果真假的条件表达式以及当表达式为真或者非零时执行的代码块。if 语句的语法如下：<br>
       if expression:<br>
            expr_true_suite<br>
if 语句的expr_true_suite代码块只有在条件表达式的结果的布尔值为真时才执行，否则将继续执行紧跟在该代码块后面的语句。<br>
2、else语句<br>
       Python提供了与if语句搭配使用的else语句，如果if语句的条件表达式的结果布尔值为假，那么程序将执行 else 语句后的代码。其语法如下：<br>
       if expression:<br>
                   expr_true_suite<br>
               else:<br>
                     expr_false_suite<br>
3、elif (即else-if )语句<br>
        elif是Python的else-if 语句，它检查多个表达式是否为真，并在为真时执行特定代码块中的代码。和else一样，elif 声明是可选的，然而不同的是if 语句后最多只能有一个else语句，但可以有任意数量的 elif 语句。<br>
if expression1:<br>
     expr1_true_suite<br>
elif expression2:<br>
     expr2_true_suite<br>
 ...<br>
elif expressionN:<br>
     exprN_true_suite<br>
else:<br>
     none_of_the_above_suite<br>			
							</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>编写代码，判断admin属于哪种分类</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>超级管理员</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p># -*- coding: UTF-8 -*-<br>
name = "admin" <br>
if name == "admin":<br>
    print "超级管理员"<br>
elif name == "user":<br>
    print "普通用户"<br>
elif name == "guest":<br>
    print "客人"<br>
else:<br>
    print "不认识你"</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>基本语法：<br>
if 表达式1:<br>
    语句<br>
    if 表达式2:<br>
        语句<br>
    elif 表达式3:<br>
        语句<br>
    else<br>
        语句<br>
elif 表达式4:<br>
    语句<br>
else:<br>
    语句<br></p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p># -*- coding: UTF-8 -*-<br>
name = "admin" <br>
if ??<br>
    print "超级管理员"<br>
elif name == "user":<br>
    print "普通用户"<br>
elif name == "guest":<br>
    print "客人"<br>
else:<br>
    print "不认识你"</p>
						</li>
					</ul>
				</div>
			</div> 
</body>
</html>