<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JINSERT Operation</title>
    </head>
    <body>
        <c:if test="${ empty param.tieude or empty param.noidung or empty param.file}">
            <c:redirect url="tacgia2.jsp" >
                <c:param name="errMsg" value="Vui lòng nhập lại !!!" />
            </c:redirect>
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/tapchikhoahoc"
                           user="root"  password="123456"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO ds_baiviet_dagui(tieude, noidung, file, dstukhoa, ngaygui, trangthai, username_taikhoan) VALUES (?, ?, ?, ?, CURDATE(), 'Da Gui', '${sessionScope['loginUser']}');
            
            <sql:param value="${param.tieude}" />
			<sql:param value="${param.noidung}" />
			<sql:param value="${param.file}" />
			<sql:param value="${param.dstukhoa}" />
        </sql:update>
        <c:if test="${result>=1}">
			<c:redirect url="tacgia2.jsp" >
                <c:param name="susMsg" value="Gửi bài thành công !!!" />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>