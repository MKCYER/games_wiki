<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.stream.StreamSupport" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>明日方舟</title>
    <!-- For-Mobile-Apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load",function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //For-Mobile-Apps -->

    <!-- Custom Theme files -->
    <!-- Index-Page-Styling --> <link rel="stylesheet" href="../css/searchstyle.css" type="text/css" media="all" />
    <!-- Owl-Carousel-Styling --> <link rel="stylesheet" href="../css/owl.carousel.css" type="text/css" media="all">
    <!-- //Custom Theme files -->
    <script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <!-- 以上为模板 -->
    <!-- 用户信息显示 -->
    <script src="../js/menu_jquery.js"></script>
    <style>
        body {
            width: 50%;
            height: 100%;
            /*background: url("images/index_background.png") no-repeat center center fixed;
            兼容浏览器版本*/
            background-color: black;
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            filter:alpha(opacity=50);
        }
    </style>
    <link rel="stylesheet" type="text/css" href="../css/index.css">
    <link rel="stylesheet" type="text/css" href="../css/searchTable.css">
    <link rel="stylesheet" type="text/css" href="../css/searchshow.css">
</head>
<body>
<jsp:useBean id="bean" class="web.MysqlBean">
<%
    //判断用户是否登录
    String name=String.valueOf(request.getSession().getAttribute("name"));
    String account=String.valueOf(request.getSession().getAttribute("account"));
    String uid=String.valueOf(request.getSession().getAttribute("uid"));
    String coin=String.valueOf(request.getSession().getAttribute("coin"));
    String con=request.getParameter("con");
    if(con==null)
        con="";
    String gameid=request.getParameter("gid");
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
                    <button onclick="window.location.href='passage/control.jsp'">内容管理</button>
                    <button onclick="window.location.href='passage/createPassage.jsp'" style="margin-top: 10px">发布攻略</button>
                    <form method="post" action="ClearSession">
                        <input type="submit" value="退出" style="cursor: pointer;position:relative;top:20px;width: 50px;background-color: #03A9F4">
                    </form>
                </fieldset>
            </div>
        </div>
    </div>
</div>
<%}%>
<!-- login按钮 end -->
<!-- 搜索结果展示与搜索框 -->
<div>
    <form action="search.jsp"  method="post" class="search">
        <div style="width:600px;height:36px;">
            <input type="text" id="con" placeholder="输入想要查找的内容" style="width: 500px;height: 36px;border-radius:20px">
            <input id="gender" name="gender" type="submit"  value="Search" style="position: relative;left:-64px;width:60px;height:36px;border-radius:20px;background-color: #dfe8ff;">
        </div>
    </form>

    <div class="article">
        <%
            //System.out.println(con);
            String sql="select * from passages as p,users as u where p.uid=u.uid and p.gameId="+gameid+" and p.title like \'%"+con+"%\';";
            //System.out.println(sql);
            ResultSet set= bean.executeQuery(sql);
            while(set.next()){
                try {
                    out.write("<div class=\"article-list-block\">");
                    out.write("<div class=\"list-right\">");
                    out.write("<div class=\"article-title\">");
                    out.write("<a class=\"title-txt\" style=\"cursor: pointer;\" onclick=\"window.location.href='passage/showPassage.jsp?pid="+set.getString("pid")+"'\">"+set.getString("title")+"</a></div>");
                    out.write("<div class=\"cont\">");
                    out.write("<p class=\"row\">"+new String(Base64.getDecoder().decode(set.getString("content").getBytes()),"utf-8")+"</p></div>");
                    out.write("<div class=\"article-info\"><div class=\"readcomment\">");
                    out.write("<p> 阅读 "+set.getString("views")+"</p></div><div class=\"at\">");
                    out.write("<p class=\"author\">"+set.getString("userName")+"</p>");
                    out.write("<p class=\"article-time\">"+set.getString("changeTime").split(" ")[0]+"</p>");
                    out.write("</div></div></div></div>");
                }catch (Exception e){
                    System.out.println(e.getMessage());
                }

            }
        %>

        <!--
        <div class="article-list-block">
            <div class="list-right">
                <div class="article-title">
                    <a class="title-txt">123465</a>
                </div>
                <div class="cont">
                    <p class="row">123456</p>
                </div>
                <div class="article-info">
                    <div class="readcomment">
                        <p> 阅读 </p>
                    </div>
                    <div class="at">
                        <p class="author">用户昵称</p>
                        <p class="article-time">123456</p>
                    </div>
                </div>
            </div>
        </div>
        -->
    </div>
</div>
</jsp:useBean>
<!-- end -->
</body>
</html>
