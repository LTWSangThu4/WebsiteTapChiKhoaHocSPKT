<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="MD5.MD5" %>


 <% 
  String password = request.getParameter("pass");
  String passmd5= MD5.encryptMD5(password);
  request.setAttribute("passwordmd5", passmd5);
  %>
   
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Authentication page</title>
  </head>
  <body>
    <c:if test="${not empty param.uname and not empty param.pass}">
      <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/tapchikhoahoc"
                       user="root" password="123456"/>
 		
      <s:query dataSource="${ds}" var="selectQ">
        select count(*) as kount from TaiKhoan
        where Username='${param.uname}'
        and Password='<%=request.getAttribute("passwordmd5")%>'
        and MaQuyen ='${param.q}' 
        and Trangthaihoatdong="1"
      </s:query>
 
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">     	    	
            <c:set scope="session"
                   var="loginUser"
                   value="${param.uname}"/>
            <c:set scope="session"
                   var="qUser"
                   value="${param.q}"/>
                   
             <c:if test="${param.q==0}">
             	 <c:set scope="session"
                   var="phanquyen"
                   value="Quản Lý Tài Khoản"/>
             	<c:redirect url="trangchu.jsp"/>
             		
             </c:if>
             <c:if test="${param.q==1}">
             	<c:set scope="session"
                   var="phanquyen"
                   value="Quản Lý Bài Viết"/>
             	<c:redirect url="trangchu.jsp"/>
             		
             </c:if>
             <c:if test="${param.q==2}">
             	<c:set scope="session"
                   var="phanquyen"
                   value="Biên Tập Bài"/>
             	<c:redirect url="trangchu.jsp"/>
             		
             </c:if>
             <c:if test="${param.q==3}">
             	<c:set scope="session"
                   var="phanquyen"
                   value="Phản Biện Bài Viết"/>
             	<c:redirect url="trangchu.jsp"/>
             		
             </c:if>
             <c:if test="${param.q==4}">
             	<c:set scope="session"
                   var="phanquyen"
                   value="Gửi Bài Viết"/>
             	<c:redirect url="trangchu.jsp"/>            		
             </c:if>
            
          </c:when>
          <c:otherwise>
          	<font color='red'>UserName/PassWord Does Not Match! </font> <a href='index.jsp'>Try again</a>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 
    </c:if>
 
  </body>
</html>