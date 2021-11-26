<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="web.MysqlBean" %><%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/11/26
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">首页</a></li>
                <li><a href="#" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">管理员</a></li>
                <li><a href="#">修改密码</a></li>
                <li><a href="#">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="userControl.jsp"><i class="icon-font">&#xe008;</i>用户管理</a></li>
                        <li><a href="passageControl.jsp"><i class="icon-font">&#xe005;</i>攻略管理</a></li>
                        <li><a href="../design.html"><i class="icon-font">&#xe006;</i>分类管理</a></li>
                        <li><a href="../design.html"><i class="icon-font">&#xe004;</i>留言管理</a></li>
                        <li><a href="../design.html"><i class="icon-font">&#xe012;</i>评论管理</a></li>
                        <li><a href="../design.html"><i class="icon-font">&#xe052;</i>友情链接</a></li>
                        <li><a href="../design.html"><i class="icon-font">&#xe033;</i>广告管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="../system.html"><i class="icon-font">&#xe017;</i>系统设置</a></li>
                        <li><a href="../system.html"><i class="icon-font">&#xe037;</i>清理缓存</a></li>
                        <li><a href="../system.html"><i class="icon-font">&#xe046;</i>数据备份</a></li>
                        <li><a href="../system.html"><i class="icon-font">&#xe045;</i>数据还原</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="../index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">作品管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="search-sort" id="">
                                    <option value="">全部</option>
                                    <option value="19">精品界面</option><option value="20">推荐界面</option>
                                </select>
                            </td>
                            <th width="70">关键字:</th>
                            <td><input class="common-text" placeholder="关键字" name="keywords" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="insert.html"><i class="icon-font"></i>新增作品</a>
                        <a id="batchDel" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                        <a id="updateOrd" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>ID</th>
                            <th>昵称</th>
                            <th>账户</th>
                            <th>最后登录时间</th>
                            <th>操作</th>
                        </tr>
                        <!--
                        <tr>
                            <td class="tc"><input name="id[]" value="59" type="checkbox"></td>
                            <td>59</td>
                            <td title="发哥经典"><a target="_blank" href="#" title="发哥经典">发哥经典</a> …
                            </td>
                            <td>admin</td>
                            <td>2014-03-15 21:11:01</td>
                            <td>
                                <a class="link-update" href="#">修改</a>
                                <a class="link-del" href="#">删除</a>
                            </td>
                        </tr>
                        -->
                        <%
                            int nowpage=1;
                            int totalpage=1;
                            int pagesize=10;
                            int total=1;
                            MysqlBean bean=new MysqlBean();
                            ResultSet set=null;
                            try {
                                if(request.getParameter("nowpage")!=null)
                                    nowpage=Integer.parseInt(request.getParameter("nowpage"));
                                String sql = "select count(*) as total from users;";  //查询语句
                                set= bean.executeQuery(sql);
                                set.next();
                                total=set.getInt(1);
                                totalpage= (int) Math.ceil(total*1.0/pagesize);
                                if(nowpage>totalpage){
                                    nowpage=totalpage;
                                }
                                if(nowpage<0){
                                    nowpage=1;
                                }
                                Connection con= bean.getCon();
                                Statement sta=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                                set=sta.executeQuery("select * from users");
                                set.absolute((nowpage-1)*pagesize+1);
                                for(int i=0;i<pagesize;i++){
                                    out.write("<tr><td class=\"tc\"><input name=\"id[]\" value=\""+set.getString("uid")+"\" type=\"checkbox\"></td>");
                                    out.write("<td>"+set.getString("uid")+"</td><td>"+set.getString("userName")+"</td><td>"+set.getString("userAcc")+"</td>");
                                    out.write("<td>"+set.getString("lastdate")+"</td>");
                                    out.write("<td><a class=\"link-update\" href=\"#\">修改</a>  <a class=\"link-del\" href=\"#\">删除</a>");
                                    out.write("</td></tr>");
                                    if(!set.next())
                                        break;;
                                }
                            }catch (Exception e){
                                System.out.println(e.getMessage());
                            }
                        %>
                    </table>
                    <div class="list-page">
                        <form>
                            请您输入跳转页面<input type="text" name="nowpage" size=1>
                            <input type="submit" value="跳转">
                            <%=nowpage %>/<%=totalpage %>
                            共有<%=total %>条数据
                            <%
                                if(nowpage==1)
                                    out.print("首页 上一页 <a href=\"userControl.jsp?nowpage="+(nowpage+1)+"\">下一页</a> <a href=\"userControl.jsp?nowpage="+totalpage+"\">尾页</a>");
                                else if(nowpage==totalpage)
                                    out.print("<a href=\"userControl.jsp\">首页</a>  <a href=\"userControl.jsp?nowpage="+(nowpage-1)+"\">上一页</a> 下一页 尾页");
                                else
                                    out.print("<a href=\"userControl.jsp\">首页</a>  <a href=\"userControl.jsp?nowpage="+(nowpage-1)+"\">上一页</a> <a href=\"userControl.jsp?nowpage="+(nowpage+1)+"\">下一页</a> <a href=\"userControl.jsp?nowpage="+totalpage+"\">尾页</a>");
                            %>
                        </form>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
