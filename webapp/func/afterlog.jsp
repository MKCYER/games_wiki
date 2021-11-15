<%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/9/19
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Games Wiki</title>
    <style>
        body {
            background: url("images/index_background.png") no-repeat center center fixed;
            /*兼容浏览器版本*/
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            filter:alpha(opacity=50);
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/p1.css">
</head>
<body>
<div class="div_head" >
    <div class="div_head1">
        <div class="div_head2" style="position:relative;left:430px;top:-5px;width:70px;background-color:#38f" ><font size="1" color="white" >登录</font></div>
    </div>
</div>
<div class="home_page_gutter" data-panel="{&quot;maintainY&quot;:true,&quot;flow-children&quot;:&quot;column&quot;}" style="position:relative;top: -150px;">
    <div class="div">
        <div class="gutter_header">
            <a href="https://store.steampowered.com/digitalgiftcards/?snr=1_4_4__125"><img class="home_page_gutter_giftcard" src="https://store.st.dl.pinyuncloud.com/public/images//gift/steamcards_promo_02.png"></a><br>
            礼物卡
        </div>
        <!-- 设置搜素框-->
        <div class="div_body" style="position: relative;left: 500px;top: 50px">
            <div class="div_body1" >
                <form action="https://www.baidu.com/s"  method="get"  >
                    <input style="width:500px;height:36px;"type="text"/><input id="gender" name="gender" type="submit"  value="Search"style="width:100px;height:36px;"/>
                </form>
            </div>
        </div>
        <!-- 设置显示框，后期与数据库连接-->
        <div style="width: 200px;height: 400px; overflow-x:hidden; position:relative;left:200px;top:-180px;">
            <p>ZTY</p>
            <p>LPJ</p>
            <p>LXH</p>
            <p>LXH</p>
            <% for (int i=0;i<100;i++){ %>
            <p class="ppp">LXH</p>
            <%}%>
        </div>


    </div>
</div>
</body>
</html>
