<%-- 
    Document   : Home
    Created on : 20 Dec, 2015, 10:24:53 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!doctype html>
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



</head>
<body>
<!--Start wrapper -->
<div class="containerWrap">
 <!--start header -->
  <div class="header">
      <!--start logo -->
      <div class="logo">
        <h1>★SBI</h1>
    </div><!--end logo -->
    <body>
       
        <%
        String s=request.getParameter("u");
        session.setAttribute("uname",s);
        String s1=session.getAttribute("uname").toString();
       
        %>
        <h1>Welcome  <%= s1%> </h1>
            <div id="nav">  <li class="current"><a href="#">Home</a></li>
      <li><a href="#">SBI</a>
          <ul>
            <li><a href="#">Training</a>
                <ul>
                  <li><a href="#">NRI Services</a></li>
                  <li><a href="#">International Banking</a></li>
                  <li><a href="#">Corporate Banking</a></li>
                  <li><a href="#">Services</a></li>
                </ul>
            </li>
            <li><a href="#">The rates for school</a>
                <ul>
                  <li><a href="#">Video Tutorials</a></li>
                </ul>
            </li>
            <li><a href="#">Forum</a></li>
            <li><a href="#">Best Web Gallery</a></li>
          </ul>
      </li>
      <li><a href="#">Other Pages</a>
          <ul>
            <li><a href="#">Our Team</a>
                <ul>
                  <li><a href="#">Sub-Level Item</a></li>
                  <li><a href="#">Sub-Level Item</a>
                      <ul>

                        <li><a href="#">Level Item</a></li>
                        <li><a href="#">Level Item</a></li>
                        <li><a href="#">Level Item</a></li>
                      </ul>
                  </li>
                  <li><a href="#">Level Item</a></li>
                </ul>

            </li>
            <li><a href="#">Shop</a></li>
            <li><a href="#">Link Friends</a></li>
            <li><a href="#">Ou Side</a>
                <ul>
                  <li><a href="#">Sub-Level Item</a></li>
                  <li><a href="#">Sub-Level Item</a></li>

                  <li><a href="#">Sub-Level Item</a></li>
                </ul>
            </li>
          </ul>
      </li>
      <li><a href="#">About</a></li>
        <li><a href="http://www.imediacreatives.it">Imediacreatives</a></li>
    <li><a href="#">Register</a></li></div>
    <!--end navigation -->
    <div class="content" id="wrapper">
      <article>
        <h3 class="shad">Providing Best Sevice...</h3>
        <div class="btn">Read More</div>
        <div class="intro"></div>
        <hr>
        <h2 class="shadows">CONTACT US</h2>
      <!--contact form -->
        <form name="contactformfree" method="post" action="free_process.php" onSubmit="return validate.check(this)">
	<table width="400px" class="cffree">
	<tr>
	 <td colspan="2">
	  <p style="text-align:center">Fields marked with <span class="required_star"> * </span> are required.</p>
	 </td>
	</tr>
	<tr>
	 <td valign="top" class="cffree_td">
	  <label for="Full_Name" class="required">Full Name<span class="required_star"> * </span></label>
	 </td>
	 <td valign="top" class="cffree_td">
	  <input type="text" name="Full_Name" id="Full_Name" maxlength="80" style="width:250px">
	 </td>
	</tr>
	<tr>
	 <td valign="top" class="cffree_td">
	  <label for="Email_Address" class="required">Email Address<span class="required_star"> * </span></label>
	 </td>
	 <td valign="top" class="cffree_td">
	  <input type="text" name="Email_Address" id="Email_Address" maxlength="100" style="width:250px">
	 </td>
	</tr>
	<tr>
	 <td valign="top" class="cffree_td">
	  <label for="Telephone_Number" class="not-required">Telephone Number</label>
	 </td>
	 <td valign="top" class="cffree_td">
	  <input type="text" name="Telephone_Number" id="Telephone_Number" maxlength="100" style="width:250px">
	 </td>
	</tr>
	<tr>
	 <td valign="top" class="cffree_td">
	  <label for="Your_Message" class="required">Your Message<span class="required_star"> * </span></label>
	 </td>
	 <td valign="top" class="cffree_td">
	  <textarea style="width:250px;height:120px" name="Your_Message" id="Your_Message" maxlength="2000"></textarea>
	 </td>
	</tr>
	<tr>
	 <td colspan="2" style="text-align:center"  class="cffree_td">
	  <input type="submit" value=" Submit Form ">
	 </td>
	</tr>
	</table>
        </form>
      <!--end contact form -->
      </article><!--start article -->
      <aside>
        <hgroup>
          <h1>Welcome to my PASSION</h1>
          <h2>We have reason to believe that passion is for you</h2>
        </hgroup>
        <p>Kitesurfing masters will follow you all the way of training...</p>
        &#8212; &#8212; &#8212; &#8212;
        <h4>Kitesurf Center</h4>
        The center is equipped to simulate the sport. There is in addition, a swimming pool with large fans to simulate wind force.
        <p>My Progress on Kitesurf</p>
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
         <a href="#"><img src="images/youtube.png" alt="Video Kitesurf" width="64" height="64"></a>
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
  <div class="footerWrapper" id="footercontent">
    <li><a href="#">Home Page</a></li>
 <li><a href="#">Spire Parts</a></li>
 <li><a href="#">About Kite</a></li>
 <li><a href="#">Forum</a></li>
 <li><a href="#">Training</a></li>
 <li><a href="#">Terms</a></li>
 <li><a href="#">Site Map</a></li>
 <p><li><a href="http://www.imediacreatives.it" target="_blank">Coder & Design Imediacreatives </a>&copy; copyrigth - Yousite.com</li></p>
 </div>
</footer>
</div>
<!--end wrapper -->
<!-- Free template distributed by http://freehtml5templates.com -->
</body>
</html>

    </body>
</html>
