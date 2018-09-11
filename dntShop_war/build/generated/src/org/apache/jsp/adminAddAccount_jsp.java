package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminAddAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--\n");
      out.write("This is a starter template page. Use this page to start your new project from\n");
      out.write("scratch. This page gets rid of all links and provides the needed markup only.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Add Account</title>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin-main-layout.jsp", out, false);
      out.write("\n");
      out.write("               \n");
      out.write("    </head>\n");
      out.write("    <!--\n");
      out.write("    BODY TAG OPTIONS:\n");
      out.write("    =================\n");
      out.write("    Apply one or more of the following classes to get the\n");
      out.write("    desired effect\n");
      out.write("    |---------------------------------------------------------|\n");
      out.write("    | SKINS         | skin-blue                               |\n");
      out.write("    |               | skin-black                              |\n");
      out.write("    |               | skin-purple                             |\n");
      out.write("    |               | skin-yellow                             |\n");
      out.write("    |               | skin-red                                |\n");
      out.write("    |               | skin-green                              |\n");
      out.write("    |---------------------------------------------------------|\n");
      out.write("    |LAYOUT OPTIONS | fixed                                   |\n");
      out.write("    |               | layout-boxed                            |\n");
      out.write("    |               | layout-top-nav                          |\n");
      out.write("    |               | sidebar-collapse                        |\n");
      out.write("    |               | sidebar-mini                            |\n");
      out.write("    |---------------------------------------------------------|\n");
      out.write("    -->\n");
      out.write("    <body class=\"skin-blue sidebar-mini\">\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("\n");
      out.write("            <!-- Main Header -->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin-main-header.jsp", out, false);
      out.write("\n");
      out.write("                <!-- Left side column. contains the logo and sidebar -->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin-main-sidebar.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("                <!-- Content Wrapper. Contains page content -->\n");
      out.write("                <div class=\"content-wrapper\">\n");
      out.write("                    <!-- Content Header (Page header) -->\n");
      out.write("                    <section class=\"content-header\">\n");
      out.write("                        <h1>\n");
      out.write("                            Page Header\n");
      out.write("                            <small>Optional description</small>\n");
      out.write("                        </h1>\n");
      out.write("                        <ol class=\"breadcrumb\">\n");
      out.write("                            <li><a href=\"#\"><i class=\"fa fa-dashboard\"></i> Level</a></li>\n");
      out.write("                            <li class=\"active\">Here</li>\n");
      out.write("                        </ol>\n");
      out.write("                    </section>\n");
      out.write("\n");
      out.write("                    <!-- Main content -->\n");
      out.write("                    <section class=\"content\">\n");
      out.write("                        <div class=\"example-modal\">\n");
      out.write("                            <div class=\"modal\">\n");
      out.write("                                <div class=\"modal-dialog\">\n");
      out.write("                                    <div class=\"modal-content\">\n");
      out.write("                                        <form action=\"adminAddAccount\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                            <div class=\"modal-header\">                                           \n");
      out.write("                                                <h4 class=\"modal-title\">Modal Default</h4>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"modal-body\">\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"exampleInputFullName\">Full name<span style=\"color:red\">*</span></label>\n");
      out.write("                                                    <input type=\"text\" class=\"form-control\" id=\"exampleInputName\" name=\"fullName\" placeholder=\"Enter fullname\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"exampleInputEmail\">Email address<span style=\"color:red\">*</span></label>\n");
      out.write("                                                    <input type=\"email\" class=\"form-control\" id=\"exampleInputEmail\" name=\"email\" placeholder=\"Enter email\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"exampleInputPassword\">Password<span style=\"color:red\">*</span></label>\n");
      out.write("                                                    <input type=\"password\" class=\"form-control\" id=\"exampleInputPassword\" name=\"password\" placeholder=\"Password\">\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label>Role</label>\n");
      out.write("                                                    <select class=\"form-control\" name=\"role\">\n");
      out.write("                                                        <option value=\"Employee\">Employee</option>\n");
      out.write("                                                        <option value=\"Manager\">Manager</option>                                                \n");
      out.write("                                                    </select>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"form-group\">\n");
      out.write("                                                    <label for=\"exampleInputFile\">Image input</label>\n");
      out.write("                                                    <input type=\"file\" id=\"exampleInputFile\" name=\"inputImage\">\n");
      out.write("                                                    <p class=\"help-block\">Example block-level help text here.</p>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"modal-footer\">\n");
      out.write("                                                <button type=\"button\" class=\"btn btn-default pull-left\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                                <button type=\"submit\" class=\"btn btn-primary\">Save changes</button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </form>\n");
      out.write("                                    </div><!-- /.modal-content -->\n");
      out.write("                                </div><!-- /.modal-dialog -->\n");
      out.write("                            </div><!-- /.modal -->\n");
      out.write("                        </div><!-- /.example-modal -->\n");
      out.write("                    </section><!-- /.content -->\n");
      out.write("                </div><!-- /.content-wrapper -->\n");
      out.write("\n");
      out.write("                <!-- Main Footer -->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin-main-footer.jsp", out, false);
      out.write("\n");
      out.write("            <!-- /.control-sidebar -->\n");
      out.write("            <!-- Add the sidebar's background. This div must be placed\n");
      out.write("                 immediately after the control sidebar -->\n");
      out.write("            <div class=\"control-sidebar-bg\"></div>\n");
      out.write("        </div><!-- ./wrapper -->   \n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
