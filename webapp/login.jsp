<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*"%>
<%@ page import="web.MysqlBean" %>
<%@ page import="com.sun.net.httpserver.Headers" %>
<html lang="zh-CN">
<head>
	<title>登录</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--图标-->
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<!--布局框架-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<!--主要样式-->
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
</head>

<body>

<div class="login">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-pic js-tilt" data-tilt>
				<img src="images/tower.png" alt="IMG">
			</div>

			<form class="login100-form validate-form" action="#" method="post">
				<span class="login100-form-title">
					用户登陆
				</span>

				<div class="wrap-input100 validate-input">
					<input class="input100" type="text" name="account" placeholder="账号">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
				</div>

				<div class="wrap-input100 validate-input">
					<input class="input100" type="password" name="passwd" placeholder="密码">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
				</div>
				
				<div class="container-login100-form-btn">
					<button class="login100-form-btn">
						登陆
					</button>
				</div>

                <p style="color: red" id="tip"></p>

				<div class="text-center p-t-12">
					<a class="txt2" href="javascript:">
						忘记密码？
					</a>
				</div>

				<div class="text-center p-t-136">
					<a class="txt2" href="signup.html">
							还没有账号？立即注册
						<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
					</a>
				</div>
			</form>
		</div>
	</div>
</div>
<jsp:useBean id="bean" class="web.MysqlBean">
    <%
        try {
            String account = request.getParameter("account");
            String password = request.getParameter("passwd");
            String uid = null;
            String coin = null;
            String name = null;
            String sql = "select * from users " + "where userAcc=" + "\"" + account + "\"" + ";";  //查询语句
            int t = 0;//登陆成功
            if(request.getHeader("REFERER")==null||request.getHeader("REFERER").contains("games")||request.getHeader("REFERER").contains("wiki"))
                t=2;
            try{
                if(bean.executeLogin(account,password)){
                    t=1;
                    sql = "select * from users " + "where userAcc=" + "\"" + account + "\"" + " and userPasswd=\""+password+"\";";
                    ResultSet res= bean.executeQuery(sql);
                    res.next();
                    uid = res.getString("uid");
                    coin = res.getString("coinNum");
                    name = res.getString("userName");
                }
            }catch (Exception e){
                System.out.println(e.getMessage());
            }

            if (t == 1) {
                session = null;//清除页面滞留的session，这样点击退出以后，下次登录确保重新获取新的用户名
                session = request.getSession();//获取session
                session.setAttribute("name", name);//将用户名传递给session
                session.setAttribute("account", account);
                session.setAttribute("uid", uid);
                session.setAttribute("coin", coin);
                response.sendRedirect("games_wiki.jsp");//request.getRequestDispatcher()是请求转发，前后页面共享一个request ; 这个是在服务端运行的，对浏览器来说是透明的。这里能够实现页面的跳转
            } else if(t==0) {
                out.write("<script>" +
                        "var Tip=document.getElementById(\"tip\");" +
                        "Tip.innerText=\"用户名或密码错误\";" +
                        "</script>");
            }
        } catch (Exception e) {
            out.print(e.getMessage());
        }
    %>
</jsp:useBean>

</body>
</html>