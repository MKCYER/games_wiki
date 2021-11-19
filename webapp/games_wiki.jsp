<%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/9/19
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*" %>
<%@ page import="web.MysqlBean" %>
<html>
<head>
    <title>Games Wiki</title>
    <!-- For-Mobile-Apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load",function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //For-Mobile-Apps -->

    <!-- Custom Theme files -->
    <!-- Bootstrap Styling --> <link rel='stylesheet' href="css/bootstrap.css" type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> <script src="js/jquery.min.js"></script>
    <!-- Bootstrap-Working-File --> <script src="js/bootstrap.min.js"></script>
    <!-- Index-Page-Styling --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Owl-Carousel-Styling --> <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
    <!-- //Custom Theme files -->
    <script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <!-- 以上为模板 -->
    <!-- 用户信息显示 -->
    <script src="js/menu_jquery.js"></script>
    <style>
        body {
            width: 50%;
            height: 100%;
            background: url("images/index_background.png") no-repeat center center fixed;
            /*兼容浏览器版本*/
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            filter:alpha(opacity=50);
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="stylesheet" type="text/css" href="css/searchTable.css">
</head>
<body>

<%
    //判断用户是否登录
    String name=String.valueOf(request.getSession().getAttribute("name"));
    String account=String.valueOf(request.getSession().getAttribute("account"));
    String uid=String.valueOf(request.getSession().getAttribute("uid"));
    String coin=String.valueOf(request.getSession().getAttribute("coin"));
%>
<!-- login按钮 用户没有登陆的情况下显示登录按钮，否则显示用户名 -->
<%if(name.equals("null")){%>
<div style="position: absolute;right: 0px;text-align: center">
    <div id="loginpop" style="position:relative;width: 100px">
        <a href="#" id="loginButton" onclick="window.location.href='login.jsp'"><span>Login</span></a>
    </div>
</div>
<%}else{%>
    <div style="position: absolute;right: 0px;text-align: center">
        <div id="loginpop" style="width: 100px;">
            <a href="#" id="loginButton"><span><%=name%></span></a>
            <div id="loginBox" style="border-radius: 20px;width: 150px">
                <div id="loginForm"  style="border-radius: 20px;width: 150px">
                    <fieldset id="body">
                        <span>UID</span>
                        <input type="text" name="uid" id="uid" disabled value="<%=uid%>">
                        <span>账号</span>
                        <input type="text" name="uid" id="account" disabled value="<%=account%>">
                        <span>硬币数</span>
                        <input type="text" name="coin" id="coin" disabled value="<%=coin%>">
                        <form method="post" action="ClearSession">
                            <input type="submit" value="退出" style="position:relative;top:20px;width: 50px;background-color: #03A9F4">
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
<%}%>
<!-- login按钮 end -->

<div  style="position:relative;top: 100px;">
        <!-- 设置搜素框-->
        <form action="#"  method="post" style="position: relative;left: 80%;top: 35px">
            <div style="width:600px;height:36px;">
                <input type="text" style="width: 500px;height: 36px;border-radius:20px">
                <input id="gender" name="gender" type="submit"  value="Search" style="position: relative;left:-64px;width:60px;height:36px;border-radius:20px;background-color: #dfe8ff;">
            </div>
        </form>
        <!-- 设置显示框，后期与数据库连接-->
        <div style="height: 340px;width:120px;left:25%;top:5%; overflow-x:hidden; position:relative;background-color: white;border-radius:10px;" class="test test-5">
            <div class="scrollbar" >
                <jsp:useBean id="bean" class="web.MysqlBean">
                    <%
                        try{
                            String sql="select * from games;";
                            ResultSet resultSet=bean.executeQuery(sql);
                            while(resultSet.next()){
                                out.write("<a href=\""+resultSet.getString("gameIh")+"\">"+resultSet.getString("gameName")+"</a><br>");
                            }
                        }catch (Exception e){
                            out.print(e.getMessage());
                        }
                    %>
                </jsp:useBean>
                <!-- <a href="wiki/Arkwiki.jsp">明日方舟</a> -->
            </div>
        </div>
</div>
</body>
</html>
