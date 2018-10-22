<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>python在线工具</title>
</head>
<body>
<script>
document.writeln("<?php");
document.writeln("");
document.writeln("$command = \"python .\/temp.py\";");
document.writeln("");
document.writeln("$flag = system($command, $result);");
document.writeln("");
document.writeln("if($flag) {");
document.writeln("    echo $result[0];");
document.writeln("}else{");
document.writeln("    echo \"不好意思，代码运行出错啦。\\n\\n\\n您的语法有问题哟:\\n请检查一下标点符号，代码缩进，单词拼写什么的吧！\";");
document.writeln("}");

</script>
</body>
</html>