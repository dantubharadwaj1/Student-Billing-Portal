import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@SuppressWarnings("serial")
@MultipartConfig
@WebServlet("/save1")
public class save1 extends HttpServlet {     
    
        
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
             
        InputStream inputStream = null; // input stream of the upload file

String id=request.getParameter("id");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String faname=request.getParameter("faname");
String mname=request.getParameter("mname");
String dateofbirth=request.getParameter("dateofbirth");
String dateofjoining=request.getParameter("dateofjoining");
String batch=request.getParameter("batch");
String course=request.getParameter("course");
String mobile=request.getParameter("mobile");
String lphone=request.getParameter("lphone");
String address=request.getParameter("address");
String fyf=request.getParameter("fyf");
String fyfp=request.getParameter("fyfp");
String fyfb=request.getParameter("fyfb");
String syf=request.getParameter("syf");
String syfp=request.getParameter("syfp");
String syfb=request.getParameter("syfb");
String tyf=request.getParameter("tyf");
String tyfp=request.getParameter("tyfp");
String tyfb=request.getParameter("tyfb");
String lyf=request.getParameter("lyf");
String lyfp=request.getParameter("lyfp");
String lyfb=request.getParameter("lyfb");
String nb=request.getParameter("nb");
String branch=request.getParameter("branch");        
Part filePart = request.getPart("photo");  
     
        if (filePart != null) {
           
          
            inputStream = filePart.getInputStream();
            
           
        }
        
         
        Connection conn = null; // connection to the database
          // message will be sent back to client
         
        try {
            // connects to the database
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");
 
           PreparedStatement ps = conn.prepareStatement("update student2 set firstname=?,lastname=?,fathername=?,mothername=?,dateofbirth=?,dateofjoining=?,batch=?,course=?,mobile=?,homep=?,address=?,fyf=?,fyfp=?,fyfb=?,syf=?,syfp=?,syfb=?,tyf=?,tyfp=?,tyfb=?,lyf=?,lyfp=?,lyfb=?,nb=?,branch=?,photo=? where id='"+id+"'");
            


           ps.setString(1,fname);
           ps.setString(2,lname);
           ps.setString(3,faname);
           ps.setString(4,mname);
           ps.setString(5,dateofbirth);
           ps.setString(6,dateofjoining);
           ps.setString(7,batch);
           ps.setString(8,course);
           ps.setString(9,mobile);
           ps.setString(10,lphone);
           ps.setString(11,address);
           ps.setString(12,fyf);
           ps.setString(13,fyfp);
           ps.setString(14,fyfb);
           ps.setString(15,syf);
           ps.setString(16,syfp);
           ps.setString(17,syfb);
           ps.setString(18,tyf);
           ps.setString(19,tyfp);
           ps.setString(20,tyfb);
           ps.setString(21,lyf);
           ps.setString(22,lyfp);
           ps.setString(23,lyfb);
           ps.setString(24,nb);
           ps.setString(25,branch);
           ps.setBlob(26,inputStream);
ps.executeUpdate();
ps.close();


         } catch (Exception ex) {
           
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("msg","Student record saved succesfully !");
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/modify.jsp").forward(request, response);
        }
    }
}