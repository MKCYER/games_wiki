<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/11/27
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户信息</title>
</head>
<%
    String uid=request.getParameter("uid");
    String name=null;
    String email=null;
    String account=null;
    String passwd=null;
%>
<body>
<jsp:useBean id="bean" class="web.MysqlBean">
    <%
        ResultSet set= bean.getUserMessage(uid);
        if(set.next()){
            name=set.getString("userName");
            email= set.getString("email");
            account=set.getString("userAcc");
            passwd=set.getString("userPasswd");
        }
    %>
</jsp:useBean>
<form action="UpdateUser" method="post">
    <p>uid</p>
    <input type="text" readonly name="uid" id="uid" value=<%=uid%>><br>
    <p>账户</p>
    <input type="text" name="account" id="account" value=<%=account%>><br>
    <p>邮箱</p>
    <input type="text" name="email" id="email" value=<%=email%>><br>
    <p>密码</p>
    <input type="text" name="passwd" id="passwd" value=<%=passwd%>><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
