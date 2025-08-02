<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>View_Department</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<style>      
  body{margin-top:20px;}
.blog-listing {
    padding-top: 30px;
    padding-bottom: 30px;
}
.gray-bg {
    background-color: #f5f5f5;
}
/* Blog 
---------------------*/
.blog-grid {
  box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
  border-radius: 5px;
  overflow: hidden;
  background: #ffffff;
  margin-top: 15px;
  margin-bottom: 15px;
}
.blog-grid .blog-img {
  position: relative;
}
.blog-grid .blog-img .date {
  position: absolute;
  background: #fc5356;
  color: #ffffff;
  padding: 8px 15px;
  left: 10px;
  top: 10px;
  border-radius: 4px;
}
.blog-grid .blog-img .date span {
  font-size: 22px;
  display: block;
  line-height: 22px;
  font-weight: 700;
}
.blog-grid .blog-img .date label {
  font-size: 14px;
  margin: 0;
}
.blog-grid .blog-info {
  padding: 20px;
}
.blog-grid .blog-info h5 {
  font-size: 22px;
  font-weight: 700;
  margin: 0 0 10px;
}
.blog-grid .blog-info h5 a {
  color: #20247b;
}
.blog-grid .blog-info p {
  margin: 0;
}
.blog-grid .blog-info .btn-bar {
  margin-top: 20px;
}


/* Blog Sidebar
-------------------*/
.blog-aside .widget {
  box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
  border-radius: 5px;
  overflow: hidden;
  background: #ffffff;
  margin-top: 15px;
  margin-bottom: 15px;
  width: 100%;
  display: inline-block;
  vertical-align: top;
}
.blog-aside .widget-body {
  padding: 15px;
}
.blog-aside .widget-title {
  padding: 15px;
  border-bottom: 1px solid #eee;
}
.blog-aside .widget-title h3 {
  font-size: 20px;
  font-weight: 700;
  color: #fc5356;
  margin: 0;
}
.blog-aside .widget-author .media {
  margin-bottom: 15px;
}
.blog-aside .widget-author p {
  font-size: 16px;
  margin: 0;
}
.blog-aside .widget-author .avatar {
  width: 200px;
  height: 200px;
  border-radius: 50%;
  overflow: hidden;
}
.blog-aside .widget-author h6 {
  font-weight: 600;
  color: #20247b;
  font-size: 22px;
  margin: 0;
  padding-left: 20px;
}
.blog-aside .post-aside {
  margin-bottom: 15px;
}
.blog-aside .post-aside .post-aside-title h5 {
  margin: 0;
}
.blog-aside .post-aside .post-aside-title a {
  font-size: 18px;
  color: #20247b;
  font-weight: 600;
}
.blog-aside .post-aside .post-aside-meta {
  padding-bottom: 10px;
}
.blog-aside .post-aside .post-aside-meta a {
  color: #6F8BA4;
  font-size: 12px;
  text-transform: uppercase;
  display: inline-block;
  margin-right: 10px;
}
.blog-aside .latest-post-aside + .latest-post-aside {
  border-top: 1px solid #eee;
  padding-top: 15px;
  margin-top: 15px;
}
.blog-aside .latest-post-aside .lpa-right {
  width: 90px;
}
.blog-aside .latest-post-aside .lpa-right img {
  border-radius: 3px;
}
.blog-aside .latest-post-aside .lpa-left {
  padding-right: 15px;
}
.blog-aside .latest-post-aside .lpa-title h5 {
  margin: 0;
  font-size: 15px;
}
.blog-aside .latest-post-aside .lpa-title a {
  color: #20247b;
  font-weight: 600;
}
.blog-aside .latest-post-aside .lpa-meta a {
  color: #6F8BA4;
  font-size: 12px;
  text-transform: uppercase;
  display: inline-block;
  margin-right: 10px;
}

.tag-cloud a {
  padding: 4px 15px;
  font-size: 13px;
  color: #ffffff;
  background: #20247b;
  border-radius: 3px;
  margin-right: 4px;
  margin-bottom: 4px;
}
.tag-cloud a:hover {
  background: #fc5356;
}

.blog-single {
  padding-top: 30px;
  padding-bottom: 30px;
}

