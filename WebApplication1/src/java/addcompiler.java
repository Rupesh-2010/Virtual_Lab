/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shrey
 */
public class addcompiler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
         PrintWriter out= resp.getWriter();
     
    //get the input parameters
    String id=req.getParameter("compiler_id");
    String compilername=req.getParameter("compilername");
    String compilerlink=req.getParameter("compilerlink");
    String event=req.getParameter("btn_save");
           

//print the input from parameters from users
        
        out.println(compilername);
        out.println(compilerlink);
        out.println(event);
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
         if(event.equals("Save"))
       {
          String query1="insert into tbl_compiler(compiler_name,compiler_link)values('"+compilername+"','"+compilerlink+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
         if(event.equals("Update"))
    {
 
        String update=db.Query("update tbl_compiler set compiler_name='"+compilername+"',compiler_link='"+compilerlink+"' where compiler_id='"+id+"'", "Record Updated");
       out.println(update);
    
    }
        if(event.equals("Delete"))
         {
         String query1="delete from  tbl_compiler where compiler_id='"+id+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
         
         
         
//          resp.setContentType("text/html;charset=UTF-8");
//      out.println("<script type=\"text/javascript\">");
//      out.println("alert('compiler added successfully');");
//      out.println("location='listcompiler.jsp';");
//      out.println("</script>");
    }
    
}
