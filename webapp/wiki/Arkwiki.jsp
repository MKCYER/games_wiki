<%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/11/19
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>明日方舟-Arknights</title>
    <link rel="stylesheet" href="Arkwiki.css" type="text/css">
    <link rel="stylesheet" href="../css/loginbutton.css" type="text/css">
    <script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="../js/loginbutton.js"></script>
</head>
<body style="background-color: black">
<%
    //判断用户是否登录
    String name=String.valueOf(request.getSession().getAttribute("name"));
    String account=String.valueOf(request.getSession().getAttribute("account"));
    String uid=String.valueOf(request.getSession().getAttribute("uid"));
    String coin=String.valueOf(request.getSession().getAttribute("coin"));
%>
<div class="ALL">
    <!-- login按钮 用户没有登陆的情况下显示登录按钮，否则显示用户名 -->
    <%if(name.equals("null")){%>
    <div style="position: absolute;right: 0px;text-align: center">
        <div id="loginpop" style="position:relative;width: 100px;">
            <a href="#" id="loginButton" onclick="window.location.href='../login.jsp'"><span>Login</span></a>
        </div>
    </div>
    <%}else{%>
    <div style="position: absolute;right: 0px;text-align: center">
        <div id="loginpop" style="width: 100px;">
            <a href="#" id="loginButton" ><span><%=name%></span></a>
            <div id="loginBox" style="border-radius: 20px;width: 150px">
                <div id="loginForm"  style="border-radius: 20px;width: 150px">
                    <fieldset id="body">
                        <span>UID</span>
                        <input type="text" name="uid" id="uid" disabled value="<%=uid%>">
                        <span>账号</span>
                        <input type="text" name="uid" id="account" disabled value="<%=account%>">
                        <span>硬币数</span>
                        <input type="text" name="coin" id="coin" disabled value="<%=coin%>">
                        <button onclick="window.location.href='passage/createPassage.jsp'">发布攻略</button>
                        <form method="post" action="../ClearSession">
                            <input type="submit" value="退出" style="cursor: pointer;position:relative;top:15px;width: 50px;background-color: #03A9F4">
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <%}%>
    <!-- login按钮 end -->
    <!-- 无线循环播放图片 -->
    <div class="GG" id="top">
        <div class="font">
            <i onclick="window.location.href='showwiki.jsp?gid=3'" style="cursor: pointer">攻略</i>
        </div>
        <div id="demo">
            <div id="indemo">
                <div id="demo1">
                    <a href="#"><img src="../images/img1.png" ></a>
                    <a href="#"><img src="../images/img1.png" ></a>
                    <a href="#"><img src="../images/img1.png" ></a>
                    <a href="#"><img src="../images/img1.png" ></a>
                    <a href="#"><img src="../images/img1.png" ></a>
                    <a href="#"><img src="../images/img1.png" ></a>
                </div>
                <div id="demo2"></div>
            </div>
        </div>
        <script>
            var speed=10;
            var container = document.getElementById("indemo");
            var tab=document.getElementById("demo");
            var tab1=document.getElementById("demo1");
            var tab2=document.getElementById("demo2");
            tab2.innerHTML=tab1.innerHTML;
            function Marquee(){
                if(tab2.offsetWidth-tab.scrollLeft<=0)
                    tab.scrollLeft-=tab1.offsetWidth;
                else{

                    tab.scrollLeft++;
                }
            }
            var MyMar=setInterval(Marquee,speed);
            tab.onmouseover=function() {clearInterval(MyMar)};
            tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
        </script>

        <div class="mainbody2">
            <table class="tab">
                <tr>
                    <td><a href="#" target="_blank">
                        <span1>最新</span>
                            <span2>2020.08.10</span>
                                <span3>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </span>
                                    <h1>明日方舟制作组通讯#4</h1>
                                    <a href="#" class="more">
                                        READ MORE&nbsp;+&nbsp;
                                    </a>
                    </a></td>
                    <td><a href="#" target="_blank">
                        <span1>新闻</span>
                            <span2>2020.08.09</span>
                                <span3>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </span>
                                    <h1>[活动预告]SideStory[火蓝之心]复刻即将开启</h1><a href="#" class="more">
                                    READ MORE&nbsp;+&nbsp;
                                </a>
                    </a></td>
                    <td><a href="#" target="_blank">
                        <span1>活动</span>
                            <span2>2020.08.08</span>
                                <span3>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </span>
                                    <h1>明日方舟制作组通讯#3</h1><a href="#" class="more">
                                    READ MORE&nbsp;+&nbsp;
                                </a>
                    </a></td>
                </tr>
                <tr>
                    <td><a href="#" target="_blank">
                        <span1>公告</span>
                            <span2>2020.08.11</span>
                                <span3>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </span>
                                    <h1>[明日方舟]8月12号闪断更新公告</h1><a href="#" class="more">
                                    READ MORE&nbsp;+&nbsp;
                                </a>
                    </a></td>
                    <td><a href="#" target="_blank">
                        <span1>公告</span>
                            <span2>2020.08.10</span>
                                <span3>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </span>
                                    <h1>[明日方舟]8月10号封禁名单</h1><a href="#" class="more">
                                    READ MORE&nbsp;+&nbsp;
                                </a>
                    </a></td>
                    <td><a href="#" target="_blank">
                        <span1>公告</span>
                            <span2>2020.08.03</span>
                                <span3>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </span>
                                    <h1>[明日方舟]8月4号闪断更新公告</h1><a href="#" class="more">
                                    READ MORE&nbsp;+&nbsp;
                                </a>

                    </a></td>
                </tr>
            </table>
        </div>
        <div class="more1"><a>→&nbsp;&nbsp;更多情报</a></div>
    </div>
</body>
</html>
