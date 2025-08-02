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
public class addsyllabus extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out= resp.getWriter();
     
    //get the input parameters
     String id=req.getParameter("syllabus_id");
    String college=req.getParameter("college");
    String dept=req.getParameter("dept");
    String classname=req.getParameter("class");
    String subject=req.getParameter("subject");
    String syllabustitle=req.getParameter("syllabustitle");
     String syllabusfile=req.getParameter("syllabusfile");
    
    
    String event=req.getParameter("btn_save");
           

//print the input from parameters from users

        out.println(college);
        out.println(dept);
        out.println(classname);
        out.println(subject);
        out.println(syllabustitle);
        out.println(syllabusfile);
       
        
        out.println(event);
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
        
         if(event.equals("Save"))
       {
          String query1="insert into virtual_lab.tbl_syllabus(college,dept,class,subject,syllabus_title,syllabus_file)values('"+college+"','"+dept+"','"+classname+"','"+subject+"','"+syllabustitle+"','file/"+syllabusfile+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
         
          if(event.equals("Update"))
    {
 
        String update=db.Query("update tbl_syllabus set college='"+college+"',dept='"+dept+"',class='"+classname+"',subject='"+subject+"',syllabus_title='"+syllabustitle+"',syllabus_file='file/"+syllabusfile+"' where syllabus_id='"+id+"'", "Record Updated");
       out.println(update);
    
    }
        if(event.equals("Delete"))
         {
         String query1="delete from  tbl_syllabus where syllabus_id='"+id+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
          resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Syllabus added successfully');");
      out.println("location='listsyllabus.jsp';");
      out.println("</script>");
        
    }
    
}
