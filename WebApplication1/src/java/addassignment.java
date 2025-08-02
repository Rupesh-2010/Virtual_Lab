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
public class addassignment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out= resp.getWriter();
     
    //get the input parameters
    String id=req.getParameter("assi_id");
    String college=req.getParameter("college");
    String dept=req.getParameter("dept");
    String classname=req.getParameter("class");
    String subject=req.getParameter("subject");
    
    String assi_title=req.getParameter("assi_title");
    
     String assi_File=req.getParameter("assi_File");
  
    
    String event=req.getParameter("btn_save");

           

//print the input from parameters from users

        out.println(college);
        out.println(dept);
        out.println(classname);
        out.println(subject);
       
        out.println(assi_title);
        out.println(assi_File);
        

        
        out.println(event);
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
        
       if(event.equals("Save"))
       {
          String query1="insert into virtual_lab.tbl_assignment(college,dept,class,subject,assi_title,assi_File)values('"+college+"','"+dept+"','"+classname+"','"+subject+"','"+assi_title+"','file/"+assi_File+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
               resp.setContentType("text/html;charset=UTF-8");
     out.println("<script type=\"text/javascript\">");
     out.println("alert('Record added ');");
      out.println("location='listassignment.jsp';");
      out.println("</script>");
 
       }
         
        if(event.equals("Update"))
    {

       String update=db.Query("update tbl_assignment set college='"+college+"',dept='"+dept+"',class='"+classname+"',subject='"+subject+"', assi_title='"+assi_title+"',   assi_File='file/"+assi_File+"' where assi_id='"+id+"'", "Record Updated");
      out.println(update);
   
   }
       if(event.equals("Delete"))
        {
        String query1="delete from  tbl_assignment where assi_id='"+id+"'";
       String result=db.Query(query1, "Record Deleted");
      out.println(result);
        }
         

    }
    
}
