<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="MD5.MD5" %>

<%
	String message = null;
    String ho = request.getParameter("ho");    
    String ten = request.getParameter("ten");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String passmd5= MD5.encryptMD5(password);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tapchikhoahoc",
            "root", "123456");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into taikhoan(last_name, first_name, Email, Username, Password, regdate, MaQuyen, Trangthaihoatdong) values ('"+ ho +"','"+ ten +"','"+ email +"','"+ username +"','"+ passmd5 +"', CURDATE(), 4, 1)");
    if (i > 0) {
    	message = "Đăng Ký Thành Công!";
       //	session.setAttribute("Message", message);
        //response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    	request.setAttribute("Message", message);
    	getServletContext().getRequestDispatcher("/welcome.jsp").forward(request, response);
    } else {
        response.sendRedirect("index.jsp");
    }
%>