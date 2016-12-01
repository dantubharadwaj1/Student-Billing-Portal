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
@WebServlet("/save")
public class save extends HttpServlet {     
    
        
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
            // prints out some information for debugging
          
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
        
         
        Connection conn = null; // connection to the database
          // message will be sent back to client
         
        try {
            // connects to the database
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","HR");
 
            // constructs SQL statement
              String sql = "insert into student2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,fname);
ps.setString(3,lname);
ps.setString(4,faname);
ps.setString(5,mname);
ps.setString(6,dateofbirth);
ps.setString(7,dateofjoining);
ps.setString(8,batch);
ps.setString(9,course);
ps.setString(10,mobile);
ps.setString(11,lphone);
ps.setString(12,address);
ps.setString(13,fyf);
ps.setString(14,fyfp);
ps.setString(15,fyfb);
ps.setString(16,syf);
ps.setString(17,syfp);
ps.setString(18,syfb);
ps.setString(19,tyf);
ps.setString(20,tyfp);
ps.setString(21,tyfb);
ps.setString(22,lyf);
ps.setString(23,lyfp);
ps.setString(24,lyfb);
ps.setString(25,nb);
ps.setString(26,branch);
ps.setBlob(27, inputStream);
ps.executeUpdate();
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
            getServletContext().getRequestDispatcher("/generalinfo.jsp").forward(request, response);
        }
    }
}