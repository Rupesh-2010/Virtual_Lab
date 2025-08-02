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
 * @author Piyush
 */
public class add_college extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      PrintWriter out= resp.getWriter();
     
    //get the input parameters
    String id=req.getParameter("collage_id");
    String collegename=req.getParameter("collegename");
    String collegeimg=req.getParameter("collegeimg");
    String collegedesc=req.getParameter("collegedesc");
    String event=req.getParameter("btn_save");
    

    
           

//print the input from usersa

        out.println(collegename);
        out.println(collegeimg);
        out.println(collegedesc);
        out.println(event);
        
        
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
        
        
        
        if(event.equals("Save"))
       {
          String query1="insert into tbl_collage(collage_name,collage_img,collage_descrip)values('"+collegename+"','Img/"+collegeimg+"','"+collegedesc+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
        resp.setContentType("text/html;charset=UTF-8");
      out.println("<script type=\"text/javascript\">");
      out.println("alert('College Added');");
      out.println("location='listcollege.jsp';");
      out.println("</script>");
// 
       }
        
        
         if(event.equals("Update"))
    {
 
        String update=db.Query("update tbl_collage set collage_name='"+collegename+"' ,collage_img='Img/"+collegeimg+"',collage_descrip='"+collegedesc+"' where collage_id='"+id+"' ", "Record Updated");
       out.println(update);
    
    }
         
         if(event.equals("Delete"))
         {
         String query1="delete from  tbl_collage where collage_id='"+id+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
         

        
      
    
    }

  

}
