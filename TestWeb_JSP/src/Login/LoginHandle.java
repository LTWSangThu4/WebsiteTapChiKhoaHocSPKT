package Login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.fabric.xmlrpc.base.Param;

import MD5.MD5;

@WebServlet("/Login")
public class LoginHandle  extends HttpServlet{
	protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		
		//connection to DB
		request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	HttpSession session = request.getSession();
    	String dbURL = (String) session.getAttribute("url");
        String dbUser = (String) session.getAttribute("userdb");
        String dbPass = (String) session.getAttribute("passdb");
        Connection conn = null; // connection to the database
		
        
		  request.setCharacterEncoding("UTF-8");
		  response.setCharacterEncoding("UTF-8");
		  String password = request.getParameter("pass");
		  String User = request.getParameter("uname");
		  String Maquyen=request.getParameter("q");
		  String passmd5= MD5.encryptMD5(password);
		  
		  
		  try {
	            // connects to the database
	            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
	 
	          
	            	if(!User.isEmpty()&&!password.isEmpty()){
	            	
	            		PreparedStatement stmt = conn.prepareStatement("SELECT * FROM taikhoan WHERE Username=? "
	            				+ "AND Password=? AND MaQuyen=? ");
	            		stmt.setString(1, User);
	            		stmt.setString(2, passmd5);
	            		stmt.setString(3, Maquyen);
	            		ResultSet rs = stmt.executeQuery();
	            		
	            		if(rs.next()){
	            			//Set Session
	            			HttpSession Session = request.getSession();
	            		    Session.setAttribute("loginUser", User);
	            		    Session.setAttribute("qUser", Maquyen);
	            		    
	            		    if(Maquyen.equals("0")){
	            		    	Session.setAttribute("phanquyen", "Quản Lý Tài Khoản");
	            		    	response.sendRedirect("trangchu.jsp");
	            		    }
	            		    if(Maquyen.equals("1")){
	            		    	Session.setAttribute("phanquyen", "Quản Lý Bài Viết");
	            		    	response.sendRedirect("trangchu.jsp");
	            		    }
	            		    if(Maquyen.equals("2")){
	            		    	Session.setAttribute("phanquyen", "Biên Tập Bài");
	            		    	response.sendRedirect("trangchu.jsp");
	            		    }
	            		    if(Maquyen.equals("3")){
	            		    	Session.setAttribute("phanquyen", "Phản Biện Bài Viết");
	            		    	response.sendRedirect("trangchu.jsp");
	            		    }
	            		    if(Maquyen.equals("4")){
	            		    	Session.setAttribute("phanquyen", "Gửi Bài Viết");
	            		    	response.sendRedirect("trangchu.jsp");
	            		    }
	            		    
	            		    
	            		}
	            		else{
	            			response.getWriter().print("UserName/PassWord Does Not Match! ");
	            		}
	            		
	            	}
	            }
		  catch (Exception e) {
			// TODO: handle exception
		}
		  finally{
			  if (conn != null) {
	                // closes the database connection
	                try {
	                    conn.close();
	                } catch (SQLException ex) {
	                    ex.printStackTrace();
	                }
	            }       
		  }
	            
		  
		  
		
	}

}
