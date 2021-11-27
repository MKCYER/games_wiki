package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UpdateUser", value = "/control/function/UpdateUser")
public class UpdateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MysqlBean bean=new MysqlBean();
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        String uid=request.getParameter("uid");
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String account=request.getParameter("account");
        String passwd=request.getParameter("passwd");
        try {
            if(bean.updateUser(uid,name,account,email,passwd))
                response.sendRedirect("userControl.jsp");
            else {
                response.setHeader("refresh", "1.5;url=userControl.jsp");
                response.getWriter().write("更新用户信息失败");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
