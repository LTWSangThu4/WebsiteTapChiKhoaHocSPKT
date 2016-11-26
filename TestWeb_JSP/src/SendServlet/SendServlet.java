package SendServlet;
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import SendEmail.SendEmail;

@WebServlet("/SendServlet")

public class SendServlet extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/tapchikhoahoc";
    private String dbUser = "root";
    private String dbPass = "123456";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
      
    	String Email = request.getParameter("email");
    	Connection conn = null;
    	String message = null;
    	try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "select * from taikhoan where Email=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, Email);
            
            ResultSet result = statement.executeQuery();
             
            if (result.next()) {
            	String PassWord = result.getString("Password");
            	String User = result.getString("Username");
            	SendEmail.Send(Email, User, PassWord);
            }
 
            
           /* int row = statement.executeUpdate();
            if (row > 0) {
                message = "Let's Check your Email!";
            }*/
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
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
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        } 
      
         
       
    }
}