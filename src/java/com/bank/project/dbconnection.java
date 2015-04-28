package com.bank.project;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;


/**
 *
 * @author Gracemol
 */
public class dbconnection {
    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;
    public dbconnection()
    {
        try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost/banks","root","root");
        stmt=con.createStatement();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    public ResultSet getData(String sql)
    {
        try {

            rs=stmt.executeQuery(sql);
        } catch (Exception e) {
            System.out.println("error at getdata");
            e.printStackTrace();
        }
        return rs;
    }
    public int putData(String sql)
    {    int i=0;
        try {

            i=stmt.executeUpdate(sql);
        } catch (Exception e) {
                System.out.println("errot at putdata");
            e.printStackTrace();
        }
        return i;
    }
    public void dbclose()
    {try {
            con.close();
        } catch (Exception e) {
                System.out.println("errot at dbclose"+e);
        }

    }

}

    
    

