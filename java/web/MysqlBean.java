package web;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

public class MysqlBean {
    private Connection con=null;
    private Statement sta=null;
    public MysqlBean(){
        try {
            Class.forName("com.mysql.jdbc.Driver");  //驱动程序名
            String url = "jdbc:mysql://localhost:3306/games_wiki"; //数据库名
            String username = "root";  //数据库用户名
            String passwd = "bujisql2021";  //服务器数据库密
            //String passwd="lk1441553496";
            con = DriverManager.getConnection(url, username, passwd);
            sta = con.createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    public void UpdateDate(String uid){
        Date date=new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//日期标准化
        String datenow=ft.format(date);
        String userDate=null;
        try {
            userDate=sta.executeQuery("select lastdate from users where uid="+uid+";").getString(1);

        } catch (SQLException e) {
            System.out.println("获取用户date失败");
        }
        try {
            sta.executeUpdate("update users set lastdate=\""+datenow+"\" where uid="+uid+";");
        } catch (SQLException e) {
            System.out.println("更新userdate出错");
        }
        int value=Integer.parseInt(userDate.split(" ")[0].split("-")[2]);
        if(Math.abs(value-Integer.parseInt(datenow.split(" ")[0].split("-")[2]))>=1){
            try {
                sta.executeUpdate("update users set coinNum=coinNum+1 where uid="+uid+";");
            } catch (SQLException e) {
                System.out.println("更新硬币出错");
            }
        }
    }
    public Connection getCon() {
        return con;
    }

    public Statement getSta() {
        return sta;
    }
}
