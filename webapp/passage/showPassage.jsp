<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:useBean id="bean" class="web.MysqlBean">
<head>

    <%
        String pid=request.getParameter("pid");
        bean.executeUpdate("update passages set views=views+1 where pid="+pid);
        ResultSet set=bean.executeQuery("select * from passages as p,games as g,users as u where p.uid=u.uid and p.gameId=g.gameId and p.pid="+pid+";");
        System.out.println(pid);
        set.next();
        //用户
        String username=String.valueOf(request.getSession().getAttribute("name"));
        String account=String.valueOf(request.getSession().getAttribute("account"));
        String useruid=String.valueOf(request.getSession().getAttribute("uid"));
        String coin=String.valueOf(request.getSession().getAttribute("coin"));
        //作者
        String title=set.getString("title");
        String authorname=set.getString("userName");
        String lastTime=set.getString("changeTime");

        Date date=new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//日期标准化
        String datenow=ft.format(date);
    %>
    <title><%=title%></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" type="text/css" href="../css/markdownStyle.css">
    <script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="../js/wangEditor.min.js"></script>
    <script src="../js/loginbutton.js"></script>
    <script src="../js/menu_jquery.js"></script>
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    <link href="../css/index.css" rel="stylesheet">
    <link href="../css/showpassage.css" rel="stylesheet">
</head>
<body style="background-color: #f3f4f6">
<!-- login按钮 用户没有登陆的情况下显示登录按钮，否则显示用户名 -->
<%if(username.equals("null")){%>
<div style="position: absolute;right: 0px;text-align: center">
    <div id="loginpop" style="position:relative;width: 100px">
        <a href="#" id="loginButton" onclick="window.location.href='login.jsp'"><span>Login</span></a>
    </div>
</div>
<%}else{%>
<div style="position: absolute;right: 0px;text-align: center">
    <div id="loginpop" style="width: 100px;">
        <a href="#" id="loginButton"><span><%=username%></span></a>
        <div id="loginBox" style="border-radius: 20px;width: 150px">
            <div id="loginForm"  style="border-radius: 20px;width: 150px">
                <fieldset id="body">
                    <span>UID</span>
                    <input type="text" name="uid" id="uid" disabled value="<%=useruid%>">
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
<div id="show">
    <!-- 文章作者显示 -->
    <div id="author">
        <a href="#"><%=authorname%></a><br>
        <div id="detail">
        <span>时长</span><br>
        <span>获赞</span><br>
        </div>
    </div>
    <!-- 文章内容显示 -->
    <div id="content">
        <span style="color: black;position: relative;right: 0px;font-size: 55px;top:-10px"><%=title%></span><br>
        <img class="view" src="../images/view.png"><span class="view" style="position:relative;top: -20px;"><%=set.getString("views")%></span>
        <div id="content1">
            <%
                out.write(new String(Base64.getDecoder().decode(set.getString("content").getBytes()),"utf-8"));
            %>
        </div>
    </div>
</div>
</body>
</jsp:useBean>
</html>
