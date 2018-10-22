<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<html>
<head>
<base href="<%=basePath%>">  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link rel="stylesheet" href="css/site.css">

<script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>

<!-- 在线编码 -->
<script src="js/bootstrapValidator.js" type="text/javascript"></script>
<title>Python在线学习网站</title>
<style>
.CodeMirror {
	    height: 374px;
 }
</style>
</head>
<body>

<%--<jsp:include flush="fasle" page="header.jsp" />
--%>
<div class="container"> 
<br>
<div class="row">
	<div class="col-md-9">
		<div class="panel panel-default">
					<div id="compiler" class="panel-heading">
			<form class="form-inline" role="form">
				 <button type="button" class="btn btn-success" id="submitBTN" disabled="disabled"><i class="fa fa-send-o"></i> 点击运行</button>
				 <button type="button" class="btn btn-default" id="clearCode" ><i class="fa fa-eraser" aria-hidden="true"></i> 清空</button>
				 <label class="pull-right"><strong style="font-size: 16px"><a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=ssbDyoOAgfLU3crf09venNHd3w" target="_blank"><i class="fa fa-envelope" aria-hidden="true"></i> 邮件反馈</a></strong></label>
			</form>
					</div>
			<div class="panel-body">
			<form role="form" id="compiler-form">
              <div class="form-group">
                <div class="row">
                  <div class="col-md-7">
                    <textarea class="form-control"  id="code" name="code" rows="18"># -*- coding: UTF-8 -*-
                        print 'Hello World!'</textarea>
                  </div>
                  <div class="col-md-5">
                    <textarea placeholder="运行结果……" class="form-control" id="compiler-textarea-result" rows="18">Hello World!</textarea>
                  </div>
                </div>
              </div>
              </form>
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
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1368878491142981" charset="utf-8"></script>
<!-- JiaThis Button END -->
	</div>

</div>
<script>
var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
	lineNumbers: true,
	matchBrackets: true,
	mode: "text/x-python",
	indentUnit: 4,
	indentWithTabs: true,
});
btn = $("#submitBTN");
editor.on("change",function(editor,change){
	btn.prop('disabled', false);
});
btn.click(function() {
	btn.prop('disabled', true);
	loadingdata = '程序正在运行中……';
	$("#compiler-textarea-result").val(loadingdata);
  
	code = editor.getValue();
	runcode = 0;
	$.post("https://m.runoob.com/api/compile.php",{code:code,language:runcode},function(data){
		if(runcode==18) {
			data.output = data.output.replace("Free Pascal Compiler version 2.6.2-8 [2014/01/22] for x86_64\nCopyright (c) 1993-2012 by Florian Klaempfl and others\n", "");
			data.errors = data.errors.replace("/usr/bin/ld.bfd: warning: /usercode/link.res contains output sections; did you forget -T?\n", "");
		}
		$("#compiler-textarea-result").val(data.output + data.errors);
	});
	setTimeout(function(){
        btn.prop('disabled', false);
    }, 10*1000);
});
$("#clearCode").click(function() {
	editor.setValue("");
	editor.clearHistory();
	$("#compiler-textarea-result").val("");
	btn.prop('disabled', true);
});

$(function(){
  // bind change event to select
  $('#sel1').on('change', function () {
      var url = $(this).val(); // get selected value
      if (url) { // require a URL
          window.location = url; // redirect
      }
      return false;
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
<script>
var _hmt = _hmt || [];
(function() {
	// 统计
	var hm = document.createElement("script");
	hm.src = "https://hm.baidu.com/hm.js?68c6d4f0f6c20c5974b17198fa6fd40a";
	var s = document.getElementsByTagName("script")[0]; 
	s.parentNode.insertBefore(hm, s);
})();
(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https'){
   bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
  }
  else{
  bp.src = 'http://push.zhanzhang.baidu.com/push.js';
  }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>

</div>
</body>

</html>