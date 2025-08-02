<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../../index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    
  </nav>
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
         
         
              <li class="nav-item">
                <a href="addcollege.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add college</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="adddepartment.jsp" class="nav-link active">
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
                <a href="addvideos.jsp" class="nav-link">
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
                <a href="addquiz.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Quiz</p>
                </a>
              </li>
               <li class="nav-item">
                <a href="addresult.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Result</p>
                </a>
              </li>
     
         
        
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
            <h1>Update Compiler</h1>
          </div>
          <div class="col-sm-3">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Update Compiler Form</li>
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
          <div class="col-md-6">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h1 class="card-title">Compiler</h1>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="addcompiler" method="POST">
                  
                <div class="card-body">
                    
                        <div class="col-6">
                    <label>Id</label>
                    <input type="text" name="compiler_id" value="<%=request.getParameter("compiler_id")%>"  class="form-control" placeholder="Enter id" >
                    </div>
                    
                   
                    <div class="form-group">
                    <label for="Inputcollegename">Compiler Title</label>
                    <input type="text" class="form-control" value="<%=request.getParameter("compiler_name")%>" id="Inputcollegename" placeholder="Enter Compiler name" onkeypress="javascript:return isString(event)" name="compilername">
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                  <div class="form-group">
                    <label for="exampleInputFile">Compiler link</label>
                    <div class="input-group">
                      <div class="custom-file">
                          <input type="text" class="form-control" value="<%=request.getParameter("compiler_link")%>" id="NotesInputFile" placeholder="Enter Compiler link" name="compilerlink">
                        
                      </div>
                      
                    </div>
                  </div>
                </div>
                      </div>
                   
                  
                  
                </div>
                <!-- /.card-body -->

               
                <div class="card-footer">
                  <div class="row mb-2">
                    <div class="col-md-8">
                    </div>
                   
                <div class="col-md-2">
                    <input type="submit" class="btn btn-warning" name="btn_save" value="Update">
                </div>
                      
                <div class="col-md-2">
                    <input type="submit" class="btn btn-danger" name="btn_save" value="Delete">
                  
                </div>
                </div>
                </div>
              </form>
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
