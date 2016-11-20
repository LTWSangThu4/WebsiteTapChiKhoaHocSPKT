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
            UPDATE taikhoan SET MaQuyen = ?
            WHERE id='${param.id}'
            <sql:param value="${param.maquyen}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
            <br>
            <a href="admin2.jsp"class="btn btn-default">Back</a> 
        </c:if>
    </body>
</html>