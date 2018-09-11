package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminAddProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("This is a starter template page. Use this page to start your new project from\n");
      out.write("scratch. This page gets rid of all links and provides the needed markup only.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Add New Product</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin-main-layout.jsp", out, false);
      out.write("\n");
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
      out.write("                        <div class=\"box box-default\">\n");
      out.write("                            <form action=\"adminAddProduct\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                                <div class=\"box-header with-border\">\n");
      out.write("                                    <h3 class=\"box-title\">Select2</h3>\n");
      out.write("                                </div><!-- /.box-header -->\n");
      out.write("                                <div class=\"box-body\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-6\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label for=\"exampleInputProductName\">Product Name<span style=\"color:red\">*</span></label>\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" id=\"exampleInputProName\" name=\"productName\" placeholder=\"Enter product name\" required=\"true\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label for=\"exampleInputPrice\">Price<span style=\"color:red\">*</span></label>\n");
      out.write("                                                <input type=\"number\" class=\"form-control\" id=\"exampleInputPrice\" name=\"price\" placeholder=\"Enter price\" required=\"true\">\n");
      out.write("                                            </div>                          \n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label>Description</label>\n");
      out.write("                                                <textarea class=\"form-control\" rows=\"3\" name=\"descrip\" placeholder=\"Enter ...\"></textarea>\n");
      out.write("                                            </div> \n");
      out.write("                                        </div><!-- /.col -->\n");
      out.write("                                        <div class=\"col-md-6\">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <label>Brand</label>\n");
      out.write("                                                <select class=\"form-control\" name=\"brandID\" required=\"true\">\n");
      out.write("                                                ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("                                                                                    \n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Category</label>\n");
      out.write("                                            <select class=\"form-control\" name=\"cateID\" required=\"true\">\n");
      out.write("                                                ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label>Feature</label>\n");
      out.write("                                            <select class=\"form-control\" name=\"feature\">                                                \n");
      out.write("                                                <option value=\"New\">New</option>\n");
      out.write("                                                <option value=\"Hot\">Hot</option>\n");
      out.write("                                                <option>--</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>     \n");
      out.write("                                    </div><!-- /.col -->       \n");
      out.write("                                </div><!-- /.row -->\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-3\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label for=\"exampleInputFile\">Product Image <span style=\"color:red\">*</span></label>\n");
      out.write("                                            <input type=\"file\" id=\"exampleInputFile1\" name=\"inputImage1\" required=\"true\">\n");
      out.write("                                            <p class=\"help-block\">Example block-level help text here.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-3\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label for=\"exampleInputFile\">Image 2</label>\n");
      out.write("                                            <input type=\"file\" id=\"exampleInputFile2\" name=\"inputImage2\">\n");
      out.write("                                            <p class=\"help-block\">Example block-level help text here.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-3\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label for=\"exampleInputFile\">Image 3</label>\n");
      out.write("                                            <input type=\"file\" id=\"exampleInputFile3\" name=\"inputImage3\">\n");
      out.write("                                            <p class=\"help-block\">Example block-level help text here.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-md-3\">\n");
      out.write("                                        <div class=\"form-group\">\n");
      out.write("                                            <label for=\"exampleInputFile\">Image 4</label>\n");
      out.write("                                            <input type=\"file\" id=\"exampleInputFile4\" name=\"inputImage4\">\n");
      out.write("                                            <p class=\"help-block\">Example block-level help text here.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div><!-- /.box-body -->\n");
      out.write("                            <div class=\"box-footer\">\n");
      out.write("                                <div class=\"box-tools pull-right\">\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-primary\">Save changes</button>\n");
      out.write("                                </div>                           \n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div><!-- /.box -->                    \n");
      out.write("                </section><!-- /.content -->\n");
      out.write("            </div><!-- /.content-wrapper -->\n");
      out.write("\n");
      out.write("            <!-- Main Footer -->\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin-main-footer.jsp", out, false);
      out.write("\n");
      out.write("            <!-- /.control-sidebar -->\n");
      out.write("            <!-- Add the sidebar's background. This div must be placed\n");
      out.write("                 immediately after the control sidebar -->\n");
      out.write("            <div class=\"control-sidebar-bg\"></div>\n");
      out.write("        </div><!-- ./wrapper -->\n");
      out.write("\n");
      out.write("        <!-- REQUIRED JS SCRIPTS -->\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("b");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listBrand}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                    <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.brandID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.brandName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setVar("c");
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listCate}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                    <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.categoryID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.categoryName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>     \n");
          out.write("                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }
}
