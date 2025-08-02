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
import javax.servlet.http.HttpSession;

/**
 *
 * @author shrey
 */
public class Loginform extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
         PrintWriter out= resp.getWriter();
        
        
        String username=req.getParameter("username");
    String password=req.getParameter("password");
    String event=req.getParameter("btn_login");
           

//print the input from users

        out.println(username);
        out.println(password);
       
        out.println(event);
        
        
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
        
        Connection cn=null;
       Statement st=null;
       
        HttpSession session=req.getSession();

        if(event.equals("Login"))
        {
            
            if(username.equals("admin"))
            {
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
            st=cn.createStatement();
                String pass = null;
            String sql="select * from tbl_admlogin where adm_username='"+username+"' and adm_pass='"+password+"'";
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
            else
            {
                
                try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/virtual_lab","root","root");
            st=cn.createStatement();
                String pass = null;
            String sql="select * from tbl_register where username='"+username+"' and pass_word='"+password+"'";
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {
              // session.setAttribute("reg_id", rs.getString("reg_id"));
              session.setAttribute("username", rs.getString("username"));
              session.setAttribute("clg", rs.getString("collage"));
              session.setAttribute("dept", rs.getString("department"));
              session.setAttribute("cls", rs.getString("class"));
              
             out.println(session.getAttribute("username"));
              out.println(session.getAttribute("clg"));
              out.println(session.getAttribute("dept"));
              out.println(session.getAttribute("cls"));
             resp.sendRedirect("view_college.jsp");
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

    
    
}
