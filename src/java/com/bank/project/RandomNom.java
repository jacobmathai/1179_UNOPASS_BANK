/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bank.project;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;
/**
 *
 * @author kites-javaa
 */
public class RandomNom {
        static int i=0;


    public String geneRatePass(String uname, int i) throws SQLException {
           String re="";
        String sql = "select * from opassreq where username='" + uname + "'";
        ResultSet rs = (ResultSet) new dbconnection().getData(sql);
        if (rs.next()) {
         re=rs.getString("randomno");
        }
        long a =Long.parseLong(re) ;
        long k = (a) ^ (999 - i);
        int m;
        String s1 = "";
        for (int j = 0; j < 5; j++) {
            m = i + (65 + (i ^ j));
           // System.out.println("mmmm" + m);
            s1 += (char) m;
        }
      //  System.out.println(s1);
      //  System.out.println(k + "" + s1);
        String p = k + "" + s1;
        return p;
    }
    public static void main(String[] args) throws SQLException {
        System.out.println(System.currentTimeMillis());
        //jsp forgot password
        //username
        //email
        //button click----action page---get emaiid and user name---system.currenttime----table insert ---send through mail
    //next page otp page---password enter==select * from table where username=username and pass=otp==home.jsp
    }
}
