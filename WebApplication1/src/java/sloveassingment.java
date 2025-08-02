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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Piyush
 */
public class sloveassingment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out= resp.getWriter();
     
    //get the input parameters
//  String college=req.getParameter("college");
//  String dept=req.getParameter("dept");
//  String class_name=req.getParameter("class");
//  String subject=req.getParameter("subject");
  String assi_title=req.getParameter("assi_title");
 String assi_answerFile=req.getParameter("assi_answerFile");
 
    
   String event=req.getParameter("Save");

           HttpSession session=req.getSession();

//print the input from parameters from users

//       out.println(college); 
//       out.println(dept); 
//       out.println(class_name); 
//       out.println(subject); 
       out.println(assi_title); 
        out.println(assi_answerFile);  
        out.println(event);
        
         DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
        
       if(event.equals("Save"))
       {
          String query1="insert into solvedassignment(username,college,dept,class,assi_title,assi_answerFile)values('"+session.getAttribute("username")+"','"+session.getAttribute("clg")+"','"+session.getAttribute("dept")+"','"+session.getAttribute("cls")+"','"+assi_title+"','file/"+assi_answerFile+"')";
       String result=db.Query(query1, "Assignment Uploaded");
       out.println(result);
 
       }
    }

}
