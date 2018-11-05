<%--
  Created by IntelliJ IDEA.
  User: 听音乐的酒
  Date: 2018/11/2
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isErrorPage="true" %>
<html>
<head>
    <title>错误代码404</title>
</head>
<body>
    <h2>请求资源不存在，输入了错误的URL  </h2>
    <%
        out.print(exception.getStackTrace());
    %>
</body>
</html>
