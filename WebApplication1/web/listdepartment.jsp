<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

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

<body class="hold-transition sidebar-mini ">
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
                <a href="listcollege.jsp" class="nav-link ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>List College</p>
                </a>
              </li>
                            <li class="nav-item ">
                <a href="listdepartment.jsp" class="nav-link active">
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
  <div class="row">
      <div class="col-2"></div>
      
  <div class="container">
      <div class="row">
          <div class="col-6">
              <br>
    <h1>Department List</h1><br>
    </div>
    <div class="col-6">
        <br>
        
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">

    </div>
</div>
      <div style="overflow-x:auto;">
          
          <table id="myTable" >
  <tr>
      <th scope="col">#</th>
        <th>department name</th>
        <th>department image</th>
        <th>College</th>
        <th>department description</th>
         <th>Action</th>
   
      </tr>
  <%
    Connection cn=null;
   Statement st=null;
   int counter=1;
  
       try
       {
            Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
           st=cn.createStatement();
           String sql="select * from tbl_department";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
           <tbody>
            <tr>
        <form action="update_dept.jsp" method="POST">
                <th scope="row"><%=counter++%></th>
               <input type="hidden" name="dept_id" value="<%=rs.getString("dept_id")%>" >   
        <td><%=rs.getString("dept_name")%></td>
        <input type="hidden" name="dept_name" value="<%=rs.getString("dept_name")%>">
        <td><%=rs.getString("dept_img")%></td>
        <input type="hidden" name="dept_img" value="<%=rs.getString("dept_img")%>">
        <td><%=rs.getString("college")%></td>
        <input type="hidden" name="college" value="<%=rs.getString("college")%>">
        
        <td><%=rs.getString("dept_descrip")%></td>
        <input type="hidden" name="dept_descrip" value="<%=rs.getString("dept_descrip")%>">

         <td>
             <input type="submit" class="btn btn-danger" name="btn_save" value="Delete">
             <input type="submit" class="btn btn-warning" name="btn_save" value="Edit">
         </td>
         </form>
      </tr>
      
    </tbody>
           <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
      
</table>
</div>

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
