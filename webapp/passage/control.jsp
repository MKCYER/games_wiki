<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>攻略管理</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <title>文章创作</title>
    <script src="../js/showdown.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/markdownStyle.css">
    <script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="../js/wangEditor.min.js"></script>
    <script src="../js/loginbutton.js"></script>
    <script src="../js/menu_jquery.js"></script>
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    <link href="../css/index.css" rel="stylesheet">
    <link href="../css/articlelist.css" rel="stylesheet">
</head>
<body style="background-color: #f5f6f7">
    <%
    //判断用户是否登录
    String name=String.valueOf(request.getSession().getAttribute("name"));
    String account=String.valueOf(request.getSession().getAttribute("account"));
    String uid=String.valueOf(request.getSession().getAttribute("uid"));
    String coin=String.valueOf(request.getSession().getAttribute("coin"));
%>
<!-- login按钮 -->
    <%if(name.equals("null")){
            response.sendRedirect("../games_wiki.jsp");
        }else{%>
<div style="position: absolute;right: 0px;text-align: center">
    <div id="loginpop" style="width: 100px;">
        <a href="#" id="loginButton" ><span><%=name%></span></a>
        <div id="loginBox" style="border-radius: 20px;width: 150px">
            <div id="loginForm"  style="border-radius: 20px;width: 150px">
                <fieldset id="body">
                    <span>UID</span>
                    <input type="text" name="uid" id="uid" readonly value=<%=uid%>>
                    <span>账号</span>
                    <input type="text" name="account" id="account" disabled value="<%=account%>">
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
<div id="fc">
    <a>发布</a>
</div>
<div class="article">
<jsp:useBean id="bean" class="web.MysqlBean">
    <%
        ResultSet set=bean.executeQuery("select * from passages where uid="+uid);
        while(set.next()){
            out.write("<div class=\"article-list-block\">");
            out.write("<div class=\"list-right\">");
            out.write("<div class=\"article-title\">");
            out.write("<p class=\"title-txt\">"+set.getString("title")+"</p>");
            out.write("<p class=\"article-time\">"+set.getString("changeTime")+"</p></div>");
            out.write("<div class=\"article-info\">");
            out.write("<p class=\"readcomment\"> 阅读 "+set.getString("views")+"</p><div>");
            out.write("<a class=\"oper\" href=\"updatePassage.jsp?pid="+set.getString("pid")+"\">编辑</a>");
            out.write("<a class=\"del\" href=\"DelPassage?pid="+set.getString("pid")+"\" onclick=\"return disp_confirm()\">删除</a>");
            out.write("</div></div></div></div>");
        }
    %>
</jsp:useBean>
</div>
<script>
    function disp_confirm(){
        return confirm("确认删除");
    }
</script>
</body>
</html>
