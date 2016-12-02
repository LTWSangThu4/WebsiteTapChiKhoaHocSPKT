<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/tapchikhoahoc" user="root" password="123456" />
 
<sql:query dataSource="${dataSource}" var="categories" scope="session">
        SELECT * FROM ds_baiviet_duocdang
</sql:query>
 
<c:import url="dispresult.jsp?pageNumber=1"/>
