package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Loginform_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <title>Login Form</title>\n");
      out.write("\n");
      out.write("  <!-- Google Font: Source Sans Pro -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback\">\n");
      out.write("  <!-- Font Awesome -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/fontawesome-free/css/all.min.css\">\n");
      out.write("  <!-- icheck bootstrap -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/icheck-bootstrap/icheck-bootstrap.min.css\">\n");
      out.write("  <!-- Theme style -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"dist/css/adminlte.min.css\">\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("<body class=\"hold-transition login-page\" background=\"dist/img/4893763.jpg\">\n");
      out.write("<div class=\"login-box\">\n");
      out.write("  <!-- /.login-logo -->\n");
      out.write("  <div class=\"card card-outline card-primary\">\n");
      out.write("    <div class=\"card-header text-center\">\n");
      out.write("      <a href=\"index.html\" class=\"h1\"><b>Virtual Lab</b></a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <p class=\"login-box-msg\">Sign in to Join your session</p>\n");
      out.write("\n");
      out.write("      <form action=\"Loginform\" method=\"POST\">\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("            <input type=\"text\" class=\"form-control\" placeholder=\"Username\" required name=\"username\">\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-user\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"password\" class=\"form-control\" placeholder=\"Password\" required name=\"password\">\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("\n");
      out.write("              <span class=\"fas fa-lock\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("          \n");
      out.write("          <!-- /.col -->\n");
      out.write("          <div class=\"col-4\">\n");
      out.write("              <button type=\"submit\" class=\"btn btn-primary btn-block\" value=\"Login\" name=\"btn_login\">Sign In</button>\n");
      out.write("          </div>\n");
      out.write("          <!-- /.col -->\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("      <br>\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("      <p class=\"mb-1\">\n");
      out.write("      \n");
      out.write("      </p>\n");
      out.write("      <p class=\"mb-0\">\n");
      out.write("        <a href=\"Registerform.jsp\" class=\"text-center\">Register a new membership</a>\n");
      out.write("      </p>\n");
      out.write("    </div>\n");
      out.write("    <!-- /.card-body -->\n");
      out.write("  </div>\n");
      out.write("  <!-- /.card -->\n");
      out.write("</div>\n");
      out.write("<!-- /.login-box -->\n");
      out.write("\n");
      out.write("<!-- jQuery -->\n");
      out.write("<script src=\"plugins/jquery/jquery.min.js\"></script>\n");
      out.write("<!-- Bootstrap 4 -->\n");
      out.write("<script src=\"plugins/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("<!-- AdminLTE App -->\n");
      out.write("<script src=\"dist/js/adminlte.min.js\"></script>\n");
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
