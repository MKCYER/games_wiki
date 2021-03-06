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
        try {
            if(bean.insertUsers(name,account,passwd,email)){
                response.setHeader("refresh", "0.5;url=login.jsp");
                response.getWriter().write("<h1>创建成功，马上返回登陆界面</h1>");
            }
            else{
                response.setHeader("refresh", "1.5;url=signup.html");
                response.getWriter().write("创建失败，请重新检查，用户名或邮箱重复，不可有特殊字符");
            }
        } catch (SQLException e) {
            System.out.println("用户创建失败");
        }
    }
}
