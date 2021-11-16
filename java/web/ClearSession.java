package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ClearSession", value = "/ClearSession")
public class ClearSession extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        request.getSession().invalidate();
        response.setHeader("refresh", "0.5;url=games_wiki.jsp");
        response.getWriter().write("<h1>退出登陆成功，马上返回</h1>");
    }
}
