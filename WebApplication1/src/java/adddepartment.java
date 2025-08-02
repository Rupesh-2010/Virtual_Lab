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
public class adddepartment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out = resp.getWriter();

        //get the input parameters
        String id=req.getParameter("dept_id");
        String college = req.getParameter("college");
        String deptname = req.getParameter("deptname");
        String deptimg = req.getParameter("deptimg");
        String deptdesc = req.getParameter("deptdesc");
        String event = req.getParameter("btn_save");

//print the input from parameters from users
        out.println(college);
        out.println(deptname);
        out.println(deptimg);
        out.println(deptdesc);

        out.println(event);
       

        DatabaseConnection db = new DatabaseConnection();
        out.println(db.Connectdb());

        if (event.equals("Save")) {
            String query1 = "insert into tbl_department(college,dept_name,dept_img,dept_descrip)values('"+college+"','" + deptname + "','Img/" + deptimg + "','" + deptdesc + "')";
            String result = db.Query(query1, "Record Inserted");
            out.println(result);
      
        }
        
        if(event.equals("Update"))
    {
 
        String update=db.Query("update tbl_department set college='"+college+"',dept_name='"+deptname+"',dept_img='Img/"+deptimg+"',dept_descrip='"+deptdesc+"' where dept_id='"+id+"'", "Record Updated");
       out.println(update);
    
    }
           if(event.equals("Delete"))
         {
         String query1="delete from  tbl_department where dept_id='"+id+"'";
       String result=db.Query(query1, "Record Deleted");
       out.println(result);
         }

        
        
        
    }

}
