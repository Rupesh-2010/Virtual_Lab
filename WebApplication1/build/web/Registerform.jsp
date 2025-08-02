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
  <!-- icheck bootstrap -->
  <link rel="stylesheet" hrefplugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
 <script type= "text/javascript" src = "countries.js"></script>
  <script src="cities.js"></script>
</head>
<body class="hold-transition register-page" background="dist/img/4893763.jpg">
    
    
   <div class="container-fluid">
    <br><br><br>

      
<div class="row">
      <div class="col-sm-4"></div>
      <div class="col-sm-4">
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
        <a href="index.html" class="h1"><b>Online Study Material</b></a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Register a new Membership</p>


      <form action="registerform" method="POST">
         <div class="row">
      <div class="col-sm-4">

        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="first name"   name="fname" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        </div>

         <div class="col-sm-4">

        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Middle name" name="mname" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
      </div>

       <div class="col-sm-4">

        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Last name" name="lname" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
      </div>
    </div>

        <div class="row">
          <div class="col-sm-8">
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="Email"  name="email" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="input-group mb-3">
           <input type="text" placeholder="Date of Birth"
                    onfocus="(this.type='date')" class="form-control"  name="dob" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-calendar-alt"></span>
            </div>
          </div>
        </div>
      </div>
    </div>
 
 <div class="row">
          <div class="col-sm-12">
        <div class="input-group mb-3">
          <textarea class="form-control" placeholder="Address"  name="address"  required></textarea>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-address-card"></span>
            </div>
          </div>
        </div>
      </div>
    </div>

<div class="row">
          <div class="col-sm-4">
     <div class="form-group">
                       
         <select class="form-control" onchange="print_state('state',this.selectedIndex);" id="country" name ="country"></select>
         <script language="javascript">print_country("country");</script>
                      </div>
                    </div>

                     <div class="col-sm-4">
                    <div class="form-group">
                        
                        <select class="form-control" name ="state" id ="state"  onchange="print_city('sts', this.selectedIndex);"></select>
                         <script language="javascript">print_country("country");</script>
                      </div>
                    </div>

                    <div class="col-sm-4">
                    <div class="form-group">
                        
<!--                       <select  onchange="print_city('state', this.selectedIndex);" id="sts" name ="stt" class="form-control" required></select>-->
<select id ="sts" class="form-control" required></select>

                      </div>
                    </div>
                  </div>

                  <div class="row">
          <div class="col-sm-6">
     <div class="form-group">
                       
                        <select class="form-control"  name="village" required>
                          <option value="">--- Village ---</option>
                          <option value="1">Gadhinglaj</option>
                          <option value="2">Batkanangale</option>
                          <option value="3">Nesari</option>
                          <option value="4">Sambare</option>
                          <option value="5">Saroli</option>
                           <option value="5">Harali</option>
                            <option value="5">Saroli</option>
                        </select>
                      </div>
                    </div>

                    <div class="col-sm-6">
                     <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Postal code"  name="pin" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-building"></span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-sm-4">

        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Adhar Card No"  name="adhrno" minlength="12" maxlength="12" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-id-card"></span>
            </div>
          </div>
        </div>
        </div>

         <div class="col-sm-4">

        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="Primary Contact No" minlength="10" maxlength="10" name="contact1" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>
      </div>

       <div class="col-sm-4">

        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Alternate Contact No" minlength="10" maxlength="10"  name="contact2" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-phone"></span>
            </div>
          </div>
        </div>
      </div>
    </div>

      <div class="row">
          <div class="col-sm-4">
     <div class="form-group">
                       
                        <select class="form-control"  name="selectcollege" required>
                           <option value="">Select College</option>
                          <%
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

                     <div class="col-sm-4">
                    <div class="form-group">
                        
                        <select class="form-control"  name="selectdept" required>
                         <option value="">Department</option>
                          <%
                          
                          
                          try
                          {
                              
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

                    <div class="col-sm-4">
                    <div class="form-group">
                        
                        <select class="form-control"  name="selectclass" required>
                          <option value="">Select Class</option>
                           <%
                          
                          
                          try
                          {
                              
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
                  </div>


                  <div class="row">
      <div class="col-sm-6">

        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Username"  name="username" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user-secret"></span>
            </div>
          </div>
        </div>
        </div>

         <div class="col-sm-6">

        <div class="input-group mb-3">
            <input type="password" class="form-control" placeholder="Password"  name="password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
      </div>

      
    </div>
    <br>

        <div class="row">
          <div class="col-4"></div>
          <div class="col-4">
            <div class="icheck-primary">
                <input type="checkbox" id="agreeTerms" name="terms" value="agree"  name="termsagree" required>
              <label for="agreeTerms">
               I agree to the <a href="terms.pdf">terms</a>
              </label>
            </div>
          </div>
          <div class="col-4"></div>
          <!-- /.col -->
          <br>
          <div class="col-4"></div>
          
          <div class="col-4">
              <button type="submit" class="btn btn-primary btn-block"  name="btn_reg" value="Register" >Register</button>
          </div>
        </div>
      </form>
          <!-- /.col -->
        </div>


      

      <a href="Loginform.jsp" class="text-center">I Already have a Membership</a>
      <br>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>

</div>

</div>
</div>
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
</body>
</html>
