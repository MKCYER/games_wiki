package web;

import java.sql.*;
import java.util.*;
public class MysqlBean {
    private Connection con=null;
    private Statement sta=null;
    public MysqlBean(){
        try {
            Class.forName("com.mysql.jdbc.Driver");  //驱动程序名
            String url = "jdbc:mysql://localhost:3306/games_wiki"; //数据库名
            String username = "root";  //数据库用户名
            //String passwd = "bujisql";  //服务器数据库密
            con = DriverManager.getConnection(url, username, passwd);
            sta = con.createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Connection getCon() {
        return con;
    }

    public Statement getSta() {
        return sta;
    }
}
