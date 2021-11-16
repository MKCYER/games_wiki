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
            //String passwd = "bujisql2021";  //服务器数据库密
            String passwd="lk1441553496";
            con = DriverManager.getConnection(url, username, passwd);
            sta = con.createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    private boolean sql_inj(String str){
        String inj_str = "'|,|=|+|*|(|)|^|;";
        String inj_stra[] = inj_str.split("|");
        for (int i=0 ; i<inj_stra.length ; i++ ){
            if (str.contains(inj_stra[i])){
                return true;
            }
        }
        return false;
    }
    public boolean executeLogin(String account,String password) throws SQLException {
        if(sql_inj(account)||sql_inj(password))
            return false;
        String sql = "select * from users " + "where userAcc=" + "\"" + account + "\"" + ";";  //查询语句
        ResultSet res=sta.executeQuery(sql);
        while (res.next()) {
            if (password.equals(res.getString("userPasswd")))
                return true;
        }
        return false;
    }
    public int executeUpdate(String sql) throws SQLException {
        return sta.executeUpdate(sql);
    }
    public boolean insertUsers(String name,String account,String passwd,String email) throws SQLException {
        if(sql_inj(name)||sql_inj(account)||sql_inj(email)||sql_inj(passwd))
            return false;
        Date date=new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");//日期标准化
        String datenow=ft.format(date);
        String sql="insert into users(userName,email,userAcc,userPasswd,lastdate) values(\""+name+"\",\""+email+"\",\""+account+"\",\""+passwd+"\",\""+datenow+"\");";
        if(sta.executeUpdate(sql)>=1)
            return true;
        return false;
    }
    public ResultSet executeQuery(String sql) throws SQLException {
        return sta.executeQuery(sql);
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
