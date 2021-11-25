package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;

@WebServlet(name = "SaveUpdate", value = "/passage/SaveUpdate")
public class SaveUpdate extends HttpServlet {
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
            String pid=request.getParameter("pid");
            String gameid=request.getParameter("gameid");
            String title=request.getParameter("title");
            String content= Base64.getEncoder().encodeToString(request.getParameter("content").getBytes("utf-8"));
            Date date=new Date();
            SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//日期标准化
            String datenow=ft.format(date);
            //System.out.println(content);
//            System.out.println(uid);
//            System.out.println(gameid);
//            System.out.println(title);
//            System.out.println(content);
            String sql="update passages set title=\""+title+"\",gameId="+gameid+",content=\""+content+"\",changeTime=\""+datenow+"\" where pid="+pid+";";
            if(bean.executeUpdate(sql)!=0)
            {
                //System.out.println(2);
                ResultSet set=bean.executeQuery("select pid from passages where uid="+uid+" order by changeTime desc;");
                set.next();
                response.sendRedirect("showPassage.jsp?pid="+set.getString(1));

            }
            else {
                response.setHeader("refresh", "1.5;url=createPassage.jsp");
                response.getWriter().write("更新文章失败");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
