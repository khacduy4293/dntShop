package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <link rel=\"icon\" href=\"img/fav-icon.png\" type=\"image/x-icon\" />\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("        <title>Persuit</title>\n");
      out.write("\n");
      out.write("        <!-- Icon css link -->\n");
      out.write("        <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"vendors/line-icon/css/simple-line-icons.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"vendors/elegant-icon/style.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Rev slider css -->\n");
      out.write("        <link href=\"vendors/revolution/css/settings.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"vendors/revolution/css/layers.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"vendors/revolution/css/navigation.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Extra plugin css -->\n");
      out.write("        <link href=\"vendors/owl-carousel/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"vendors/bootstrap-selector/css/bootstrap-select.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"vendors/jquery-ui/jquery-ui.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!--================Menu Area =================-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "client_headerLogin.jsp", out, false);
      out.write("\n");
      out.write("        <!--================End Menu Area =================-->\n");
      out.write("\n");
      out.write("        <!--================Categories Banner Area =================-->\n");
      out.write("        <section class=\"solid_banner_area\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"solid_banner_inner\">\n");
      out.write("                    <h3>LOgin</h3>\n");
      out.write("                    <ul>                       \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--================End Categories Banner Area =================-->\n");
      out.write("\n");
      out.write("        <!--================login Area =================-->\n");
      out.write("        <section class=\"track_area p_100\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"track_inner\">\n");
      out.write("                    <div class=\"track_title\">\n");
      out.write("                        <h2>log in your account</h2>\n");
      out.write("                        <p> Donec sed tortor eros. Mauris varius commodo nisi, quis vestibulum est pellen-tesque quis. Vivamus nulla arcu, </p>\n");
      out.write("                    </div>\n");
      out.write("                    <form class=\"track_form row\">\n");
      out.write("                        <div class=\"col-lg-12 form-group\">\n");
      out.write("                            <label for=\"text\">Username</label>\n");
      out.write("                            <input class=\"form-control\" type=\"text\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-12 form-group\">\n");
      out.write("                            <label for=\"email\">Password</label>\n");
      out.write("                            <input class=\"form-control\" type=\"password\" id=\"email\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-12 form-group\">\n");
      out.write("                            <div class=\"creat_account\">\n");
      out.write("                                <input type=\"checkbox\" id=\"f-option\" name=\"selector\">\n");
      out.write("                                <label for=\"f-option\">Keep me logged in</label>\n");
      out.write("                                <div class=\"check\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <h4>Forgot your password ?</h4>\n");
      out.write("                        <div class=\"col-lg-12 form-group\">\n");
      out.write("                             <button type=\"submit\" value=\"submit\" class=\"btn update_btn form-control\">Login</button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!--================End login Area =================-->\n");
      out.write("\n");
      out.write("        <!--================Footer Area =================-->\n");
      out.write("        <footer class=\"footer_area\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"footer_widgets\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-4 col-md-4 col-6\">\n");
      out.write("                            <aside class=\"f_widget f_about_widget\">\n");
      out.write("                                <img src=\"img/logo.png\" alt=\"\">\n");
      out.write("                                <p>Persuit is a Premium PSD Template. Best choice for your online store. Let purchase it to enjoy now</p>\n");
      out.write("                                <h6>Social:</h6>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"social_facebook\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"social_twitter\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"social_pinterest\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"social_instagram\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"social_youtube\"></i></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </aside>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-2 col-md-4 col-6\">\n");
      out.write("                            <aside class=\"f_widget link_widget f_info_widget\">\n");
      out.write("                                <div class=\"f_w_title\">\n");
      out.write("                                    <h3>Information</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\">About us</a></li>\n");
      out.write("                                    <li><a href=\"#\">Delivery information</a></li>\n");
      out.write("                                    <li><a href=\"#\">Terms & Conditions</a></li>\n");
      out.write("                                    <li><a href=\"#\">Help Center</a></li>\n");
      out.write("                                    <li><a href=\"#\">Returns & Refunds</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </aside>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-2 col-md-4 col-6\">\n");
      out.write("                            <aside class=\"f_widget link_widget f_service_widget\">\n");
      out.write("                                <div class=\"f_w_title\">\n");
      out.write("                                    <h3>Customer Service</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\">My account</a></li>\n");
      out.write("                                    <li><a href=\"#\">Ordr History</a></li>\n");
      out.write("                                    <li><a href=\"#\">Wish List</a></li>\n");
      out.write("                                    <li><a href=\"#\">Newsletter</a></li>\n");
      out.write("                                    <li><a href=\"#\">Contact Us</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </aside>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-2 col-md-4 col-6\">\n");
      out.write("                            <aside class=\"f_widget link_widget f_extra_widget\">\n");
      out.write("                                <div class=\"f_w_title\">\n");
      out.write("                                    <h3>Extras</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\">Brands</a></li>\n");
      out.write("                                    <li><a href=\"#\">Gift Vouchers</a></li>\n");
      out.write("                                    <li><a href=\"#\">Affiliates</a></li>\n");
      out.write("                                    <li><a href=\"#\">Specials</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </aside>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-2 col-md-4 col-6\">\n");
      out.write("                            <aside class=\"f_widget link_widget f_account_widget\">\n");
      out.write("                                <div class=\"f_w_title\">\n");
      out.write("                                    <h3>My Account</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\">My account</a></li>\n");
      out.write("                                    <li><a href=\"#\">Ordr History</a></li>\n");
      out.write("                                    <li><a href=\"#\">Wish List</a></li>\n");
      out.write("                                    <li><a href=\"#\">Newsletter</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </aside>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"footer_copyright\">\n");
      out.write("                    <h5>© <script>document.write(new Date().getFullYear());</script> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                    </h5>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <!--================End Footer Area =================-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- Rev slider js -->\n");
      out.write("        <script src=\"vendors/revolution/js/jquery.themepunch.tools.min.js\"></script>\n");
      out.write("        <script src=\"vendors/revolution/js/jquery.themepunch.revolution.min.js\"></script>\n");
      out.write("        <script src=\"vendors/revolution/js/extensions/revolution.extension.actions.min.js\"></script>\n");
      out.write("        <script src=\"vendors/revolution/js/extensions/revolution.extension.video.min.js\"></script>\n");
      out.write("        <script src=\"vendors/revolution/js/extensions/revolution.extension.slideanims.min.js\"></script>\n");
      out.write("        <script src=\"vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js\"></script>\n");
      out.write("        <script src=\"vendors/revolution/js/extensions/revolution.extension.navigation.min.js\"></script>\n");
      out.write("        <script src=\"vendors/revolution/js/extensions/revolution.extension.slideanims.min.js\"></script>\n");
      out.write("        <!-- Extra plugin css -->\n");
      out.write("        <script src=\"vendors/counterup/jquery.waypoints.min.js\"></script>\n");
      out.write("        <script src=\"vendors/counterup/jquery.counterup.min.js\"></script>\n");
      out.write("        <script src=\"vendors/owl-carousel/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"vendors/bootstrap-selector/js/bootstrap-select.min.js\"></script>\n");
      out.write("        <script src=\"vendors/image-dropdown/jquery.dd.min.js\"></script>\n");
      out.write("        <script src=\"js/smoothscroll.js\"></script>\n");
      out.write("        <script src=\"vendors/isotope/imagesloaded.pkgd.min.js\"></script>\n");
      out.write("        <script src=\"vendors/isotope/isotope.pkgd.min.js\"></script>\n");
      out.write("        <script src=\"vendors/magnify-popup/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"vendors/vertical-slider/js/jQuery.verticalCarousel.js\"></script>\n");
      out.write("        <script src=\"vendors/jquery-ui/jquery-ui.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"js/theme.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
