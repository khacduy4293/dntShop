package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginform_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<title>Modal Popup Box</title>\n");
      out.write("<style>\n");
      out.write("*{margin:0px; padding:0px; font-family:Helvetica, Arial, sans-serif;}\n");
      out.write("\n");
      out.write("/* Full-width input fields */\n");
      out.write("input[type=text], input[type=password] {\n");
      out.write("    width: 90%;\n");
      out.write("    padding: 12px 20px;\n");
      out.write("    margin: 8px 26px;\n");
      out.write("    display: inline-block;\n");
      out.write("    border: 1px solid #ccc;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("\tfont-size:16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Set a style for all buttons */\n");
      out.write("button {\n");
      out.write("    background-color: #4CAF50;\n");
      out.write("    color: white;\n");
      out.write("    padding: 14px 20px;\n");
      out.write("    margin: 8px 26px;\n");
      out.write("    border: none;\n");
      out.write("    cursor: pointer;\n");
      out.write("    width: 90%;\n");
      out.write("\tfont-size:20px;\n");
      out.write("}\n");
      out.write("button:hover {\n");
      out.write("    opacity: 0.8;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Center the image and position the close button */\n");
      out.write(".imgcontainer {\n");
      out.write("    text-align: center;\n");
      out.write("    margin: 24px 0 12px 0;\n");
      out.write("    position: relative;\n");
      out.write("}\n");
      out.write(".avatar {\n");
      out.write("    width: 200px;\n");
      out.write("\theight:200px;\n");
      out.write("    border-radius: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The Modal (background) */\n");
      out.write(".modal {\n");
      out.write("\tdisplay:none;\n");
      out.write("    position: fixed;\n");
      out.write("    z-index: 1;\n");
      out.write("    left: 0;\n");
      out.write("    top: 0;\n");
      out.write("    width: 100%;\n");
      out.write("    height: 100%;\n");
      out.write("    overflow: auto;\n");
      out.write("    background-color: rgba(0,0,0,0.4);\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Modal Content Box */\n");
      out.write(".modal-content {\n");
      out.write("    background-color: #fefefe;\n");
      out.write("    margin: 4% auto 15% auto;\n");
      out.write("    border: 1px solid #888;\n");
      out.write("    width: 40%; \n");
      out.write("\tpadding-bottom: 30px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The Close Button (x) */\n");
      out.write(".close {\n");
      out.write("    position: absolute;\n");
      out.write("    right: 25px;\n");
      out.write("    top: 0;\n");
      out.write("    color: #000;\n");
      out.write("    font-size: 35px;\n");
      out.write("    font-weight: bold;\n");
      out.write("}\n");
      out.write(".close:hover,.close:focus {\n");
      out.write("    color: red;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add Zoom Animation */\n");
      out.write(".animate {\n");
      out.write("    animation: zoom 0.6s\n");
      out.write("}\n");
      out.write("@keyframes zoom {\n");
      out.write("    from {transform: scale(0)} \n");
      out.write("    to {transform: scale(1)}\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</style>\n");
      out.write("<body background=\"../background1.png\">\n");
      out.write("\n");
      out.write("<h1 style=\"text-align:center; font-size:50px; color:#fff\">Modal Popup Box Login Form</h1>\n");
      out.write("\n");
      out.write("<button onclick=\"document.getElementById('modal-wrapper').style.display='block'\" style=\"width:200px; margin-top:200px; margin-left:160px;\">\n");
      out.write("Open Popup</button>\n");
      out.write("\n");
      out.write("<div id=\"modal-wrapper\" class=\"modal\">\n");
      out.write("  \n");
      out.write("  <form class=\"modal-content animate\" action=\"/action_page.php\">\n");
      out.write("        \n");
      out.write("    <div class=\"imgcontainer\">\n");
      out.write("      <span onclick=\"document.getElementById('modal-wrapper').style.display='none'\" class=\"close\" title=\"Close PopUp\">&times;</span>\n");
      out.write("      <img src=\"images/1.png\" alt=\"Avatar\" class=\"avatar\">\n");
      out.write("      <h1 style=\"text-align:center\">Modal Popup Box</h1>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Username\" name=\"uname\">\n");
      out.write("      <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\">        \n");
      out.write("      <button type=\"submit\">Login</button>\n");
      out.write("      <input type=\"checkbox\" style=\"margin:26px 30px;\"> Remember me      \n");
      out.write("      <a href=\"#\" style=\"text-decoration:none; float:right; margin-right:34px; margin-top:26px;\">Forgot Password ?</a>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("  </form>\n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("// If user clicks anywhere outside of the modal, Modal will close\n");
      out.write("\n");
      out.write("var modal = document.getElementById('modal-wrapper');\n");
      out.write("window.onclick = function(event) {\n");
      out.write("    if (event.target == modal) {\n");
      out.write("        modal.style.display = \"none\";\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
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
