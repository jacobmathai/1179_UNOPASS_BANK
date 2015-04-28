<%-- 
    Document   : index
    Created on : 30 Oct, 2015, 9:53:13 AM
    Author     : Acer
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

        <script>
            function validate()
            {
                if(document.getElementById("uname").value=="")
                {
                    alert("enter the username");
                    document.getElementById("uname").focus();
                    return false;

                }
                if(document.getElementById("Mob").value=="")
                {
                    alert("enter the password");
                    document.getElementById("Mob").focus();
                    return false;

                }
            }
        </script>
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
    <div id="nav">  <li class="current"><a href="#">Home</a></li>
      <li><a href="#">SBI</a>
          <ul>
            <li><a href="#">PERSONAL BANKING</a>
                <ul>
                  <li><a href="#">PERSONAL DEPOSIT</a></li>
                  <li><a href="#">DEPOSIT SCHEMES</a></li>
                  <li><a href="#">EDUCATIONAL LOAN</a></li>
                  <li><a href="#">GOLD LOAN</a></li>
                </ul>
            </li>
            <li><a href="#">INTERNATIONAL BANKING</a>
                <ul>
                  <li><a href="#">WHOLESALE BANKING</a></li>
                   <li><a href="#">GLOBAL SALE SERVICES</a></li>
                    <li><a href="#">OUR SERVICE</a></li>
                </ul>
            </li>
            <li><a href="#">CORPORATE BANKING</a></li>
            <li><a href="#">SERVICES</a></li>
          </ul>
      </li>
      <li><a href="#">INTERNET BANKING</a>
                <li><a href="#">CONTACT US</a></li>
        <li><a href="http://www.imediacreatives.it">GROUP COMPANIES</a></li>
    <li><a href="#">ABOUT US</a></li></div>
    <!--end navigation -->
    <div class="content" id="wrapper">
      <article>
        <h3 class="shad">The Banker to Every Indian..</h3>
      
        <div class="intro"></div>
        <hr>
            <h2 class="shadows" style="color: blue">Login Here..</h2>
            <!--contact form --><fieldset>
                <center> <h2 style="color: blue">Login</h2></center>
                        <p>
                            <form action="indexaction.jsp" method="post">
                                <table>
                                    <tr>
                                        <td style="color: blue">
                                            UserName:
                                        </td>
                                        <td>
                                            <input type="text" id="uname" name="uname"></input>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>&nbsp;&nbsp;</td>
                                        
                                        <td> <input type="submit" value="Login" style="background: blue;color: white" onclick="return validate()"></input>
                                           </td>
                                    </tr>
                                    <tr>
                                        <td style="color: red">
                                            <%
                                                        String st = request.getParameter("f");
                                                        if (st != null) {
                                                            if (st.equals("1")) {
                                                                   out.print("Entered wrong username or password");
                                                            }
                                                            if (st.equals("2")) {
                                                                out.print("Entered wrong username or password");
                                                            }
                                                        }

                                            %>
                                        </td>
                                    </tr>
                                </table>

                            </form>
                        </p> <a  style="color: blue" href="#" class="selected">Forgot Password.</a>
                        <!--end contact form --></fieldset>
     
      </article><!--start article -->
      
      <aside>
        <hgroup>
          <h1>Welcome to SBI</h1>
          <h2>SBI Bank Freedom plus is now SBI Everywhere</h2>
        </hgroup>
         
          
        <p>SBI will help you for building a better tomorrow...</p>
        &#8212; &#8212; &#8212; &#8212;
         <p>My Progress on SBI</p>
<progress value="30" max="100"></progress>
     <div class="thumb">
       <ul class="thumbinail">
    <li><a href="…"><img src="images/kite1.jpg" alt=""></a></li>
    <li><a href="…"><img src="images/kite2.jpg" alt=""></a></li>
    <li><a href="…"><img src="images/kite3.jpg" alt=""></a></li>
    <li><a href="…"><img src="images/kite4.jpg" alt=""></a></li>
  </ul>
       <div class="redbutton"><a href="#">Gallery</a></div>
       <div class="social">
       <a href="#"><img src="images/twitter.png" alt="Follow on Twitter" width="64" height="64"></a>
         <a href="#"><img src="images/youtube.png" alt="Video SBI" width="64" height="64"></a>
         <a href="#"><img src="images/facebook.png" alt="Become a fan" width="64" height="64"></a>
         <a href="#"><img src="images/flickr.png" alt="from Flickr"></a>
          </div>
        </div>
 </aside>
 </div>
  </div>
 <!--start footer -->
  <footer>
 <div class="top">
 <!--end footer -->
 </div>
                       

                        <p></p>
                        <ul>
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                        </ul>
 <ul>
                       

                    </ul> </div>

  
</div>
                
    </body>
</html>
