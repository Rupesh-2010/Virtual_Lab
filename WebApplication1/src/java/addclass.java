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
public class addclass extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
  
    PrintWriter out= resp.getWriter();
     
    //get the input parameters
  String id=req.getParameter("class_id");
    String college=req.getParameter("college");
    String dept=req.getParameter("dept");
    String classname=req.getParameter("classname");
    String classimg=req.getParameter("classimg");
    String classdesc=req.getParameter("classdesc");
    String event=req.getParameter("btn_save");
           

//print the input from parameters from users

        out.println(college);
        out.println(dept);
        out.println(classname);
        out.println(classimg);
        out.println(classdesc);
        out.println(event);
        
        
        
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
          if(event.equals("Save"))
       {
          String query1="insert into tbl_class(college,dept,class_name,class_img,class_descrip)values('"+college+"','"+dept+"','"+classname+"','Img/"+classimg+"','"+classdesc+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
          if(event.equals("Update"))
    {
 
        String update=db.Query("update tbl_class set college='"+college+"',dept='"+dept+"',class_name='"+classname+"',class_img='Img/"+classimg+"',class_descrip='"+classdesc+"' where class_id='"+id+"'", "Record Updated");
       out.println(update);
    
    }
          if(event.equals("Delete"))
         {
         String query1="delete from  tbl_class where class_id='"+id+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
        
          
          
          
          
          
//         resp.setContentType("text/html;charset=UTF-8");
//      out.println("<script type=\"text/javascript\">");
//      out.println("alert('Class added successfully');");
//      out.println("location='listclass.jsp';");
//      out.println("</script>");
    }
}






            
    
    

