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
@WebServlet("/asave")
public class asave extends HttpServlet {     
    // database connection settings 
        
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
             
        InputStream inputStream = null; // input stream of the upload file

String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
String dateofbirth=request.getParameter("dob");
String dateofjoining=request.getParameter("doj");
String salary=request.getParameter("salary");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
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
              String sql = "insert into payregister (firstname,lastname,username,userpass,dateofjoining,dateofbirth,address,phone,salary,photo) values (?,?,?,?,?,?,?,?,?,?)";

PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,firstname);
ps.setString(2,lastname);
ps.setString(3,username);
ps.setString(4,userpass);
ps.setString(5,dateofjoining);
ps.setString(6,dateofbirth);
ps.setString(7,address);
ps.setString(8,phone);
ps.setString(9,salary);
ps.setBlob(10, inputStream);
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
            request.setAttribute("msg","Accountant record saved succesfully !");
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/ahome.jsp").forward(request, response);
        }
    }
}