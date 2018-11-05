<%--
  Created by IntelliJ IDEA.
  Author: 听音乐的酒
  Date: 2018/11/2
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>九大内置对象的使用</title>
  </head>
  <body>
      <%-- request  封装了请求信息--%>
      <%
        String usernameVal = request.getParameter("username");
        //out.write(usernameVal);
      %>
      <%= usernameVal %>
      <%--reponse 对象   在开发中几乎不会再jsp页面使用该对象--%>
      <hr>
      <%= response instanceof  HttpServletResponse %>
      <%--pageContext对象  表示当前页面的上下文  可从中获取其他8个对象--%>
      <%
            ServletRequest req = pageContext.getRequest();
            out.print(req == request);
      %>
      <hr>
      <%--session :表示 浏览器和服务器之间的一次会话对象--%>
      <%= session.getId() %>
      <hr>
      <%--application对象 代表整个web应用  是一个ServletContext对象 ：在 web.xml文件中进行配置--%>
      <%= application.getInitParameter("password")%>
      <hr>
      <%--config对象  当前jsp对象的servlet的servletConfig对象 一般在开发中不会使用--%>
      <%
        String username1 = config.getInitParameter("username1");
        out.print(username1);
      %>
      <hr>
      <%--page指向当前jsp对应的servlet对象，但为Object类型，只能使用Object类的方法。开发中几乎不用。
          类似于Java中的this
      --%>
      <%= this %><br>
      <%=page%>
      <hr>
      <%
            int aa = 10/0;
      %>
      <%--exception对象--%>
  </body>
</html>
