<%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/11/14
  Time: 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*" import="web.MysqlBean"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    MysqlBean bean=new MysqlBean();
    Statement sta=bean.getSta();
    ResultSet res=sta.executeQuery("select * from books");
    while(res.next()){
        out.write(res.getString(1));
    }
%>
</body>
</html>
