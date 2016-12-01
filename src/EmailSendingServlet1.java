import java.io.IOException;
 
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 


public class EmailSendingServlet1 extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;
 
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
 
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
        String recipient = "dantu.bharadwaj1@gmail.com";
        String email = request.getParameter("email");
        String subject = "Student Billing Portal Message";       
        String content = request.getParameter("message") + "\n\nEmail: " + email;        
        
 
        String resultMessage = "";
 
        try {
            EmailUtility1.sendEmail(host, port, user, pass, recipient, subject,
                    content);
            resultMessage = "Your message has been sent successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error sending the message: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/result1.jsp").forward(
                    request, response);
        }
    }
}