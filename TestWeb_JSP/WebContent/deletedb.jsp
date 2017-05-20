<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<c:choose>
	<c:when test="${not empty sessionScope['loginUser']and sessionScope['qUser']eq 0}">
	
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="${sessionScope['url']}" user="${sessionScope['userdb']}" password="${sessionScope['passdb']}" />
        <sql:update dataSource="${dbsource}" var="count">
            DELETE FROM taikhoan
            WHERE id='<c:out value="${param.id}"/>'
        </sql:update>
        <c:redirect url="admin2.jsp"/>
    </body>
</html>
</c:when>
	<c:otherwise>
		<c:redirect url="index.jsp"/>
	</c:otherwise>
</c:choose>