<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Study Material</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <script type="text/javascript" src="validation.js"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="../../index3.html" class="brand-link">
      <img src="dist/img/virtual-lab-logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Study Material</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) -->
      

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
          
          
          
          
          <li class="nav-item  menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Forms
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="addcollege.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add college</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="adddepartment.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add department</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="addclass.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Class</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="addsubject.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Subject</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="addnotes.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Notes</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="addvideos.jsp" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Videos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="addexperiment.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Practical</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="addsyllabus.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Syllabus</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="addcompiler.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Compiler</p>
                </a>
              </li>
              
               <li class="nav-item">
                <a href="addresult.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Result</p>
                </a>
              </li>
              <li class="nav-item">
                  <a href="addassignment.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Assignment</p>
                </a>
              </li>
              
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Tables
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="listcollege.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List College</p>
                </a>
              </li>
                            <li class="nav-item ">
                <a href="listdepartment.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Department</p>
                </a>
              </li>
                            <li class="nav-item ">
                <a href="listclass.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Class</p>
                </a>
              </li>
                            <li class="nav-item ">
                <a href="listsubject.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Subject</p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="listnotes.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Notes</p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="listvideos.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Videos</p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="listexperiment.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Practical</p>
                </a>
              </li>
              <li class="nav-item ">
                <a href="listsyllabus.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Syllabus</p>
                </a>
              </li>
              
              <li class="nav-item ">
                <a href="listcompiler.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Compiler</p>
                </a>
              </li>
              
              <li class="nav-item ">
                <a href="listresult.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Result</p>
                </a>
              </li>
              <li class="nav-item ">
                  <a href="listassignment.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Assignment</p>
                </a>
              </li>
              <li class="nav-item ">
                  <a href="listsolvedassignment.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List solved Assignment</p>
                </a>
              </li>
              
                            
              
             
            </ul>
          </li>
          
          
          
         
          
          
          
         
       
   
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-3">
          </div>
          <div class="col-sm-6">
            <h1>Videos Add</h1>
          </div>
          <div class="col-sm-3">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Video Add Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-3">
          </div>
          <div class="col-sm-6">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add notes</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="addvideos" method="POST">
                <div class="card-body">
                   <div class="row mb-2">
          <div class="col-sm-6">
                  <div class="form-group">
                  <label for="college">College</label>
                  <select class="custom-select form-control-border" id="collegeSelect" name="college">
                      <option value="">Select College</option>
                          <%
                          
                          
                          try
                          {
                              Connection cn=null;
                             Statement st=null;
                            String id="1";
                              
                              Class.forName("com.mysql.jdbc.Driver");
                             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
                             st=cn.createStatement();
                             String sql="Select * from tbl_collage";
                             ResultSet rs=st.executeQuery(sql);
                             while(rs.next())
                             {
                          
                          
                          
                          
                          

                          
                          %>
                          <option><%=rs.getString("collage_name")%></option>
                          <%
                          }
                          }catch(Exception ex)
{



}
                          %>
                  </select>
                </div>
              </div>
              <div class="col-sm-6">
                  <div class="form-group">
                  <label for="dept">Department</label>
                  <select class="custom-select form-control-border" id="departmentSelect" name="dept">
                    <option value="">Select Department</option>
                          <%
                          
                          
                          try
                          {
                              Connection cn=null;
                             Statement st=null;
                            String id="1";
                              
                              Class.forName("com.mysql.jdbc.Driver");
                             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
                             st=cn.createStatement();
                             String sql="Select * from tbl_department";
                             ResultSet rs=st.executeQuery(sql);
                             while(rs.next())
                             {
                          
                          
                          
                          
                          

                          
                          %>
                          <option><%=rs.getString("dept_name")%></option>
                          <%
                          }
                          }catch(Exception ex)
{



}
                          %>
                  </select>
                </div>
              </div>
            </div>

              <div class="row mb-2">
          <div class="col-sm-6">
                <div class="form-group">
                  <label for="classname">Class</label>
                  <select class="custom-select form-control-border" id="collegeSelect" name="classname">
                      
                    <option value="">Select Class</option>
                          <%
                          
                          
                          try
                          {
                              Connection cn=null;
                             Statement st=null;
                            String id="1";
                              
                             Class.forName("com.mysql.jdbc.Driver");
                             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
                             st=cn.createStatement();
                             String sql="Select * from tbl_class";
                             ResultSet rs=st.executeQuery(sql);
                             while(rs.next())
                             {
                          
                          
                          
                          
                          

                          
                          %>
                          <option><%=rs.getString("class_name")%></option>
                          <%
                          }
                          }catch(Exception ex)
{



}
                          %>
                  </select>
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="subject">Subject</label>
                  <select class="custom-select form-control-border" id="collegeSelect" name="subject">
                      
                    <option value="">Select Subject</option>
                          <%
                          
                          
                          try
                          {
                              Connection cn=null;
                             Statement st=null;
                            String id="1";
                              
                             Class.forName("com.mysql.jdbc.Driver");
                             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
                             st=cn.createStatement();
                             String sql="Select * from tbl_subject";
                             ResultSet rs=st.executeQuery(sql);
                             while(rs.next())
                             {
                          
                          
                          
                          
                          

                          
                          %>
                          <option><%=rs.getString("subject_name")%></option>
                          <%
                          }
                          }catch(Exception ex)
{



}
                          %>
                  </select>
                </div>
              </div>
            </div>
                  
                  <div class="row mb-2">
          <div class="col-sm-6">
                  <div class="form-group">
                    <label for="InputVideotitle">Video Title</label>
                    <input type="text" class="form-control" id="InputVideotitle" placeholder="Enter Video Title" onkeypress="javascript:return isString(event)" name="videotitle">
                  </div>
                </div>

                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="exampleInputFile">Video File</label>
                    <div class="input-group">
                      <div class="custom-file">
                          <input type="file" class="custom-file-input" id="videoInputFile" name="videofile">
                        <label class="custom-file-label" for="videoInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text">Upload</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                
                  <div class="form-group">
                        <label>Video Description</label>
                        <textarea class="form-control" rows="3" placeholder="Enter The Discription....." onkeypress="javascript:return isAlphanumric(event)" name="videodesc"></textarea>
                      </div>
                  
                </div>
                <!-- /.card-body -->

                  <div class="card-footer">
                  <div class="row mb-2">
                    <div class="col-md-8">
                    </div>
                    <div class="col-md-2">
                        <button type="submit" class="btn btn-primary" name="btn_save" value="Save">Save</button>
                </div>
                <div class="col-md-2">
                <a href="listvideos.jsp" class="btn btn-warning" >Edit</a>
                </div>
              
                </div>
                </div>
              </form>
            </div>
          </div>
            <!-- /.card -->


          </div>
          
          
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
</body>
</html>
