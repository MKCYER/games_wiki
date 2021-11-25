package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelPassage", value = "/passage/DelPassage")
public class DelPassage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        String uid= String.valueOf(request.getSession().getAttribute("uid"));
        String pid=request.getParameter("pid");
        MysqlBean bean=new MysqlBean();
        if(bean.delpassage(uid,pid))
            response.sendRedirect("control.jsp");
        else{
            response.setHeader("refresh", "1.5;url=control.jsp");
            response.getWriter().write("删除文章失败");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
