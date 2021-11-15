<%--
  Created by IntelliJ IDEA.
  User: lk955
  Date: 2021/10/8
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" import="java.util.*" import="java.text.*"%>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="#" method="post">
    <nobr>请选择用户</nobr>
    <select name="id">
        <option value="张三">张三</option>
        <option value="李四">李四</option>
        <option value="王五" >王五</option>
    </select><br>
    请输入内容<input type="text" name="con">
    <input type="submit" value="提交">
</form>
<table>
    <colgroup span="2" style="width:150px; background-color: red"></colgroup>
    <col style="background-color: green; width:300px; border: 3px solid blue;" >
    <tr>
        <th>用户</th>
        <th>时间</th>
        <th>内容</th>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");
        String name=(String) request.getParameter("id");
        String contt=request.getParameter("con");
        if(contt==null)
            return;
        Date date=new Date();
        SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
        application.setAttribute(ft.format(date),name+"|"+ft.format(date)+"|"+contt);//以|分隔姓名、时间、信息
        Enumeration names = application.getAttributeNames();
        List<String> list=new ArrayList<>();
        while(names.hasMoreElements()){
            try{
                Object objname=names.nextElement();
                if(application.getAttribute(objname.toString())!=null)
                {
                    String values=objname.toString();
                    list.add(values);
                }
            }
            catch (Exception e)
            {
                continue;
            }
        }
        Collections.sort(list);//按时间排序
            for(String i:list){
                String values=application.getAttribute(i).toString();
                String value[]=values.split("\\|");//切分数据
                //out.print(values+"<br>");
                if(value[0].equals("张三")||value[0].equals("李四")||value[0].equals("王五")){
                    //out.print(value[2]+"<br>");
                    out.print("<tr><td>"+value[0]+"</td><td>"+value[1]+"</td><td>"+value[2]+"</td></tr>");
                }
            }


    %>
</table>
</body>
</html>
