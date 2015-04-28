

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.bank.project.dbconnection;"%>

<%


String mob1=request.getParameter("mob");
String mob=mob1.substring(1,mob1.length());

String rand=request.getParameter("rand");
String s[]=rand.split("/");
System.out.println("in?????????????????????????"+s[0]);
System.out.println(s[1]);
System.out.println(rand);
 String sql1="update opassreq set mac='"+s[1]+"' where mobno='"+mob+"' and randomno='"+s[0]+"'";

    String sql2="update login set loginno= where username='"+s[2]+"'";
     System.out.println(sql1);
      System.out.println(sql2);
    new dbconnection().putData(sql2);
int i=new dbconnection().putData(sql1);
if(i>0)
    {
    out.print("success");
    }
else
    {
        out.print("failed");
        }

%>