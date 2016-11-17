<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JINSERT Operation</title>
    </head>
    <body>
        <c:if test="${ empty param.Username or empty param.Password or empty param.MaQuyen}">
            <c:redirect url="inserttk.jsp" >
                <c:param name="errMsg" value="Vui long nhap lai" />
            </c:redirect>
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/tckh"
                           user="root"  password="123456"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO taikhoan(Username, Password, MaQuyen, regdate) VALUES (?,?,?,CURDATE());
            
            <sql:param value="${param.Username}" />
			<sql:param value="${param.Password}" />
			<sql:param value="${param.MaQuyen}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="inserttk.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>