<%@page contentType="text/html" pageEncoding="UTF-8" import="com.bank.project.dbconnection,java.sql.ResultSet;"%>



<%
            String mob1 = request.getParameter("mob");
            String mob = mob1.substring(1, mob1.length());

            String rand = request.getParameter("rand");
            String s[] = rand.split("/");

            System.out.println("in?????????????????????????" + s[0]);
            System.out.println(s[1]);
            System.out.println(rand);
            String check = "select * from login where username='" + s[2] + "'";
            ResultSet rs1 = new dbconnection().getData(check);
            if ((rs1.next())) {
                out.print("exist");
            } else {
                String sql = "select * from opassreq where randomno='" + s[0] + "' and username='" + s[2] + "'";
                System.out.println(sql);
                ResultSet rs = new dbconnection().getData(sql);
                if (rs.next()) {

                    String sql1 = "update opassreq set mac='" + s[1] + "' where mobno='" + mob + "' and randomno='" + s[0] + "'";
                    String sql2 = "insert into login(username,loginno) values('" + s[2] + "',0)";
                    System.out.println(sql1);
                    System.out.println(sql2);
                    new dbconnection().putData(sql2);
                    int i = new dbconnection().putData(sql1);
                    if (i > 0) {
                        out.print("success");
                    } else {
                        out.print("failed");
                    }
                } else {
                    out.print("failed");
                }
            }

//response.sendRedirect("index.jsp");
%>
