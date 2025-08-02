<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="dist/css/adminlte.min.css">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
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
</head>
<body>

    <h1>College List</h1><br>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">

<table id="myTable">
  <tr>
        <th>collage name</th>
        <th>collage image</th>
        <th>collage description</th>
         <th>Action</th>
   
      </tr>
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
           <tbody>
            <tr>
        <td><%=rs.getString("collage_name")%></td>
        <td><%=rs.getString("collage_img")%></td>
        <td><%=rs.getString("collage_descrip")%></td>

         <td>
             <input type="submit" class="btn btn-danger" name="btn_signup" value="Delete">
             <input type="submit" class="btn btn-warning" name="btn_signup" value="Edit">
         </td>
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

</body>
</html>
