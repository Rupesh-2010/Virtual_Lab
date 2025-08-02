<%-- 
    Document   : company_dynamic
    Created on : 15 Mar, 2023, 7:39:42 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="bootstrap.css">
    </head>
    <body>
          <div class="container-fluid   py-3">

            <h1 text align="center">College List</h1>
            <br><br>


      <%

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

      %>
     <div class="container">
                <div class="row">
                    <div class="col-sm-5"><br><br>
                        <img src=<%=rs.getString("collage_img")%> width="100" height="100"/>
                        
                    </div>
                    <div class="col-sm-7">
                        <h4>ID=<%=rs.getString("collage_id")%></h4>
                        <h4><%=rs.getString("collage_name")%></h4>
                         <h4><%=rs.getString("collage_name")%></h4>
                          <h4><%=rs.getString("collage_img")%></h4>
                           <h4><%=rs.getString("collage_descrip")%></h4>
                           
                          
                        <input type="submit" name="btn" value="Call" class="btn btn-primary">
                        <br><br><br>
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


        </div>
    </body>
</html>