<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Phân Công</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/tapchikhoahoc"
                           user="root"  password="123456"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO ds_baiviet_phanbien(ngaygiaophanbien, trangthai, ID_baiviet_dagui, username_taikhoan) VALUES (CURDATE(),'Chua Phan Bien',?,?);
            
            <sql:param value="${param.idbaiviet}" />
			<sql:param value="${param.idnguoiphanbien}" />
        </sql:update>
        <c:if test="${result>=1}">
        <Center>
        	<font size="5" color='green'>Phan Cong Thanh Cong !!!</font>
        </Center>
            
 

        </c:if> 
 
 
    </body>
</html>