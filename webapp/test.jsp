<%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/11/21
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="css/markdownStyle.css" rel="stylesheet"></head>
</head>
<body>
<%
    out.write(request.getParameter("uid"));
    System.out.println(1);
%>
</body>
</html>
