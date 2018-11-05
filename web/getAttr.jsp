<%--
  Created by IntelliJ IDEA.
  User: 听音乐的酒
  Date: 2018/11/5
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>跨页面属性的设置和获取</title>
</head>
<body>
    <h2>跨页面域属性的设置和获取</h2>
    requestAtrr:<%=request.getAttribute("requestAttr")%><br><br>
    sessionAtrr:<%=session.getAttribute("sessionAttr")%><br><br>
    applicationAtrr:<%=application.getAttribute("applicationAtrr")%><br><br>
    pageContextAtrr:<%=pageContext.getAttribute("pageContextAttr")%><br><br>
</body>
</html>
