package web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import web.MysqlBean;

@WebServlet(name = "SignupSer", value = "/SignupSer")
public class SignupSer extends HttpServlet {
    private boolean sql_inj(String str){
        String inj_str = "'|,|=|+|*|(|)|^|;";
        String inj_stra[] = inj_str.split("|");
        for (int i=0 ; i<inj_stra.length ; i++ ){
            if (str.contains(inj_stra[i])){
                return true;
            }
        }
        return false;
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MysqlBean bean=new MysqlBean();
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("UTF-8");
        String name=request.getParameter("name");
        String account=request.getParameter("account");
        String passwd=request.getParameter("passwd");
        String email=request.getParameter("email");
        if(sql_inj(name)||sql_inj(account)||sql_inj(email)||sql_inj(passwd)){
            response.setHeader("refresh", "1.5;url=signup.html");
            response.getWriter().write("<h1 style=\"color:red\">有部合法字符</h1>");
            return;
        }
        Date date=new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//日期标准化
        String datenow=ft.format(date);
        Statement sta=bean.getSta();
        try {
            if(sta.executeUpdate("insert into users(userName,email,userAcc,userPasswd,lastdate) values(\""+name+"\",\""+email+"\",\""+account+"\",\""+passwd+"\",\""+datenow+"\");")>=1){
                response.setHeader("refresh", "0.5;url=login.jsp");
                response.getWriter().write("<h1>创建成功，马上返回登陆界面</h1>");
            }
            else{
                response.setHeader("refresh", "1.5;url=signup.html");
                response.getWriter().write("邮箱重复，请重新注册");
            }
        } catch (SQLException e) {
            System.out.println("用户创建失败");
        }
    }
}
