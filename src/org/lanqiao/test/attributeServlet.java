package org.lanqiao.test;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet( "/attributeServlet")
public class attributeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        //根据Request对象获取属性
        Object requestAttrVal =  request.getAttribute("requestAttr");
        out.print(requestAttrVal);
        out.print("<br><br>");
        //根据session对象
        HttpSession session = request.getSession();
        String sessionAttrVal = session.getAttribute("sessionAttr").toString();
        out.write(sessionAttrVal);
        out.print("<br><br>");
        //根据application对象
        ServletContext appcation =this.getServletContext();
        String appcationAlu =  appcation.getAttribute("applicationAtrr").toString();
        out.write(appcationAlu);
        out.print("<br><br>");

    }
}
