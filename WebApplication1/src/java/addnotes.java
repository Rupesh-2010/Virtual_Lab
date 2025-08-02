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
public class addnotes extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
          PrintWriter out= resp.getWriter();
     
    //get the input parameters
    String id=req.getParameter("notes_id");
    String college=req.getParameter("college");
    String dept=req.getParameter("dept");
    String class_name=req.getParameter("class_name");
    String subject=req.getParameter("subject");
    String notestitle=req.getParameter("notestitle");
     String notesfile=req.getParameter("notesfile");
    String notesdesc=req.getParameter("notesdesc");
    
    String event=req.getParameter("btn_save");
           

//print the input from parameters from users

        out.println(college);
        out.println(dept);
        out.println(class_name);
        out.println(subject);
        out.println(notestitle);
        out.println(notesfile);
        out.println(notesdesc);
        
        out.println(event);
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
        
        if(event.equals("Save"))
       {
          String query1="insert into virtual_lab.tbl_notes(college,dept,class,subject,notes_title,notes_file,notes_descrip)values('"+college+"','"+dept+"','"+class_name+"','"+subject+"','"+notestitle+"','file/"+notesfile+"','"+notesdesc+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
        
        if(event.equals("Update"))
    {
 
        String update=db.Query("update tbl_notes set college='"+college+"',dept='"+dept+"',class='"+class_name+"',subject='"+subject+"',notes_title='"+notestitle+"',notes_file='file/"+notesfile+"',notes_descrip='"+notesdesc+"' where notes_id='"+id+"'", "Record Updated");
       out.println(update);
    
    }
        if(event.equals("Delete"))
         {
         String query1="delete from  tbl_notes where notes_id='"+id+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
        
        
        
//        
//         resp.setContentType("text/html;charset=UTF-8");
//      out.println("<script type=\"text/javascript\">");
//      out.println("alert('Notes added successfully');");
//      out.println("location='listnotes.jsp';");
//      out.println("</script>");
    }
    
}
