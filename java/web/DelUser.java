package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelUser", value = "/control/function/DelUser")
public class DelUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        String uid=request.getParameter("uid");
        MysqlBean bean=new MysqlBean();
            if(bean.adminDelPassage(uid))
                response.sendRedirect("userControl.jsp");
            else {
                response.setHeader("refresh", "1.5;url=userControl.jsp");
                response.getWriter().write("删除用户失败");
            }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return;
    }
}
