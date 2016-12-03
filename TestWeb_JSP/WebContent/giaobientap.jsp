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
 
 		<sql:query dataSource="${dbsource}" var="count">
			SELECT count(*) as kount, ID_baiviet_bientap from ds_baiviet_bientap
			where ID_baiviet_dagui='${param.idbaiviet}'													    
		</sql:query>
		
		
		<c:forEach var="row" items="${count.rows }">
			<c:if test="${row.kount eq 0 }">
				<sql:update dataSource="${dbsource}" var="result">
		            INSERT INTO ds_baiviet_bientap(ngaygiaobientap, trangthai, ID_baiviet_dagui, username_taikhoan,ghichu_TBT) 
		            VALUES (CURDATE(),'Chua Bien Tap',?,?,?);         
		            <sql:param value="${param.idbaiviet}" />
					<sql:param value="${param.idnguoibientap}" />
					<sql:param value="${param.ghichu}" />
	        	</sql:update>
			</c:if>
			
			
         	<c:if test="${row.kount gt 0 }">
		         <sql:update dataSource="${dbsource}" var="result">
		         	UPDATE ds_baiviet_bientap SET ngaygiaobientap=CURDATE(), trangthai='Chua Bien Tap',
		        	username_taikhoan=?, ghichu_TBT=?
		        	WHERE ID_baiviet_dagui=?		        	
					<sql:param value="${param.idnguoibientap}" />
					<sql:param value="${param.ghichu}" />
					<sql:param value="${param.idbaiviet}" />
				</sql:update>
				
				 <sql:update dataSource="${dbsource}" var="count">
		            DELETE FROM ds_noidung_bientap
		            WHERE ID_baiviet_bientap='${row.ID_baiviet_bientap}'
        		</sql:update>
         </c:if>
         
		</c:forEach>
		
		
        <c:if test="${result>=1}">
        <Center>
        	 <font size="5" color='green'>Phan Cong Thanh Cong !!!</font>
        </Center>
           
        </c:if> 
 
 
    </body>
</html>