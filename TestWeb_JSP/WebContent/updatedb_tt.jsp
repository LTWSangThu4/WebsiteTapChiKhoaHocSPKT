
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <!-- update thông tin -->
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/tapchikhoahoc?useUnicode=true&characterEncoding=UTF-8"
                           user="root"  password="123456"/>
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE taikhoan SET last_name =?, first_name=?, CoQuan=?, thongtinlienlac=?
            WHERE id='${param.id}'
            <sql:param value="${param.ho}" />
            <sql:param value="${param.ten}" />
            <sql:param value="${param.coquan}"/>
            <sql:param value="${param.ttll}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
            <br>
            <a href="admin2.jsp"class="btn btn-default">Back</a> 
        </c:if>
        
        
       <!-- update trang cá nhân -->
       	<sql:update dataSource="${dbsource}" var="count1">
            UPDATE taikhoan SET last_name =?, first_name=?, email=?, CoQuan=?, thongtinlienlac=?
            WHERE Username='${sessionScope['loginUser']}'
            <sql:param value="${param.hocn}" />
            <sql:param value="${param.tencn}" />
            <sql:param value="${param.emailcn}"/>
            <sql:param value="${param.coquancn}"/>
            <sql:param value="${param.ttllcn}" />
        </sql:update>
        <c:if test="${count1>=1}">        
            <c:redirect url="thongtincanhan.jsp" >
                <c:param name="susMsg" value="Data updated
            successfully." />
            </c:redirect>
        </c:if>
    </body>
</html>