.article {
  box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
  border-radius: 5px;
  overflow: hidden;
  background: #ffffff;
  padding: 15px;
  margin: 15px 0 30px;
}
.article .article-title {
  padding: 15px 0 20px;
}
.article .article-title h6 {
  font-size: 35px;
  font-weight: 700;
  margin-bottom: 20px;
}
.article .article-title h6 a {
  text-transform: uppercase;
  color: #fc5356;
  border-bottom: 1px solid #fc5356;
}
.article .article-title h2 {
  color: #20247b;
  font-weight: 600;
}
.article .article-title .media {
  padding-top: 15px;
  border-right:  1px dashed #ddd;
  padding-bottom: 20px;
}
.article .article-title .media .avatar {
  width: 400px;
  height: 400px;
  
  overflow: hidden;
}
.article .article-title .media .media-body {
  padding-left: 8px;
}
.article .article-title .media .media-body label {
  font-weight: 600;
  color: #fc5356;
  margin: 0;
}
.article .article-title .media .media-body span {
  display: block;
  font-size: 12px;
}
.article .article-content h1,
.article .article-content h2,
.article .article-content h3,
.article .article-content h4,
.article .article-content h5,
.article .article-content h6 {
  color: #20247b;
  font-weight: 600;
  margin-bottom: 15px;
}
.article .article-content blockquote {
  max-width: 600px;
  padding: 15px 0 30px 0;
  margin: 0;
}
.article .article-content blockquote p {
  font-size: 20px;
  font-weight: 500;
  color: #fc5356;
  margin: 0;
}
.article .article-content blockquote .blockquote-footer {
  color: #20247b;
  font-size: 16px;
}
.article .article-content blockquote .blockquote-footer cite {
  font-weight: 600;
}
.article .tag-cloud {
  padding-top: 10px;
}

.article-comment {
  box-shadow: 0 0 30px rgba(31, 45, 61, 0.125);
  border-radius: 5px;
  overflow: hidden;
  background: #ffffff;
  padding: 20px;
}
.article-comment h4 {
  color: #20247b;
  font-weight: 700;
  margin-bottom: 25px;
  font-size: 22px;
}
img {
    max-width: 100%;
}
img {
    vertical-align: middle;
    border-style: none;
}

/* Contact Us
---------------------*/
.contact-name {
  margin-bottom: 30px;
}
.contact-name h5 {
  font-size: 22px;
  color: #20247b;
  margin-bottom: 5px;
  font-weight: 600;
}
.contact-name p {
  font-size: 18px;
  margin: 0;
}

.social-share a {
  width: 40px;
  height: 40px;
  line-height: 40px;
  border-radius: 50%;
  color: #ffffff;
  text-align: center;
  margin-right: 10px;
}
.social-share .dribbble {
  box-shadow: 0 8px 30px -4px rgba(234, 76, 137, 0.5);
  background-color: #ea4c89;
}
.social-share .behance {
  box-shadow: 0 8px 30px -4px rgba(0, 103, 255, 0.5);
  background-color: #0067ff;
}
.social-share .linkedin {
  box-shadow: 0 8px 30px -4px rgba(1, 119, 172, 0.5);
  background-color: #0177ac;
}

.contact-form .form-control {
  border: none;
  border-bottom: 1px solid #20247b;
  background: transparent;
  border-radius: 0;
  padding-left: 0;
  box-shadow: none !important;
}
.contact-form .form-control:focus {
  border-bottom: 1px solid #fc5356;
}
.contact-form .form-control.invalid {
  border-bottom: 1px solid #ff0000;
}
.contact-form .send {
  margin-top: 20px;
}
@media (max-width: 767px) {
  .contact-form .send {
    margin-bottom: 20px;
  }
}

