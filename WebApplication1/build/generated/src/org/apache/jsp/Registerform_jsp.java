package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class Registerform_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <title>Virtual Lab</title>\n");
      out.write("\n");
      out.write("  <!-- Google Font: Source Sans Pro -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback\">\n");
      out.write("  <!-- Font Awesome -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/fontawesome-free/css/all.min.css\">\n");
      out.write("  <!-- icheck bootstrap -->\n");
      out.write("  <link rel=\"stylesheet\" hrefplugins/icheck-bootstrap/icheck-bootstrap.min.css\">\n");
      out.write("  <!-- Theme style -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"dist/css/adminlte.min.css\">\n");
      out.write(" <script type= \"text/javascript\" src = \"countries.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body class=\"hold-transition register-page\" background=\"dist/img/4893763.jpg\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("   <div class=\"container-fluid\">\n");
      out.write("    <br><br><br>\n");
      out.write("\n");
      out.write("      \n");
      out.write("<div class=\"row\">\n");
      out.write("      <div class=\"col-sm-4\"></div>\n");
      out.write("      <div class=\"col-sm-4\">\n");
      out.write("  <div class=\"card card-outline card-primary\">\n");
      out.write("    <div class=\"card-header text-center\">\n");
      out.write("        <a href=\"index.html\" class=\"h1\"><b>Virtual Lab</b></a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <p class=\"login-box-msg\">Register a new membership</p>\n");
      out.write("\n");
      out.write("\n");
      out.write("      <form action=\"registerform\" method=\"POST\">\n");
      out.write("         <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("            <input type=\"text\" class=\"form-control\" placeholder=\"first name\"   name=\"fname\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-user\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("         <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Middle name\" name=\"mname\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-user\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("       <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Last name\" name=\"lname\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-user\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-sm-8\">\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"email\" class=\"form-control\" placeholder=\"Email\"  name=\"email\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-envelope\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-sm-4\">\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("           <input type=\"text\" placeholder=\"Date of Birth\"\n");
      out.write("                    onfocus=\"(this.type='date')\" class=\"form-control\"  name=\"dob\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-calendar-alt\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write(" \n");
      out.write(" <div class=\"row\">\n");
      out.write("          <div class=\"col-sm-12\">\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <textarea class=\"form-control\" placeholder=\"Address\"  name=\"address\"  required></textarea>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-address-card\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<div class=\"row\">\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("     <div class=\"form-group\">\n");
      out.write("                       \n");
      out.write("         <select class=\"form-control\" onchange=\"print_state('state',this.selectedIndex);\" id=\"country\" name =\"country\"></select>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                     <div class=\"col-sm-4\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        \n");
      out.write("                        <select class=\"form-control\"  name=\"state\" required>\n");
      out.write("                          <option value=\"\">--- State ---</option>\n");
      out.write("                          <option value=\"1\">option 1</option>\n");
      out.write("                          <option value=\"2\">option 2</option>\n");
      out.write("                          <option value=\"3\">option 3</option>\n");
      out.write("                          <option value=\"4\">option 4</option>\n");
      out.write("                          <option value=\"5\">option 5</option>\n");
      out.write("                        </select>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        \n");
      out.write("                        <select class=\"form-control\"  name=\"city\" required>\n");
      out.write("                          <option value=\"\">--- City ---</option>\n");
      out.write("                          <option value=\"1\">option 1</option>\n");
      out.write("                          <option value=\"2\">option 2</option>\n");
      out.write("                          <option value=\"3\">option 3</option>\n");
      out.write("                          <option value=\"4\">option 4</option>\n");
      out.write("                          <option value=\"5\">option 5</option>\n");
      out.write("                        </select>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("\n");
      out.write("                  <div class=\"row\">\n");
      out.write("          <div class=\"col-sm-6\">\n");
      out.write("     <div class=\"form-group\">\n");
      out.write("                       \n");
      out.write("                        <select class=\"form-control\"  name=\"village\" required>\n");
      out.write("                          <option value=\"\">--- Village ---</option>\n");
      out.write("                          <option value=\"1\">option 1</option>\n");
      out.write("                          <option value=\"2\">option 2</option>\n");
      out.write("                          <option value=\"3\">option 3</option>\n");
      out.write("                          <option value=\"4\">option 4</option>\n");
      out.write("                          <option value=\"5\">option 5</option>\n");
      out.write("                        </select>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                     <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Postal code\"  name=\"pin\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-building\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("            <input type=\"text\" class=\"form-control\" placeholder=\"Adhar Card No\"  name=\"adhrno\" minlength=\"12\" maxlength=\"12\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-id-card\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("         <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("            <input type=\"text\" class=\"form-control\" placeholder=\"Primary Contact No\" minlength=\"10\" maxlength=\"10\" name=\"contact1\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-phone\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("       <div class=\"col-sm-4\">\n");
      out.write("\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Alternate Contact No\" minlength=\"10\" maxlength=\"10\"  name=\"contact2\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-phone\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("      <div class=\"row\">\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("     <div class=\"form-group\">\n");
      out.write("                       \n");
      out.write("                        <select class=\"form-control\"  name=\"selectcollege\" required>\n");
      out.write("                           <option value=\"\">Select College</option>\n");
      out.write("                          ");

                          Connection cn=null;
                          Statement st=null;
                          
                          try
                          {
                              
                              Class.forName("com.mysql.jdbc.Driver");
                             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
                             st=cn.createStatement();
                             String sql="Select * from tbl_collage";
                             ResultSet rs=st.executeQuery(sql);
                             while(rs.next())
                             {
                          
                          
                          
                          
                          

                          
                          
      out.write("\n");
      out.write("                          <option>");
      out.print(rs.getString("collage_name"));
      out.write("</option>\n");
      out.write("                          ");

                          }
                          }catch(Exception ex)
{



}
                          
      out.write("\n");
      out.write("                          \n");
      out.write("                        </select>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                     <div class=\"col-sm-4\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        \n");
      out.write("                        <select class=\"form-control\"  name=\"selectdept\" required>\n");
      out.write("                         <option value=\"\">Department</option>\n");
      out.write("                          ");

                          
                          
                          try
                          {
                              
                              Class.forName("com.mysql.jdbc.Driver");
                             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
                             st=cn.createStatement();
                             String sql="Select * from tbl_department";
                             ResultSet rs=st.executeQuery(sql);
                             while(rs.next())
                             {
                          
                          
                          
                          
                          

                          
                          
      out.write("\n");
      out.write("                          <option>");
      out.print(rs.getString("dept_name"));
      out.write("</option>\n");
      out.write("                          ");

                          }
                          }catch(Exception ex)
{



}
                          
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        \n");
      out.write("                        <select class=\"form-control\"  name=\"selectclass\" required>\n");
      out.write("                          <option value=\"\">Select Class</option>\n");
      out.write("                           ");

                          
                          
                          try
                          {
                              
                              Class.forName("com.mysql.jdbc.Driver");
                             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
                             st=cn.createStatement();
                             String sql="Select * from tbl_class";
                             ResultSet rs=st.executeQuery(sql);
                             while(rs.next())
                             {
                          
                          
                          
                          
                          

                          
                          
      out.write("\n");
      out.write("                          <option>");
      out.print(rs.getString("class_name"));
      out.write("</option>\n");
      out.write("                          ");

                          }
                          }catch(Exception ex)
{



}
                          
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\">\n");
      out.write("\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Username\"  name=\"username\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-user-secret\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("         <div class=\"col-sm-6\">\n");
      out.write("\n");
      out.write("        <div class=\"input-group mb-3\">\n");
      out.write("            <input type=\"password\" class=\"form-control\" placeholder=\"Password\"  name=\"password\" required>\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <div class=\"input-group-text\">\n");
      out.write("              <span class=\"fas fa-lock\"></span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-4\"></div>\n");
      out.write("          <div class=\"col-4\">\n");
      out.write("            <div class=\"icheck-primary\">\n");
      out.write("                <input type=\"checkbox\" id=\"agreeTerms\" name=\"terms\" value=\"agree\"  name=\"termsagree\" required>\n");
      out.write("              <label for=\"agreeTerms\">\n");
      out.write("               I agree to the <a href=\"terms.pdf\">terms</a>\n");
      out.write("              </label>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-4\"></div>\n");
      out.write("          <!-- /.col -->\n");
      out.write("          <br>\n");
      out.write("          <div class=\"col-4\"></div>\n");
      out.write("          \n");
      out.write("          <div class=\"col-4\">\n");
      out.write("              <button type=\"submit\" class=\"btn btn-primary btn-block\"  name=\"btn_reg\" value=\"Register\" >Register</button>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("          <!-- /.col -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("      <a href=\"Loginform.jsp\" class=\"text-center\">I already have a membership</a>\n");
      out.write("      <br>\n");
      out.write("    </div>\n");
      out.write("    <!-- /.form-box -->\n");
      out.write("  </div><!-- /.card -->\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<!-- /.register-box -->\n");
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
