<%@page import="util.Page"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css\codemirror.css" rel="stylesheet">
<script type="text/javascript" src="js\codemirror.js"></script>

<!-- 主题 -->
<link href="css\liquibyte.css" rel="stylesheet">

<!-- mode -->
<script type="text/javascript" src="js\clike.js"></script>

<!-- 编辑 -->
<script type="text/javascript" src="js\python.js"></script>

<!-- hint -->
<script type="text/javascript" src="js\javascript-hint.js"></script>
<script type="text/javascript" src="js\show-hint.js"></script>
<link href="css\show-hint.css" rel="stylesheet">

<link href="css\bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="js\jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="js\bootstrap.min.js"></script>

<title>Python在线学习</title>
<style>
     .CodeMirror{border:1px solid gray;font-size:16px;width:500px;height:450px}
</style>

</head>
<body>
 <div class="col-sm-3">
				 <div>
					<ul class="list-group hotList" style="list-style-type:none">
						<li class="list-group-item">
						<h3>小节名称</h3>
							<p>第一个python程序 </p>
						</li>
						<li class="list-group-item">
						<h4>知识点介绍</h4>
							<p>Python的简单入门，利用Python语言中print输出语句在屏幕输出Hello Python ，开始你Python的学习历程</p>
						</li>
						<li class="list-group-item">
						<h4>任务</h4>
							<p>请编写一个程序，输出 Hello Python</p>
						</li>
						<li class="list-group-item">
						<h4>结果</h4>
							<p>Hello Python</p>
						</li>
						<li class="list-group-item">
						<h4>完整代码</h4>
							<p>print 'Hello Python'</p>
						</li>
						<li class="list-group-item">
						<h4>提示</h4>
							<p>Python程序语句结尾无需加“;”</p>
						</li>
						<li class="list-group-item">
						<h4>初始化代码</h4>
							<p>print 'Hello Python'</p>
						</li>
					</ul>
				</div>
			</div> 
 <div class="col-sm-9"> 
<br>
<div class="row">
  <div class="col-md-12">
	<div class="panel panel-default">
	  <div id="compiler" class="panel-heading">
		  <form class="form-inline" role="form" method="get">
			 <input class="btn btn-success" id="submitBTN" type="button" onClick="run()" value="运行"></input>
			 <input class="btn btn-default" id="clearCode" type="submit" onClick="clear()" value="清空"></input>
			 <input class="btn btn-success" id="save" type="button" onClick="save()" value="保存"></input>
			 <label class="pull-right"><strong style="font-size: 16px">
			 <a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=ssbDyoOAgfLU3crf09venNHd3w" target="_blank">
			 <i class="fa fa-envelope" aria-hidden="true"></i> 邮件反馈</a></strong></label>
		 </form>
		</div>
		 <div class="panel-body">
			<form role="form" id="compiler-form" method="post">
              <div class="form-group">
                <div class="row">
                  <div class="col-md-7">
                    <textarea class="form-control"  id="code" name="code"># -*- coding: UTF-8 -*-</textarea>
                    <script>editor = CodeMirror.fromTextArea(document.getElementById("code"), {lineNumbers: true}); </script> 
                  </div>
                  <div class="col-md-5">
                    <textarea placeholder="运行结果……" class="form-control" id="result" rows="21">${value}</textarea>
                    
                  </div>
                </div>
               </div>
             </form>
<script>
		editor = CodeMirror.fromTextArea(document.getElementById("code"),
    	{
    	 lineNumbers: true,
    	 mode: "text/x-python",
    	 matchBrackets:true,
    	 extraKeys:{"Ctrl-Space":"autocomplete"}
    	 }); 
</script>
		 	</div>
		</div>
	</div>
<!-- JiaThis Button BEGIN -->
		<div class="jiathis_style">
			<span class="jiathis_txt">分享到：</span>
			<a class="jiathis_button_qzone">QQ空间</a>
			<a class="jiathis_button_tsina">新浪微博</a>
			<a class="jiathis_button_weixin">微信</a>
			<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">更多</a>
			<a class="jiathis_counter_style"></a>
		</div>
	<script src="http://v3.jiathis.com/code/jia.js?uid=1368878491142981"></script>
<!-- JiaThis Button END -->
	</div>
  </div>
 </body>
 <script type="text/javascript">
function run()                     //定义函数
 {
    //var ed=document.getElementById("code").value;//获取元素存储在ed中
    //document.write(ed);
    var ed=document.getElementsByName('code');
    document.write(ed.length);//输出变量ed
 }
</script>
<script>
/*
	var save=document.getElementById("save");
	save.onclick=function(){
		var codeContent=codeEditor.getText();
		alert(codeContent);
	}
*/
function save(){
	var save=document.getElementById("save");
	editor.getDoc().setValue(data);
    editor.refresh();
    editor.save();
}

</script>
</html>