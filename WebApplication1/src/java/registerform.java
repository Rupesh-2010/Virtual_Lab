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
public class registerform extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
         PrintWriter out= resp.getWriter();
     
    //get the input parameters
    String fname=req.getParameter("fname");
    String mname=req.getParameter("mname");
    String lname=req.getParameter("lname");
    String email=req.getParameter("email");
    String dob=req.getParameter("dob");
     String address=req.getParameter("address");
     String country=req.getParameter("country");
     String state=req.getParameter("state");
     String city=req.getParameter("city");
     String village=req.getParameter("village");
     String pin=req.getParameter("pin");
     String adhrno=req.getParameter("adhrno");
     String contact1=req.getParameter("contact1");
     String contact2=req.getParameter("contact2");
     String selectcollege=req.getParameter("selectcollege");
     String selectdept=req.getParameter("selectdept");
     String selectclass=req.getParameter("selectclass");
     String username=req.getParameter("username");
     String password=req.getParameter("password");
    
    
    String event=req.getParameter("btn_reg");
//    String event1=req.getParameter("Register");
    
           

//print the input from parameters from users

        out.println(fname);
        out.println(mname);
        out.println(lname);
        out.println(email);
        out.println(dob);
        out.println(address);
        out.println(country);
        out.println(state);
        out.println(city);
        out.println(village);
        out.println(pin);
        out.println(adhrno);
        out.println(contact1);
        out.println(contact2);
        out.println(selectcollege);
        out.println(selectdept);
        out.println(selectclass);
        out.println(username);
        out.println(password);
        
       
        
//        out.println(event1);
        
        DatabaseConnection db=new DatabaseConnection();
        out.println(db.Connectdb());
        
        
         if(event.equals("Register"))
       {
          String query1="insert into virtual_lab.tbl_register(reg_firstname,reg_middlename,reg_lastname,adhar_no,dob,address,contact_1,contact_2,email,country,state,city,village,pin,collage,department,class,username,pass_word)values('"+fname+"','"+mname+"','"+lname+"','"+adhrno+"','"+dob+"','"+address+"','"+contact1+"','"+contact2+"','"+email+"','"+country+"','"+state+"','"+city+"','"+village+"','"+pin+"','"+selectcollege+"','"+selectdept+"','"+selectclass+"','"+username+"','"+password+"')";
       String result=db.Query(query1, "Record Inserted");
       out.println(result);
                resp.setContentType("text/html;charset=UTF-8");
     out.println("<script type=\"text/javascript\">");
     out.println("alert('Account added successfully');");
      out.println("location='Loginform.jsp';");
      out.println("</script>");
 
       }
    }
    
}
