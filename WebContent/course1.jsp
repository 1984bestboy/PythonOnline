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
			<form class="form-inline" role="form">
			     <input class="btn btn-success" id="submitBTN" type="submit" value="运行"></input>
			     <!--
			     <input class="btn btn-default" id="clearCode" type="button" onClick="clear()" value="清空"></input>
				 -->
				 <label class="pull-right"><strong style="font-size: 16px"><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=ssbDyoOAgfLU3crf09venNHd3w" target="_blank"><i class="fa fa-envelope" aria-hidden="true"></i> 邮件反馈</a></strong></label>
			</form>
		</div>
		 <div class="panel-body">
			<form role="form" id="compiler-form" method="post">
              <div class="form-group">
                <div class="row">
                  <div class="col-md-7">
                    <textarea class="form-control"  id="code" name="code"># -*- coding: UTF-8 -*-</textarea>
                  </div>
                  <div class="col-md-5">
                    <textarea placeholder="运行结果……" class="form-control" id="result" rows="21">${value}</textarea>
                  </div>
                </div>
              </div>
              </form>
              <script>editor = CodeMirror.fromTextArea(document.getElementById("code"), {lineNumbers: true}); </script>
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
<script src="http://v3.jiathis.com/code/jia.js?uid=1368878491142981" charset="utf-8"></script>
<!-- JiaThis Button END -->
</div>

<script>
<%--
$ (function() {
  var WORD = /[\w$]+/g, RANGE = 500;
  CodeMirror.registerHelper(function(editor,options) {
    var word = options && options.word || WORD;
    var range = options && options.range || RANGE;
    var cur = editor.getCursor(), curLine = editor.getLine(cur.line);
    var start = cur.ch, end = start;
    while (end < curLine.length && word.test(curLine.charAt(end))) ++end;
    while (start && word.test(curLine.charAt(start - 1))) --start;
    var curWord = start != end && curLine.slice(start, end);
    var list = [], seen = {};
    function scan(dir) {
      var line = cur.line, end = Math.min(Math.max(line + dir * range, editor.firstLine()), editor.lastLine()) + dir;
      for (; line != end; line += dir) {
        var text = editor.getLine(line), m;
        word.lastIndex = 0;
        while (m = word.exec(text)) {
          if ((!curWord || m[0].indexOf(curWord) == 0) && !seen.hasOwnProperty(m[0])) {
            seen[m[0]] = true;
            list.push(m[0]);
          }
        }
      }
    }
    scan(-1);
    scan(1);
    return {list: list, from: CodeMirror.Pos(cur.line, start), to: CodeMirror.Pos(cur.line, end)};
  });
})();
--%>
CodeMirror.commands.autocomplete = function(cm) {
	  cm.showHint({hint: CodeMirror.hint.anyword});
	}
var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
	lineNumbers: true,//是否显示编辑器行数
	mode: "text/x-python",//指定编辑的模式
	indentUnit: 4,//设置缩进值
	indentWithTabs: true,
	matchBrackets:true,//括号匹配
	lineWrapping:ture,//是否可以滚动
	extraKeys:{"Ctrl-Space":"autocomplete"},//智能提示
	onChange: function (n){
    	alert(editor.getCode());
	},
});
<%--
btn = $("#submitBTN");
editor.on("change",function(editor,change){
	btn.prop('disabled', false);
});
btn.click(function() {
	btn.prop('disabled', true);
	loadingdata = '程序正在运行中……';
	$("#result").val(loadingdata);
  
	code = editor.getValue();
	runcode = 0;
	$.post("https://m.runoob.com/api/compile.php",{code:code,language:runcode},function(data){
		if(runcode==18) {
			data.output = data.output.replace("Free Pascal Compiler version 2.6.2-8 [2014/01/22] for x86_64\nCopyright (c) 1993-2012 by Florian Klaempfl and others\n", "");
			data.errors = data.errors.replace("/usr/bin/ld.bfd: warning: /usercode/link.res contains output sections; did you forget -T?\n", "");
		}
		$("#result").val(data.output + data.errors);
	});
	setTimeout(function(){
        btn.prop('disabled', false);
    }, 10*1000);
});
--%>
$function(CodeMirror) {
	  CodeMirror.fromTextArea(document.getElementById("code"), {
		  mode: "text/x-python"
	  });

</script>
<!-- 编写提交脚本，并获取返回结果 -->
	<script>
		//请求运行结果
		function getResult(){
			document.getElementById("result").value="代码正在运行中...";
			$.ajax({
				type :"GET",
				url :"./callpy.jsp",
				success :function(data){
					document.getElementById("result").value=data;
				},
				error :function(err){
					document.getElementById("result").value=err;
				}
			});s
			
		}
		//将源代码上传到服务器上
		function uploadSource(){
			var scode=document.getElementById("code").value;
			$.ajax({
				type :"POST",
				url :"/index.jsp",
				data :{
					"code":code
				},
				success :function(){
					console.log("代码上传成功！");
				}, 
				error :function(err){
					console.log("代码上传失败！");
					aler(err);
				}
			});
			
		}
		//使用ajax来获取执行的结果
		$(document).ready(function(){
			document.getElementById("result").value="正在获取运行结果......";
			$("submitBTN").click(function(){
				//先上传代码
				uploadSource();
				//请求代码运行后的结果
				getResult();
			});
		});
	
	</script>
<hr>
<!-- Footer -->
<footer>
	<div class="row">
		<div class="col-lg-12">
		</div>
	</div>
</footer>

</div>
<div style="display:none;">

</div>
</body>
</html>