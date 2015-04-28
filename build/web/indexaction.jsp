<%-- 
    Document   : indexaction
    Created on : 30 Oct, 2015, 8:00:00 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.ResultSet,com.bank.project.dbconnection,java.net.*,java.io.*,com.bank.project.serverConfig,com.bank.project.RandomNom,com.bank.project.SHA2hashing;"%>
<%
            out.print("waiting for password from user........");
            String uname = request.getParameter("uname");
            try {
                Socket soc = new Socket("localhost", 9999);
                OutputStream outp = soc.getOutputStream();
                PrintStream ps = new PrintStream(outp);
                String sql = "select * from login where username='" + uname + "'";

                ResultSet rs = new dbconnection().getData(sql);
                int i = 0;
                if (rs.next()) {
                    i = rs.getInt("loginno");
                }

                ps.println(uname);
                ps.println("login");
                ps.println(i + "");
                ps.println(uname);
                ps.println("exit");
                String ran = new RandomNom().geneRatePass(uname, i);
                String rand = "";
                for (int j = 0; j < 1000 - i; i++) {
                    rand = new SHA2hashing().doHash(ran);
                    ran = rand;
                }
                System.out.println(rand);
                //System.out.println(rand);
                String sql2 = "update login set password='" + rand + "',loginno=" + (i + 1) + " where username='" + uname + "'";
                new dbconnection().putData(sql2);

            } catch (Exception e) {
                e.printStackTrace();
            }




%>
