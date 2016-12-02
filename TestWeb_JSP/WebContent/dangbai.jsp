<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ĐĂNG BÀI</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/tapchikhoahoc"
                           user="root"  password="123456"/>
 
 		<sql:update dataSource="${dbsource}" var="laydb">
 			SELECT tieude_bientap, noidung_bientap, file_bientap, tenfile_bientap, dstukhoa_bientap
            FROM ds_baiviet_bientap,ds_noidung_bientap
            WHERE ds_baiviet_bientap.ID_baiviet_bientap=ds_noidung_bientap.ID_baiviet_bientap
            and ds_baiviet_bientap.ID_baiviet_dagui=${param.idbaiviet}
 		</sql:update>
 		
 		<c:forEach var="row" items="${laydb}">
	        <sql:update dataSource="${dbsource}" var="result">
	        	
	            INSERT INTO ds_baiviet_duocdang(tieude, noidung, file, tenfile, dannhmuc, ghichu, dstukhoa, ngaydang, username_taikhoan)
	            VALUES (row.tieude_bientap, row.noidung_bientap, row.file_bientap, row.tenfile_bientap, ?, ?, row.dstukhoa_bientap, CURDATE(), ?)
	            
	            <sql:param value="${param.danhmuc}" />
				<sql:param value="${param.ghichu}" />
				<sql:param value="${param.usernametaikhoan}" />	
				
	        </sql:update>
        </c:forEach>
        <c:if test="${result>=1}">
            <font size="5" color='green'>Dang Bai Thanh Cong !!!</font>
 

        </c:if> 
 
 
    </body>
</html>