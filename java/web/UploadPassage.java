package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UploadPassage", value = "/passage/UploadPassage")
public class UploadPassage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MysqlBean bean=new MysqlBean();
        try {
            //System.out.println(1);
            String uid=request.getParameter("uid");
            String gameid=request.getParameter("gameid");
            String title=request.getParameter("title");
            String content=request.getParameter("content");
//            System.out.println(uid);
//            System.out.println(gameid);
//            System.out.println(title);
//            System.out.println(content);
            if(bean.insertPassage(uid,gameid,title,content))
            {
                System.out.println(2);
                response.sendRedirect("showPassage.jsp?pid="+request.getParameter("pid"));

            }
            else {
                response.setHeader("refresh", "1.5;url=createPassage.jsp");
                response.getWriter().write("上传文章失败");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
