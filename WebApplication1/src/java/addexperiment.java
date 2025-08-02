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
public class addexperiment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out= resp.getWriter();
     
    //get the input parameters
    String id=req.getParameter("experiment_id");
    String college=req.getParameter("college");
    String dept=req.getParameter("dept");
    String classname=req.getParameter("class");
    String subject=req.getParameter("subject");
    String exptname=req.getParameter("exptname");
    String compiler_link=req.getParameter("compiler_link");
     String exptfile=req.getParameter("exptfile");
    String exptdesc=req.getParameter("exptdesc");
    
    String event=req.getParameter("btn_save");
           

//print the input from parameters from users

        out.println(college);
        out.println(dept);
        out.println(classname);
        out.println(subject);
        out.println(exptname);
        out.println(compiler_link);
        out.println(exptfile);
        out.println(exptdesc);
        
        out.println(event);
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
         if(event.equals("Save"))
       {
          String query1="insert into virtual_lab.tbl_experiment(college,dept,class,subject,experiment_name,compiler_link,experiment_file,experiment_descrip)values('"+college+"','"+dept+"','"+classname+"','"+subject+"','"+exptname+"','"+compiler_link+"','file/"+exptfile+"','"+exptdesc+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
 
       }
         if(event.equals("Update"))
    {
 
        String update=db.Query("update tbl_experiment set college='"+college+"',dept='"+dept+"',class='"+classname+"',subject='"+subject+"',compiler_link='"+compiler_link+"',experiment_name='"+exptname+"',experiment_file='file/"+exptfile+"',experiment_descrip='"+exptdesc+"' where experiment_id='"+id+"'", "Record Updated");
       out.println(update);
    
    }
        if(event.equals("Delete"))
         {
         String query1="delete from  tbl_experiment where experiment_id='"+id+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }
         
         
         
//         resp.setContentType("text/html;charset=UTF-8");
//      out.println("<script type=\"text/javascript\">");
//      out.println("alert('Experiment added successfully');");
//      out.println("location='listexperiment.jsp';");
//      out.println("</script>");
    }
    
    
}
