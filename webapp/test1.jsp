<%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/9/19
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*"%>
<html>
<head>
    <title>Home</title>
    <script src="https://cdn.staticfile.org/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="js/cookie.js"></script>
</head>
<body>
<%
    String a = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");  //驱动程序名
        String url = "jdbc:mysql://localhost:3306/games_wiki"; //数据库名
        String username = "root";  //数据库用户名
        String password = "lk1441553496";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

        if(conn != null){
            out.print("数据库连接成功！");
            out.print("<br />");
            Statement stmt;
            ResultSet rs;
            String sql = "select * from games;";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            out.print("查询结果：");
            out.print("<br />");
            out.println("ID"+"  "+"NAME"+"  "+"index_html");
            out.print("<br />");
            while (rs.next()) {
                out.println(rs.getString("gameId")+"   &nbsp  "+rs.getString("gameName")+"  &nbsp "+rs.getString("gameIh")+"<br>"); //将查询结果输出
                a=rs.getString("gameIh");
            }
        }
        else{
            out.print("连接失败！");
        }
    }catch (Exception e) {
        out.print(e.getMessage());
    }
%>
<div>
    <% for(int i=0;i<10;i++){%>
    <a href="<%= a %>">点击</a><br>
    <%}%>
</div>
<div>
    <%
        Cookie cookies[]=request.getCookies();
        out.print(cookies[3].getName());

    %>
</div>
<form>
    请输入用户名密码<br>
    <input type="text" id="test" value="none">
    <input type="text" id="account"><br>
    <input type="text" id="passwd"><br>
    <input type="button" id="sub" onclick="aa()" value="submit">
</form>
</body>
</html>
