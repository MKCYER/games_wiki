package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Control_login", value = "/control/Control_login")
public class Control_login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        String name=request.getParameter("username");
        String passwd=request.getParameter("pwd");
        String aid="";
        System.out.println(name);
        if(name==null||passwd==null)
            response.getWriter().append("请登录").append("<a href=\"login.html\">返回</a>");
        MysqlBean bean=new MysqlBean();
        if(bean.admin_login(name,passwd)){
            System.out.println(1);
            HttpSession session = null;//清除页面滞留的session，这样点击退出以后，下次登录确保重新获取新的用户名
            session = request.getSession();//获取session
            session.setAttribute("name", name);//将用户名传递给session
            session.setAttribute("pwd", passwd);
            session.setAttribute("aid", -1);
            response.sendRedirect("design.html");
        }else
            response.getWriter().append("请重新登录").append("<a href=\"login.html\">返回</a>");
    }
}
