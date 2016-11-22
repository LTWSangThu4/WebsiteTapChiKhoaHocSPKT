package GuibaiServlet;
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
 
@WebServlet("/GuibaiServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class GuibaiServlet extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/tapchikhoahoc";
    private String dbUser = "root";
    private String dbPass = "123456";
    
    //get only File's name
    private String extractFileName(Part part) {
        // form-data; name="file"; filename="C:\file1.zip"
        // form-data; name="file"; filename="C:\Note\file2.zip"
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                // C:\file1.zip
                // C:\Note\file2.zip
                String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
                clientFileName = clientFileName.replace("\\", "/");
                int i = clientFileName.lastIndexOf('/');
                // file1.zip
                // file2.zip
                return clientFileName.substring(i + 1);
            }
        }
        return null;
    }
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException { 
    	
    	// gets session User
    	HttpSession session = request.getSession();
    	String user= (String) session.getAttribute("loginUser");
    	// gets values of text fields
        String tieude = request.getParameter("tieude");
        String noidung = request.getParameter("noidung");
        String dstukhoa = request.getParameter("dstukhoa");
        
        // input stream of the upload file picture
        InputStream inputanh = null; //input picture
        InputStream inputFile=null; //input file
        //get file
        Part anhbia=request.getPart("anhbia"); 
        Part filePart = request.getPart("file");
        
        //get file's name
	   	String fileName = extractFileName(filePart);
	   	if (fileName != null && fileName.length() > 0) {
            // File data
	   		inputFile = filePart.getInputStream();
         }
	   	//get picture's name............
       
        
        if (filePart != null&& anhbia !=null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            
            System.out.println(anhbia.getName());
            System.out.println(anhbia.getSize());
            System.out.println(anhbia.getContentType());
             
            // obtains input stream of the upload file
            inputanh  = anhbia.getInputStream();   
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO ds_baiviet_dagui (tieude, noidung, file, tenfile, dstukhoa, anh, ngaygui, trangthai, username_taikhoan) "
            		+ "values (?, ?, ?, ?, ?, ?, CURDATE(), 'Da Gui', '"+user+"')";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, tieude);
            statement.setString(2, noidung);
            statement.setString(4, fileName);
            statement.setString(5, dstukhoa);
             
            if (inputanh != null && inputFile !=null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(3, inputFile);
                statement.setBlob(6,  inputanh);
            }
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "Bài Viết Đã Được Gửi!";
            }
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