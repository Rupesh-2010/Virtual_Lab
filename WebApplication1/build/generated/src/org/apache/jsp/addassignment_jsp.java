package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class addassignment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <!-- Theme style -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"dist/css/adminlte.min.css\">\n");
      out.write("  <script type=\"text/javascript\" src=\"validation.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body class=\"hold-transition sidebar-mini\">\n");
      out.write("<div class=\"wrapper\">\n");
      out.write("  <!-- Navbar -->\n");
      out.write("  <nav class=\"main-header navbar navbar-expand navbar-white navbar-light\">\n");
      out.write("    <!-- Left navbar links -->\n");
      out.write("    <ul class=\"navbar-nav\">\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" data-widget=\"pushmenu\" href=\"#\" role=\"button\"><i class=\"fas fa-bars\"></i></a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item d-none d-sm-inline-block\">\n");
      out.write("        <a href=\"../../index3.html\" class=\"nav-link\">Home</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item d-none d-sm-inline-block\">\n");
      out.write("        <a href=\"#\" class=\"nav-link\">Contact</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("  </nav>\n");
      out.write("  <!-- /.navbar -->\n");
      out.write("\n");
      out.write("  <!-- Main Sidebar Container -->\n");
      out.write("  <aside class=\"main-sidebar sidebar-dark-primary elevation-4\">\n");
      out.write("    <!-- Brand Logo -->\n");
      out.write("    <a href=\"../../index3.html\" class=\"brand-link\">\n");
      out.write("      <img src=\"dist/img/virtual-lab-logo.png\" alt=\"AdminLTE Logo\" class=\"brand-image img-circle elevation-3\" style=\"opacity: .8\">\n");
      out.write("      <span class=\"brand-text font-weight-light\">VIRTUAL LAB</span>\n");
      out.write("    </a>\n");
      out.write("\n");
      out.write("    <!-- Sidebar -->\n");
      out.write("    <div class=\"sidebar\">\n");
      out.write("      <!-- Sidebar user (optional) -->\n");
      out.write("      <div class=\"user-panel mt-3 pb-3 mb-3 d-flex\">\n");
      out.write("        <div class=\"image\">\n");
      out.write("            <img src=\"dist/img/virtual-lab-logo.png\" alt=\"AdminLTE Logo\" class=\"brand-image img-circle elevation-3\" style=\"opacity: .8\">\n");
      out.write("<!--          <img src=\"dist/img/avatar5.jpg\" class=\"img-circle elevation-2\" alt=\"User Image\">-->\n");
      out.write("        </div>\n");
      out.write("        <div class=\"info\">\n");
      out.write("          <a href=\"#\" class=\"d-block\">Shivraj College</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <!-- SidebarSearch Form -->\n");
      out.write("      <div class=\"form-inline\">\n");
      out.write("        <div class=\"input-group\" data-widget=\"sidebar-search\">\n");
      out.write("          <input class=\"form-control form-control-sidebar\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("          <div class=\"input-group-append\">\n");
      out.write("            <button class=\"btn btn-sidebar\">\n");
      out.write("              <i class=\"fas fa-search fa-fw\"></i>\n");
      out.write("            </button>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <!-- Sidebar Menu -->\n");
      out.write("      <nav class=\"mt-2\">\n");
      out.write("        <ul class=\"nav nav-pills nav-sidebar flex-column\" data-widget=\"treeview\" role=\"menu\" data-accordion=\"false\">\n");
      out.write("          <!-- Add icons to the links using the .nav-icon class\n");
      out.write("               with font-awesome or any other icon font library -->\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a href=\"#\" class=\"nav-link \" >\n");
      out.write("              <i class=\"nav-icon fas fa-tachometer-alt\"></i>\n");
      out.write("              <p>\n");
      out.write("                Dashboard\n");
      out.write("                <i class=\"right fas fa-angle-left\"></i>\n");
      out.write("              </p>\n");
      out.write("            </a>\n");
      out.write("            <ul class=\"nav nav-treeview\">\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"../../index.html\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Dashboard v1</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          <li class=\"nav-item menu-open\">\n");
      out.write("            <a href=\"#\" class=\"nav-link active\">\n");
      out.write("              <i class=\"nav-icon fas fa-edit\"></i>\n");
      out.write("              <p>\n");
      out.write("                Forms\n");
      out.write("                <i class=\"fas fa-angle-left right\"></i>\n");
      out.write("              </p>\n");
      out.write("            </a>\n");
      out.write("            <ul class=\"nav nav-treeview\">\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addcollege.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add college</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"adddepartment.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add department</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addclass.jsp\" class=\"nav-link \">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add Class</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addsubject.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add Subject</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addnotes.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add Notes</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addvideos.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add Videos</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addexperiment.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add experiment</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              \n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addsyllabus.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add Syllabus</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addcompiler.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add Compiler</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"addquiz.jsp\" class=\"nav-link \">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add Quiz</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("               <li class=\"nav-item\">\n");
      out.write("                <a href=\"addresult.jsp\" class=\"nav-link active\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Add Result</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"validation.jsp\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Validation</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a href=\"#\" class=\"nav-link\">\n");
      out.write("              <i class=\"nav-icon fas fa-table\"></i>\n");
      out.write("              <p>\n");
      out.write("                Tables\n");
      out.write("                <i class=\"fas fa-angle-left right\"></i>\n");
      out.write("              </p>\n");
      out.write("            </a>\n");
      out.write("            <ul class=\"nav nav-treeview\">\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"../tables/simple.html\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Simple Tables</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"../tables/data.html\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>DataTables</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"../tables/jsgrid.html\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>jsGrid</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a href=\"#\" class=\"nav-link\">\n");
      out.write("              <i class=\"nav-icon fas fa-search\"></i>\n");
      out.write("              <p>\n");
      out.write("                Search\n");
      out.write("                <i class=\"fas fa-angle-left right\"></i>\n");
      out.write("              </p>\n");
      out.write("            </a>\n");
      out.write("            <ul class=\"nav nav-treeview\">\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"../search/simple.html\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Simple Search</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("                <a href=\"../search/enhanced.html\" class=\"nav-link\">\n");
      out.write("                  <i class=\"far fa-circle nav-icon\"></i>\n");
      out.write("                  <p>Enhanced</p>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-header\">MISCELLANEOUS</li>\n");
      out.write("          \n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a href=\"https://adminlte.io/docs/3.1/\" class=\"nav-link\">\n");
      out.write("              <i class=\"nav-icon fas fa-file\"></i>\n");
      out.write("              <p>Documentation</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          \n");
      out.write("         \n");
      out.write("          <li class=\"nav-header\">LABELS</li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a href=\"#\" class=\"nav-link\">\n");
      out.write("              <i class=\"nav-icon far fa-circle text-danger\"></i>\n");
      out.write("              <p class=\"text\">Important</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a href=\"#\" class=\"nav-link\">\n");
      out.write("              <i class=\"nav-icon far fa-circle text-warning\"></i>\n");
      out.write("              <p>Warning</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a href=\"#\" class=\"nav-link\">\n");
      out.write("              <i class=\"nav-icon far fa-circle text-info\"></i>\n");
      out.write("              <p>Informational</p>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("      <!-- /.sidebar-menu -->\n");
      out.write("    </div>\n");
      out.write("    <!-- /.sidebar -->\n");
      out.write("  </aside>\n");
      out.write("\n");
      out.write("  <!-- Content Wrapper. Contains page content -->\n");
      out.write("  <div class=\"content-wrapper\">\n");
      out.write("    <!-- Content Header (Page header) -->\n");
      out.write("    <section class=\"content-header\">\n");
      out.write("      <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row mb-2\">\n");
      out.write("          <div class=\"col-sm-3\">\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-6\">\n");
      out.write("            <h1> assignment</h1>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-sm-3\">\n");
      out.write("            <ol class=\"breadcrumb float-sm-right\">\n");
      out.write("              <li class=\"breadcrumb-item\"><a href=\"#\">Home</a></li>\n");
      out.write("              <li class=\"breadcrumb-item active\">Result assignment Form</li>\n");
      out.write("            </ol>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div><!-- /.container-fluid -->\n");
      out.write("    </section>\n");
      out.write("    \n");
      out.write("    <!-- Main content -->\n");
      out.write("    <section class=\"content\">\n");
      out.write("      <div class=\"container-fluid\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <!-- left column -->\n");
      out.write("          <div class=\"col-md-3\">\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-6\">\n");
      out.write("            <!-- general form elements -->\n");
      out.write("            <div class=\"card card-primary\">\n");
      out.write("              <div class=\"card-header\">\n");
      out.write("                <h3 class=\"card-title\">Add assignment</h3>\n");
      out.write("              </div>\n");
      out.write("              <!-- /.card-header -->\n");
      out.write("              <!-- form start -->\n");
      out.write("              <form action=\"addassignment\" method=\"POST\">\n");
      out.write("                  ");
  Connection cn=null;
            Statement st=null;
            String id="1";
            try
        {
         Class.forName("com.mysql.jdbc.Driver");
         cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
         st=cn.createStatement();
         String sql="select collage_id from tbl_collage";
         ResultSet rs= st.executeQuery(sql);
         while(rs.next())
         { 
           id=String.valueOf(Integer.parseInt(rs.getString("collage_id"))+1);
         }

        }catch(Exception ex)
        {
          out.println(ex);
        }


      out.write("\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                   <div class=\"row mb-2\">\n");
      out.write("          <div class=\"col-sm-6\">\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                  <label for=\"college\">College</label>\n");
      out.write("                  <select class=\"custom-select form-control-border\" id=\"collegeSelect\" name=\"college\">\n");
      out.write("                      <option value=\"\">Select College</option>\n");
      out.write("                          ");

                          
                          
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
      out.write("                  </select>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"col-sm-6\">\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                  <label for=\"dept\">Department</label>\n");
      out.write("                  <select class=\"custom-select form-control-border\" id=\"departmentSelect\" name=\"dept\">\n");
      out.write("                    <option value=\"\">Select College</option>\n");
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
      out.write("                  </select>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("              <div class=\"row mb-2\">\n");
      out.write("          <div class=\"col-sm-6\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <label for=\"class\">Class</label>\n");
      out.write("                  <select class=\"custom-select form-control-border\" id=\"collegeSelect\" name=\"class\">\n");
      out.write("                      \n");
      out.write("                    <option value=\"\">Select class</option>\n");
      out.write("                          ");

                          
                          
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
      out.write("                  </select>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("\n");
      out.write("              <div class=\"col-sm-6\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <label for=\"subject\">Subject</label>\n");
      out.write("                  <select class=\"custom-select form-control-border\" id=\"collegeSelect\" name=\"subject\">\n");
      out.write("                      \n");
      out.write("                    <option value=\"\">Select College</option>\n");
      out.write("                          ");

                          
                          
                          try
                          {
                             

                              
                             Class.forName("com.mysql.jdbc.Driver");
                             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
                             st=cn.createStatement();
                             String sql="Select * from tbl_subject";
                             ResultSet rs=st.executeQuery(sql);
                             while(rs.next())
                             {
                          
                          
                          
                          
                          

                          
                          
      out.write("\n");
      out.write("                          <option>");
      out.print(rs.getString("subject_name"));
      out.write("</option>\n");
      out.write("                          ");

                          }
                          }catch(Exception ex)
{



}
                          
      out.write("\n");
      out.write("                  </select>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("\n");
      out.write("                      <div class=\"col-sm-6\">\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <label for=\"Inputusername\">Assignment title</label>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"Inputusername\" placeholder=\"Assignment Title\" onkeypress=\"javascript:return isAlphanumric(event)\" name=\"assi_title\">\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("                  </div>\n");
      out.write("                      <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <label for=\"exampleInputFile\">question File</label>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                      <div class=\"custom-file\">\n");
      out.write("                        <input type=\"file\" class=\"custom-file-input\" id=\"resultInputFile\" name=\"assi_File\">\n");
      out.write("                        <label class=\"custom-file-label\" for=\"resultInputFile\">Choose file</label>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"input-group-append\">\n");
      out.write("                        <span class=\"input-group-text\">Upload</span>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("                  \n");
      out.write("                    \n");
      out.write("                          \n");
      out.write("                      \n");
      out.write("              </div>\n");
      out.write("                \n");
      out.write("                 \n");
      out.write("                  \n");
      out.write("                </div>\n");
      out.write("                <!-- /.card-body -->\n");
      out.write("\n");
      out.write("                \n");
      out.write("                <div class=\"card-footer\">\n");
      out.write("                  <div class=\"row mb-2\">\n");
      out.write("                    <div class=\"col-md-6\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-2\">\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\" name=\"btn_save\" value=\"Save\">Save</button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-2\">\n");
      out.write("                  <button type=\"submit\" class=\"btn btn-warning\" name=\"btn_save\" value=\"Edit\">Edit</button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-2\">\n");
      out.write("                  <button type=\"submit\" class=\"btn btn-danger\" name=\"btn_save\" value=\"Close\">Close</button>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("              </form>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.card -->\n");
      out.write("\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          <!--/.col (right) -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.row -->\n");
      out.write("      </div><!-- /.container-fluid -->\n");
      out.write("    </section>\n");
      out.write("    <!-- /.content -->\n");
      out.write("  </div>\n");
      out.write("  <!-- /.content-wrapper -->\n");
      out.write("  \n");
      out.write("\n");
      out.write("  <!-- Control Sidebar -->\n");
      out.write("  <aside class=\"control-sidebar control-sidebar-dark\">\n");
      out.write("    <!-- Control sidebar content goes here -->\n");
      out.write("  </aside>\n");
      out.write("  <!-- /.control-sidebar -->\n");
      out.write("</div>\n");
      out.write("<!-- ./wrapper -->\n");
      out.write("\n");
      out.write("<!-- jQuery -->\n");
      out.write("<script src=\"plugins/jquery/jquery.min.js\"></script>\n");
      out.write("<!-- Bootstrap 4 -->\n");
      out.write("<script src=\"plugins/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("<!-- bs-custom-file-input -->\n");
      out.write("<script src=\"plugins/bs-custom-file-input/bs-custom-file-input.min.js\"></script>\n");
      out.write("<!-- AdminLTE App -->\n");
      out.write("<script src=\"dist/js/adminlte.min.js\"></script>\n");
      out.write("<!-- AdminLTE for demo purposes -->\n");
      out.write("<script src=\"dist/js/demo.js\"></script>\n");
      out.write("<!-- Page specific script -->\n");
      out.write("<script>\n");
      out.write("$(function () {\n");
      out.write("  bsCustomFileInput.init();\n");
      out.write("});\n");
      out.write("</script>\n");
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
