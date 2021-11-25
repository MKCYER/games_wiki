package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

@WebServlet(name = "UploadPassage", value = "/passage/UploadPassage")
public class UploadPassage extends HttpServlet {
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
        try {
            //System.out.println(1);
            String uid=request.getParameter("uid");
            String gameid=request.getParameter("gameid");
            String title=request.getParameter("title");
            String content= Base64.getEncoder().encodeToString(request.getParameter("content").getBytes("utf-8"));
            //System.out.println(content);
//            System.out.println(uid);
//            System.out.println(gameid);
//            System.out.println(title);
//            System.out.println(content);
            if(bean.insertPassage(uid,gameid,title,content))
            {
                //System.out.println(2);
                ResultSet set=bean.executeQuery("select pid from passages where uid="+uid+" order by createTime desc;");
                set.next();
                response.sendRedirect("showPassage.jsp?pid="+set.getString(1));
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
