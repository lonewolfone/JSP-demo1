<%--
  Created by IntelliJ IDEA.
  User: 听音乐的酒
  Date: 2018/11/2
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isErrorPage="true" %>
<html>
<head>
    <title>异常信息</title>
</head>
<body>
<h2>
    发生了异常
    <%= exception.getMessage() %>
</h2>
<%
    exception.getStackTrace();
%>

</body>
</html>
