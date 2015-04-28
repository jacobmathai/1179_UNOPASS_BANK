<%-- 
    Document   : Register
    Created on : Apr 7, 2015, 11:14:17 AM
    Author     : emaxsalalah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SBI</title>

<!--[if lt IE 9]>
 <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
<style type="text/css">
<!--
body {
	margin-top: 0px;
	background-image: url(images/bg.jpg);
	background-repeat: repeat-x;
	background-position: top;
	background-color: #E7E7E7;
}
-->
</style>
<link href="css/xom.css" rel="stylesheet" type="text/css">

<script src="free_validation.js"></script>
<script>
	required.add('Full_Name','NOT_EMPTY','Full Name');
	required.add('Email_Address','EMAIL','Email Address');
	required.add('Your_Message','NOT_EMPTY','Your Message')
	</script>
<script>
    function validatenull(frm)
{
 
           
	if(frm.uname.value=="")
	{
            document.getElementById('username').innerHTML="Enter user name";
		//alert("Enter User Name");
		frm.uname.focus();
		return false;
	}
        else
            {
                              
 
              document.getElementById("uname").innerHTML="";
             
            }
        
        if(frm.txtmail.value=="")
	{
            document.getElementById('m').innerHTML="Enter Email";
		//alert("Enter User Name");
		frm.txtmail.focus();
		return false;
	}
        else
            {
                              
 
              document.getElementById("m").innerHTML="";
             
            }
        
         
             
   }


</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
a:link {
	color: #D2D2D2;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FCFCFC;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
	color: #E9E9E9;
}
-->
</style>


    </head>
    <body>
      <div class="containerWrap">
 <!--start header -->
  <div class="header">
      <!--start logo -->
      <div class="logo">
        <h1>★SBI</h1>
    </div><!--end logo -->
    <!--start navigation -->
<form name="frm" action=""  method="post">
                                <table align="center">
                                    
                                    <tr>
                                        <td style="color: blue">
                                            User Name:
                                        </td>
                                        <td>
                                            <input type="text" name="uname" value=""></input>
                                        </td>
                                               
            <td><div id="username" style="color:red"></div></td>
           

                                    </tr>
                                    
                                    <tr>
                                        <td style="color: blue">
                                            Email ID:
                                        </td>
                                        <td>
                                            <input type="text"  name="txtmail" value=""></input>
                                        </td>
                                         <td><div id="m" style="color:red"></div></td>
           
                                    </tr>

                                    <tr>
                                        <td>&nbsp;&nbsp;</td>
                                        
                                        <td> <input type="submit" value="Submit" style="background: blue;color: white" onclick="return validatenull(frm);"></input>
                                           </td>
                                    </tr>
                                    
                                        
                                        
                                        <br></br>
                                        <br></br>
                                        <br></br>
                                        <br></br>
                                       
                                                            
                                </table>
                                      <table align="right">
                                             
                                           <br></br>
                                        <br></br>
                                        <br></br>
                                        <br></br>
                                          
                                   <aside>
                                        <div class="redbutton"><a href="#">Gallery</a></div>
       <div class="social">
       <a href="#"><img src="images/twitter.png" alt="Follow on Twitter" width="50" height="50"></a>
         <a href="#"><img src="images/youtube.png" alt="Video SBI" width="50" height="50"></a>
         <a href="#"><img src="images/facebook.png" alt="Become a fan" width="50" height="50"></a>
         <a href="#"><img src="images/flickr.png" alt="from Flickr" width="50" height="50"></a>
          </div>
       
 </aside>
                                        </table>

                            </form>
    </body>
</html>
