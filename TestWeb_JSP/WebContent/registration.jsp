<%@ page import ="java.sql.*" %>
<%
    String ho = request.getParameter("ho");    
    String ten = request.getParameter("ten");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tapchikhoahoc",
            "root", "123456");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into taikhoan(last_name, first_name, Email, Username, Password, regdate, MaQuyen, Trangthaihoatdong) values ('"+ ho +"','"+ ten +"','"+ email +"','"+ username +"','"+ password +"', CURDATE(), 4, 1)");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>