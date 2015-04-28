package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>MY KITESURF EXAMPLE</title>\n");
      out.write("\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write(" <script src=\"http://html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("  <![endif]-->\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write("body {\n");
      out.write("\tmargin-top: 0px;\n");
      out.write("\tbackground-image: url(images/bg.jpg);\n");
      out.write("\tbackground-repeat: repeat-x;\n");
      out.write("\tbackground-position: top;\n");
      out.write("\tbackground-color: #E7E7E7;\n");
      out.write("}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("<link href=\"css/xom.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("<script src=\"free_validation.js\"></script>\n");
      out.write("<script>\n");
      out.write("\trequired.add('Full_Name','NOT_EMPTY','Full Name');\n");
      out.write("\trequired.add('Email_Address','EMAIL','Email Address');\n");
      out.write("\trequired.add('Your_Message','NOT_EMPTY','Your Message')\n");
      out.write("\t</script>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write("a:link {\n");
      out.write("\tcolor: #D2D2D2;\n");
      out.write("\ttext-decoration: none;\n");
      out.write("}\n");
      out.write("a:visited {\n");
      out.write("\ttext-decoration: none;\n");
      out.write("\tcolor: #FCFCFC;\n");
      out.write("}\n");
      out.write("a:hover {\n");
      out.write("\ttext-decoration: underline;\n");
      out.write("}\n");
      out.write("a:active {\n");
      out.write("\ttext-decoration: none;\n");
      out.write("\tcolor: #E9E9E9;\n");
      out.write("}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function validate()\n");
      out.write("            {\n");
      out.write("                if(document.getElementById(\"uname\").value==\"\")\n");
      out.write("                {\n");
      out.write("                    alert(\"enter the username\");\n");
      out.write("                    document.getElementById(\"uname\").focus();\n");
      out.write("                    return false;\n");
      out.write("\n");
      out.write("                }\n");
      out.write("                if(document.getElementById(\"Mob\").value==\"\")\n");
      out.write("                {\n");
      out.write("                    alert(\"enter the password\");\n");
      out.write("                    document.getElementById(\"Mob\").focus();\n");
      out.write("                    return false;\n");
      out.write("\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div class=\"containerWrap\">\n");
      out.write(" <!--start header -->\n");
      out.write("  <div class=\"header\">\n");
      out.write("      <!--start logo -->\n");
      out.write("      <div class=\"logo\">\n");
      out.write("        <h1>★SBI</h1>\n");
      out.write("    </div><!--end logo -->\n");
      out.write("    <!--start navigation -->\n");
      out.write("    <div id=\"nav\">  <li class=\"current\"><a href=\"#\">Home</a></li>\n");
      out.write("      <li><a href=\"#\">My Kitesurf</a>\n");
      out.write("          <ul>\n");
      out.write("            <li><a href=\"#\">Training</a>\n");
      out.write("                <ul>\n");
      out.write("                  <li><a href=\"#\">The Pool</a></li>\n");
      out.write("                  <li><a href=\"#\">Spire Parts</a></li>\n");
      out.write("                  <li><a href=\"#\">Wallpapers</a></li>\n");
      out.write("                  <li><a href=\"#\">Standards to be met</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\">The rates for school</a>\n");
      out.write("                <ul>\n");
      out.write("                  <li><a href=\"#\">Video Tutorials</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\">Forum</a></li>\n");
      out.write("            <li><a href=\"#\">Best Web Gallery</a></li>\n");
      out.write("          </ul>\n");
      out.write("      </li>\n");
      out.write("      <li><a href=\"#\">Other Pages</a>\n");
      out.write("          <ul>\n");
      out.write("            <li><a href=\"#\">Our Team</a>\n");
      out.write("                <ul>\n");
      out.write("                  <li><a href=\"#\">Sub-Level Item</a></li>\n");
      out.write("                  <li><a href=\"#\">Sub-Level Item</a>\n");
      out.write("                      <ul>\n");
      out.write("\n");
      out.write("                        <li><a href=\"#\">Level Item</a></li>\n");
      out.write("                        <li><a href=\"#\">Level Item</a></li>\n");
      out.write("                        <li><a href=\"#\">Level Item</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                  </li>\n");
      out.write("                  <li><a href=\"#\">Level Item</a></li>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\">Shop</a></li>\n");
      out.write("            <li><a href=\"#\">Link Friends</a></li>\n");
      out.write("            <li><a href=\"#\">Ou Side</a>\n");
      out.write("                <ul>\n");
      out.write("                  <li><a href=\"#\">Sub-Level Item</a></li>\n");
      out.write("                  <li><a href=\"#\">Sub-Level Item</a></li>\n");
      out.write("\n");
      out.write("                  <li><a href=\"#\">Sub-Level Item</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("      </li>\n");
      out.write("      <li><a href=\"#\">About</a></li>\n");
      out.write("        <li><a href=\"http://www.imediacreatives.it\">Imediacreatives</a></li>\n");
      out.write("    <li><a href=\"#\">Register</a></li></div>\n");
      out.write("    <!--end navigation -->\n");
      out.write("    <div class=\"content\" id=\"wrapper\">\n");
      out.write("      <article>\n");
      out.write("        <h3 class=\"shad\">The sea breeze and the waves that caress your fighting spirit. I was born on the beach, and he ... I recall as a loving father.</h3>\n");
      out.write("      \n");
      out.write("        <div class=\"intro\"></div>\n");
      out.write("        <hr>\n");
      out.write("            <h2 class=\"shadows\" style=\"color: blue\">Login Here..</h2>\n");
      out.write("            <!--contact form --><fieldset>\n");
      out.write("                <center> <h2 style=\"color: blue\">Login</h2></center>\n");
      out.write("                        <p>\n");
      out.write("                            <form action=\"indexaction.jsp\" method=\"post\">\n");
      out.write("                                <table>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td style=\"color: blue\">\n");
      out.write("                                            UserName:\n");
      out.write("                                        </td>\n");
      out.write("                                        <td>\n");
      out.write("                                            <input type=\"text\" id=\"uname\" name=\"uname\"></input>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>&nbsp;&nbsp;</td>\n");
      out.write("                                        \n");
      out.write("                                        <td> <input type=\"submit\" value=\"Login\" style=\"background: blue;color: white\" onclick=\"return validate()\"></input>\n");
      out.write("                                           </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td style=\"color: red\">\n");
      out.write("                                            ");

                                                        String st = request.getParameter("f");
                                                        if (st != null) {
                                                            if (st.equals("1")) {
                                                                   out.print("Entered wrong username or password");
                                                            }
                                                            if (st.equals("2")) {
                                                                out.print("Entered wrong username or password");
                                                            }
                                                        }

                                            
      out.write("\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                </table>\n");
      out.write("\n");
      out.write("                            </form>\n");
      out.write("                        </p> <a  style=\"color: blue\" href=\"Register.jsp\" class=\"selected\">Register Now</a>\n");
      out.write("                        <!--end contact form --></fieldset>\n");
      out.write("      </article><!--start article -->\n");
      out.write("      <aside>\n");
      out.write("        <hgroup>\n");
      out.write("          <h1>Welcome to my PASSION</h1>\n");
      out.write("          <h2>We have reason to believe that passion is for you</h2>\n");
      out.write("        </hgroup>\n");
      out.write("        <p>Kitesurfing masters will follow you all the way of training...</p>\n");
      out.write("        &#8212; &#8212; &#8212; &#8212;\n");
      out.write("        <h4>Kitesurf Center</h4>\n");
      out.write("        The center is equipped to simulate the sport. There is in addition, a swimming pool with large fans to simulate wind force.\n");
      out.write("        <p>My Progress on Kitesurf</p>\n");
      out.write("<progress value=\"30\" max=\"100\"></progress>\n");
      out.write("     <div class=\"thumb\">\n");
      out.write("       <ul class=\"thumbinail\">\n");
      out.write("    <li><a href=\"…\"><img src=\"images/kite1.jpg\" alt=\"\"></a></li>\n");
      out.write("    <li><a href=\"…\"><img src=\"images/kite2.jpg\" alt=\"\"></a></li>\n");
      out.write("    <li><a href=\"…\"><img src=\"images/kite3.jpg\" alt=\"\"></a></li>\n");
      out.write("    <li><a href=\"…\"><img src=\"images/kite4.jpg\" alt=\"\"></a></li>\n");
      out.write("  </ul>\n");
      out.write("       <div class=\"redbutton\"><a href=\"#\">Gallery</a></div>\n");
      out.write("       <div class=\"social\">\n");
      out.write("       <a href=\"#\"><img src=\"images/twitter.png\" alt=\"Follow on Twitter\" width=\"64\" height=\"64\"></a>\n");
      out.write("         <a href=\"#\"><img src=\"images/youtube.png\" alt=\"Video Kitesurf\" width=\"64\" height=\"64\"></a>\n");
      out.write("         <a href=\"#\"><img src=\"images/facebook.png\" alt=\"Become a fan\" width=\"64\" height=\"64\"></a>\n");
      out.write("         <a href=\"#\"><img src=\"images/flickr.png\" alt=\"from Flickr\"></a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write(" </aside>\n");
      out.write(" </div>\n");
      out.write("  </div>\n");
      out.write(" <!--start footer -->\n");
      out.write("  <footer>\n");
      out.write(" <div class=\"top\">\n");
      out.write(" <!--end footer -->\n");
      out.write(" </div>\n");
      out.write("                       \n");
      out.write("\n");
      out.write("                        <p></p>\n");
      out.write("                        <ul>\n");
      out.write("                            &nbsp;&nbsp;&nbsp;\n");
      out.write("                            &nbsp;&nbsp;&nbsp;\n");
      out.write("                            &nbsp;&nbsp;&nbsp;\n");
      out.write("                            &nbsp;&nbsp;&nbsp;\n");
      out.write("                            &nbsp;&nbsp;&nbsp;\n");
      out.write("                        </ul>\n");
      out.write(" <ul>\n");
      out.write("                       \n");
      out.write("\n");
      out.write("                    </ul> </div>\n");
      out.write("\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("                \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
