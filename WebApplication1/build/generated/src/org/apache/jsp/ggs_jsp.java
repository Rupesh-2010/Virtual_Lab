package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class ggs_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <div class=\"container-fluid   py-3\">\n");
      out.write("\n");
      out.write("            <h1 text align=\"center\">College List</h1>\n");
      out.write("            <br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("      ");


          Connection cn=null;
          Statement st=null;
           int counter=1;
      try
      {
     Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
           st=cn.createStatement();
           String sql="select * from tbl_collage";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {

      
      out.write("\n");
      out.write("     <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-5\"><br><br>\n");
      out.write("                        <img src=");
      out.print(rs.getString("collage_img"));
      out.write(" width=\"100\" height=\"100\"/>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-7\">\n");
      out.write("                        <h4>ID=");
      out.print(rs.getString("collage_id"));
      out.write("</h4>\n");
      out.write("                        <h4>");
      out.print(rs.getString("collage_name"));
      out.write("</h4>\n");
      out.write("                         <h4>");
      out.print(rs.getString("collage_name"));
      out.write("</h4>\n");
      out.write("                          <h4>");
      out.print(rs.getString("collage_img"));
      out.write("</h4>\n");
      out.write("                           <h4>");
      out.print(rs.getString("collage_descrip"));
      out.write("</h4>\n");
      out.write("                           \n");
      out.write("                          \n");
      out.write("                        <input type=\"submit\" name=\"btn\" value=\"Call\" class=\"btn btn-primary\">\n");
      out.write("                        <br><br><br>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("    ");

        }
     }catch(Exception ex)
    {
    out.println(ex.toString());

     }
    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
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
