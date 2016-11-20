<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/tapchikhoahoc"
                           user="root"  password="123456"/>
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE taikhoan SET Password = ?
            WHERE Username='${sessionScope['loginUser']}' and Password ='${param.oldpassword}'
            <sql:param value="${param.newpassword}" />
        </sql:update> 
        <c:choose>
	        <c:when test="${count>=1}">
	        	<font size="5" color='green'> Your PassWord updated
	            successfully.</font>
	 
	            <c:redirect url="thongtincanhan.jsp" >
	                <c:param name="susMsg" value="PassWord updated
	            successfully." />
	            </c:redirect>
	        </c:when>
	        <c:otherwise>
	        	 <font size="5" color='green'> PassWord Cũ Không Đúng </font>
		            <br>
		         <a href="thongtincanhan.jsp"class="btn btn-default">Back</a> 
	        </c:otherwise>
        </c:choose>
       
    </body>
</html>