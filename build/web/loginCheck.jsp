<%-- 
    Document   : loginCheck
    Created on : 20 Dec, 2015, 9:39:03 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.bank.project.OpenURI,java.sql.ResultSet,com.bank.project.dbconnection,com.bank.project.serverConfig;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
            String s = request.getParameter("pass");
            System.out.println("s = " + s);
            String s1[] = s.split("/");
            String mob1 = request.getParameter("mob");
            System.out.println("mob1 = " + mob1);
            String mob = mob1.substring(1, mob1.length());
            System.out.println("mob = " + mob);

            System.out.println(s);

            String sql2 = "select * from opassreq where username='" + s1[1] + "' and mobno='" + mob + "' and mac='" + s1[2] + "'";
            System.out.println(sql2);
            ResultSet rs1 = new dbconnection().getData(sql2);
            if (rs1.next()) {
                System.out.println(s + "        " + s1[0] + "     " + s1[1] + "dddd");
                String sql = "select * from login where username='" + s1[1].trim() + "' and password='" + s1[0].trim() + "'";
                ResultSet rs = new dbconnection().getData(sql);
                if (rs.next()) {
                    String sql1 = "update login set password='0' where username='" + s1[1] + "'";
                    System.out.println("sql1 = " + sql1);
                    new dbconnection().putData(sql1);

                    new OpenURI().openBrowser("http://" + serverConfig.ip + ":8084/bank/Home.jsp?u=" + s1[1]);
                    System.out.println("opennnnnnnnnnnnnn" + "http://" + serverConfig.ip + ":8084/bank/Home.jsp?u=" + s1[1]);
                } else {
                    new OpenURI().openBrowser("http://" + serverConfig.ip + ":8084/bank/index.jsp?f=1");
                }
            } else {
                new OpenURI().openBrowser("http://" + serverConfig.ip + ":8084/bank/index.jsp?f=1");
            }

%>