<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
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
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
            <img src="dist/img/virtual-lab-logo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
<!--          <img src="dist/img/avatar5.jpg" class="img-circle elevation-2" alt="User Image">-->
        </div>
        <div class="info">
          <a href="#" class="d-block">Ghali College</a>
        </div>
      </div>

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
            <a href="#" class="nav-link " >
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../../index.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v1</p>
                </a>
              </li>
              
              
            </ul>
          </li>
          
          
          
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Forms
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="addcollege.jsp" class="nav-link">
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
                <a href="addvideos.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Videos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="addexperiment.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add experiment</p>
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
              <li class="nav-item">
                <a href="validation.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Validation</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Tables
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item ">
                <a href="templist.jsp" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List College</p>
                </a>
              </li>
                            <li class="nav-item ">
                <a href="listdepartment.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Department</p>
                </a>
              </li>
                            <li class="nav-item ">
                <a href="templist.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Class</p>
                </a>
              </li>
                            <li class="nav-item ">
                <a href="templist.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Subject</p>
                </a>
              </li>
                            <li class="nav-item ">
                <a href="templist.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List Notes</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../tables/data.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>DataTables</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../tables/jsgrid.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>jsGrid</p>
                </a>
              </li>
            </ul>
          </li>
          
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-search"></i>
              <p>
                Search
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../search/simple.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Simple Search</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../search/enhanced.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Enhanced</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-header">MISCELLANEOUS</li>
          
          <li class="nav-item">
            <a href="https://adminlte.io/docs/3.1/" class="nav-link">
              <i class="nav-icon fas fa-file"></i>
              <p>Documentation</p>
            </a>
          </li>
          
         
          <li class="nav-header">LABELS</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Important</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-warning"></i>
              <p>Warning</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>Informational</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  
  <%
    Connection cn=null;
   Statement st=null;
   
  
       try
       {
            Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
           st=cn.createStatement();
           String sql="select * from tbl_collage";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <div class="content-wrapper" >
    <!-- Content Header (Page header) -->
    

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card card-solid">
        <div class="card-body pb-0">
          <div class="row">
<!--            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  Shivraj College
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>Department of Computer Science</b></h2>
                      <p class="text-muted text-sm"><b>Description </b> The Department of Computer Science was established in the year 1981 with the objective of imparting quality education in the field of Computer Science. The Department has modern facilities for teaching, learning and research. The Department offers a wide array of research opportunities and programs of study at undergraduate and postgraduate level.r </p>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        
                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address:68HW+J4J, Vadarge Road, Near Jadeya Sidheshwar Math, Gadhinglaj, Maharashtra 416502</li>
                        <br>
                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: +91 - 12 12 23 52</li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="dist/img/computersciencedept.jpg" alt="user-avatar" class="card-image-top img-fluid">
                    </div>
                  </div>
                </div>
                
              </div>
            </div>-->
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                    <b>Shivraj College, Gadhinglaj</b>
                </div>
                <div class="card">
            <div class="image">
            <img class="card-image-top img-fluid" src="dist/img/computersciencedept.jpg" >
           
            </div>
            <div class="card-block">
                <h3 class="card-title" style="padding: 10px"><b>Department of Computer Science</b></h3><br><br>
                <p class="card-text" style="padding: 10px">  The Department of <b>Computer Science </b> was established in the year 1981 with the objective of imparting quality education in the field of Computer Science. The Department has modern facilities for teaching, learning and research. The Department offers a wide array of research opportunities and programs of study at undergraduate and postgraduate level.</p>
                <p><a class="btn btn-primary" href="#" role="button" style="margin-left: 10px ">View details »</a></p>
            </div>
            </div>
                
              </div>
                
            </div>

            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                    <b> Shivraj College, Gadhinglaj</b>
                </div>
                <div class="card">
            <div class="image">
                <img class="card-image-top img-fluid" src="dist/img/economists-discuss-trade-deal3.jpg" >
           
            </div>
            <div class="card-block">
                <h3 class="card-title" style="padding: 10px"><b>Department of Commerce</b></h3><br><br>
                <p class="card-text" style="padding: 10px"> The Department of <b>Commerce</b> promotes job creation and economic growth by ensuring fair trade, providing the data necessary to support commerce and constitutional democracy,for economic growth and opportunity. and fostering innovation by setting standards and conducting foundational research and development.</p>
                <p><a class="btn btn-primary" href="#" role="button" style="margin-left: 10px ">View details »</a></p>
            </div>
            </div>
                
              </div>
                
            </div>
           
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                    <b> Shivraj College, Gadhinglaj</b>
                </div>
                <div class="card">
            <div class="image">
            <img class="card-image-top img-fluid" src="dist/img/Art-Hero.jpg" >
           
            </div>
            <div class="card-block">
                <h3 class="card-title" style="padding: 10px"><b>Department of Arts</b></h3><br><br>
                <p class="card-text" style="padding: 10px"> What Is the <b>Art</b> Department? The art department is the team responsible for creating the overall look of a television show or feature film, as determined by the director. Together, they design, build, and decorate the sets on which the actors shoot, being mindful of every little detail that can support the director?s vision.</p>
                <p><a class="btn btn-primary" href="#" role="button" style="margin-left: 10px ">View details »</a></p>
            </div>
            </div>
                
              </div>
                
            </div>
              </div>
            
            
            
            
            
            
          </div>
        </div>
        <!-- /.card-body -->
<!--        <div class="card-footer">
          <nav aria-label="Contacts Page Navigation">
            <ul class="pagination justify-content-center m-0">
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item"><a class="page-link" href="#">6</a></li>
              <li class="page-item"><a class="page-link" href="#">7</a></li>
              <li class="page-item"><a class="page-link" href="#">8</a></li>
            </ul>
          </nav>
        </div>-->
        <!-- /.card-footer -->
      </div>
           <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
</table>

<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>


  
  <!-- /.content-wrapper -->
  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
  </div>
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
</div>
</body>
</html>
