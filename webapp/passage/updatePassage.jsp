<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <title>文章修改</title>
    <script src="../js/showdown.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/markdownStyle.css">
    <script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="../js/wangEditor.min.js"></script>
    <script src="../js/loginbutton.js"></script>
    <script src="../js/menu_jquery.js"></script>
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="all" />
    <link href="../css/index.css" rel="stylesheet">
</head>
<body>
<%
    //判断用户是否登录
    String name=String.valueOf(request.getSession().getAttribute("name"));
    String account=String.valueOf(request.getSession().getAttribute("account"));
    String uid=String.valueOf(request.getSession().getAttribute("uid"));
    String coin=String.valueOf(request.getSession().getAttribute("coin"));
    String pid=request.getParameter("pid");
%>
<!-- login按钮 用户没有登陆的情况下显示登录按钮，否则显示用户名 -->
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
<jsp:useBean id="bean" class="web.MysqlBean">
<div class="site">
    <!-- 出入框的格式需要在js中改变-->
    <select name="games" id="games">
        <option value="-1">请选择所属游戏</option>
            <%
                ResultSet set=bean.executeQuery("select * from games;");
                while (set.next()){
                    out.write("<option value="+set.getString("gameId")+">"+set.getString("gameName")+"</option>");
                }
                try {
                    set=bean.executeQuery("select * from passages where pid="+pid+";");
                } catch (SQLException e) {
                    System.out.println(e.getMessage());
                }
                set.next();
                if(!set.getString("uid").equals(uid))
                    response.sendRedirect("control.jsp");
                String content= null;
                try {
                    content = new String(Base64.getDecoder().decode(set.getString("content").getBytes()),"utf-8");
                } catch (SQLException e) {
                    System.out.println(e.getMessage());
                }
            %>
    </select><span id="tip1" style="color: red"></span><br>
    <span id="con" style="display: none"><%=content%></span>
    <span id="pidt" style="display: none"><%=pid%></span>
    <input type="text" name="head" id="head" placeholder="请输入标题" value="<%=set.getString("title")%>" style="height: 30px;width: 260px"><span style="color: red" id="tip"></span><br>
    <div id="editor" style="height: 80%;"><!-- 键盘每次点击实时调用 -->
    </div>
    <script src="../js/updatemarkdown.js"></script>
    <script>
        function aa(){
            editor.txt.html(document.getElementById("con").innerHTML);
        }
        window.onload=aa;
    </script>
    <button class="submit" onclick="post()">提交</button>
</div>
</jsp:useBean>
</body>
</html>