.section-title h2 {
    font-weight: 700;
    color: #20247b;
    font-size: 45px;
    margin: 0 0 15px;
    border-left: 5px solid #fc5356;
    padding-left: 15px;
}
.section-title {
    padding-bottom: 45px;
}
.contact-form .send {
    margin-top: 20px;
}
.px-btn {
    padding: 0 50px 0 20px;
    line-height: 60px;
    position: relative;
    display: inline-block;
    color: #20247b;
    background: none;
    border: none;
}
.px-btn:before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    border-radius: 30px;
    background: transparent;
    border: 1px solid rgba(252, 83, 86, 0.6);
    border-right: 1px solid transparent;
    -moz-transition: ease all 0.35s;
    -o-transition: ease all 0.35s;
    -webkit-transition: ease all 0.35s;
    transition: ease all 0.35s;
    width: 60px;
    height: 60px;
}
.px-btn .arrow {
    width: 13px;
    height: 2px;
    background: currentColor;
    display: inline-block;
    position: absolute;
    top: 0;
    bottom: 0;
    margin: auto;
    right: 25px;
}
.px-btn .arrow:after {
    width: 8px;
    height: 8px;
    border-right: 2px solid currentColor;
    border-top: 2px solid currentColor;
    content: "";
    position: absolute;
    top: -3px;
    right: 0;
    display: inline-block;
    -moz-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    -webkit-transform: rotate(45deg);
    transform: rotate(45deg);
}

            
        </style>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-inner-pages">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">Study Material</a></h1>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto " href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="about.html">About</a></li>
          <li class="dropdown"><a href="#"><span><b>View</b></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
             <li><a href="view_college.jsp">College</a></li>
             
              <li> <a href="view_Class.jsp">Class</a></li>
              <li> <a href="view_Experiment.jsp">Practical</a></li>
                <li> <a href="view_sub.jsp">Subjects </a></li>
                <li> <a href="view_Assignment.jsp">Assignments</a></li>
                  <li> <a href="user_listassignment.jsp">Uploded Assignments</a></li>
                    <li> <a href="view_notes.jsp">Notes</a></li>
                     <li> <a href="view_video.jsp">videos</a></li>
                     <li> <a href="view_result.jsp">Result</a></li>
            </ul>
          <li><a class="nav-link scrollto" href="index.html">Logout</a></li>
          </li>
          
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <br>
           <div class="content-wrapper" >
    <!-- Content Header (Page header) -->
    

    <!-- Main content -->
    <section class="content">
<!--DataBase Connection start -->
<%
    Connection cn=null;
   Statement st=null;
    int counter=1;
  
       try
       {
            Class.forName("com.mysql.jdbc.Driver");
                cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
           st=cn.createStatement();
           String sql="select * from tbl_department where college='"+session.getAttribute("clg")+"' and dept_name='"+session.getAttribute("dept")+"' ";
           ResultSet rs=st.executeQuery(sql);
           while(rs.next())
                             {
           %>
          <div class="blog-single gray-bg">
        <div class="container">
                    <article class="article">
                        <div class="article-title">
                           
                            <h6><a>Department Name:</a></h6>
                              <div class="row align-items">
                <div class="col-lg-6 m-15px-tb">
                            <h2><%=rs.getString("dept_name")%></h2>
                            
                            
                                    <img src="<%=rs.getString("dept_img")%>" class="rounded mx-auto d-block" alt="img-thumbnail"  height="400" width="1000">
                                
                </div>
                                 
                                <div class="col-lg-6 m-15px-tb"> 
                       
                           
                          <h2><a>Description</a></h2>
                          <p style="text-align: justify;
  text-justify: inter-word;"><%=rs.getString("dept_descrip")%></p>
                           
                           
                       
                                </div>
                            </div>
                    </article>
                </div>
            </div>
        </div>
          </div>
    
                                       
           <%
           }
       }catch(Exception ex)
       {
           out.println(ex.toString());
       }
     

%>
</section>
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
<!--DataBase Connection End -->
      <!-- Default box -->
     
</form>
  <!-- ======= Footer ======= -->
  <footer id="footer">

    

    <div class="footer-top">
      <div class="container">
        <div class="row">
            <div class="col-3 footer-links">
            <h3>Useful Links</h3>
            <ul>
                <br>
              <li><i class="bx bx-chevron-right"></i> <a href="index.html">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="view_Department.jsp">Department</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="view_Class.jsp">Class</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="view_Experiment.jsp">Practical</a></li>
                <li><i class="bx bx-chevron-right"></i> <a href="view_sub.jsp">Subjects </a></li>
              </div>
            
           
              <div class="col-3  footer-links">
                  <ul>
                      <br>
                      <br>
                      <h4></h4>
                      <li><i class="bx bx-chevron-right"></i> <a href="view_Assignment.jsp">Assignments</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="user_listassignment.jsp">Uploded Assignments</a></li>
                    <li><i class="bx bx-chevron-right"></i> <a href="view_notes.jsp">Notes</a></li>
                     <li><i class="bx bx-chevron-right"></i> <a href="view_video.jsp">videos</a></li>
                     <li><i class="bx bx-chevron-right"></i> <a href="view_result.jsp">Result</a></li>
                     
            </ul>
           </div>
           </div>
          </div>
            
        </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Online Study Material</span></strong>. All Rights Reserved
      </div>
      <div class="credits">Designed by <a href="index.html">study Material</a>
      </div>
    </div>
  </footer>

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>