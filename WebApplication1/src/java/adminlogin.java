/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Piyush
 */
public class adminlogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out= resp.getWriter();
        
        
        String adm_username=req.getParameter("adm_username");
    String adm_pass=req.getParameter("adm_pass");
    String event=req.getParameter("btn_login");
           

//print the input from users

        out.println(adm_username);
        out.println(adm_pass);
       
        out.println(event);
        
        
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
        
        Connection cn=null;
       Statement st=null;
       
       
        if(event.equals("Login"))
        {
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
            st=cn.createStatement();
            
            String sql="select * from tbl_admlogin where adm_username='"+adm_username+"' and adm_pass='"+adm_pass+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
                       
             resp.sendRedirect("addcollege.jsp");
            }
            else
            {
              out.println("Login Failed");
            }

        }catch(Exception ex)
        {
          out.println(ex.toString());
        } 


        }
    }

    

}
