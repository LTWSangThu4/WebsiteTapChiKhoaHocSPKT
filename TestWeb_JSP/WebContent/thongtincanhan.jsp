<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tạp chí Khoa Học SPKT</title>
	<!-- Latest compiled and minified CSS & JS -->
	<link rel="stylesheet" href="css/bootstrap.min.css" >
	<link rel="stylesheet" href="css/myweb.css" >

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js" ></script>
    <script src="js/angular.min.js"></script>
    <script src="js/jquery.validate.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12 well	">
<!--header-->
			<div id="header" >
			<!--row logo-->
				<div class="row">
					<div class="col-md-8">
						<div class="image" href="">
							<img src="images/banner.png" class="img-responsive" alt="Responsive image">
						</div>
					</div><!--end cột image-->
				<!--login-siging-search-->
					<div class="col-md-4">
					<!--Login-->
						<div class="row">
							<div class="col-md-12">
								<div class="dropdown navbar-form navbar-right">
									<button class="btn btn-default dropdown-toggle textcolor" type="button" style="background: #0c6b63;" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
										 <c:out value="${sessionScope['loginUser']}"/>
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="thongtincanhan.jsp">Thông Tin Cá Nhân</a></li>
										<li><a href="chuyentrang.jsp"><c:out value="${sessionScope['phanquyen']}"/></a></li>
										<li role="separator" class="divider"></li>
										<li><a href="logout.jsp">Thoát</a></li>
									
									</ul>
								</div>	
							</div>
						</div><br>
					<!--end login-->
					<!--search-->
					<div class="row">
							
								<div class="col-md-12">
									<form class="navbar-form navbar-right" role="search">
								  		<div class="form-group">
								    		<input type="text" class="form-control" placeholder="Nhập từ khóa tìm kiếm...">
								 		</div>
								  		<a href="xulytimkiem.jsp"><button type="button" class="btn btn-primary textcolor" style="background: #0c6b63;">TÌM</button></a>
									</form>
									<!--Ajax-->	
									  <script type="text/javascript">
										 $(document).ready(function() {
										 $('#tim').click(function(e) {
										 e.preventDefault();
										 $('#ndtk').load('ketquatimkiem.jsp #ndtk-canlay');
										 });
										 });
									</script>
				  				<!--endAjax-->
								</div>
						</div><!--end search-->
						<div class="row">
							<div class="col-md-4">							
							</div>
							<div class="col-md-8">
								<a href="" data-toggle="modal" data-target="#myModal3">Tìm Kiếm Nâng Cao</a>
								<!-- Modal -->
								<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="myModalLabel">Tìm Kiếm Nâng Cao</h4>
								      </div>
								      <div class="modal-body">
								        <form id="FormTimKiemNangCao" method="post" class="form-horizontal" action="">

											<div class="form-group">
												<label class="col-sm-4 control-label" for="TimKiemTheo">Tìm Kiếm Theo: </label>
												<div class="col-sm-5">
													<select class="form-control">
														<option>Bài Viết</option>
														<option>Tác Giả</option>
														<option>Lĩnh Vực</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-4 control-label" for="ThoiGian">Thời Gian: </label>
												<div class="col-sm-5">
													<input type="date" class="form-control" id="thoigian" name="thoigian">
												</div>
											</div>

											<div class="form-group">
												<label class="col-sm-4 control-label" for="NoiDung">Nội Dung: </label>
												<div class="col-sm-5">
													<textarea class="form-control" rows="3"></textarea>
												</div>
											</div>
											
										</form>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
								       <a href="xulytimkiem.jsp"><button type="button" class="btn btn-primary">TÌM</button></a> 
								      </div>
								    </div>
								  </div>
								</div>
							</div>
						</div>
					</div><!--end Cột login-siging-->
				</div><!--end row logo--><br>

			<!--thanh dieu huong-->
				<div class="row">
					<div class="col-md-12">
						<nav class="navbar navbar-default" style="background: #0c6b63;">
							<div class="navbar-header">
								<button class="navbar-toggle" data-toggle="collapse" data-target="#main-menu">
						           <span class="sr-only">Toggle navigation</span>
						           <span class="icon-bar"></span>
						           <span class="icon-bar"></span>
						           <span class="icon-bar"></span>
						        </button>
							</div>
							<div class="navbar-collapse collapse" id="main-menu">
								<ul class="nav nav-justified " >
										<li><a class="textcolor" href="trangchu.jsp"><strong>Trang chủ</strong></a></li>
										<li><a class="textcolor" href="" id="GioiThieu"><strong>Giới Thiệu</strong></a></li>
										<li><a class="textcolor" href="" id="QDHD"><strong>Quy Định-Hướng Dẫn</strong></a></li>
										<li><a class="textcolor" href="" id="LienHe"><strong>Liên Hệ</strong></a></li>
										<li><a class="textcolor" href="" id="LienKet"><strong>Liên Kết</strong></a></li>
								</ul>
							</div>
						
								
						</nav>
					</div>
				</div><!--end thanh dieu huong-->				
			</div>
<!--endhead-->
<!--Main-->
			<div id="Main">	
					<div class="row">
						<!--cột trái-->
						<div class="col-md-2">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title" ><strong>Lĩnh vực</strong></h3>
								</div >

								
								
								<ul class="list-group"> 
								<li class="list-group-item" data-id="journal1672"> 
								  <a href="#" class="list-group-item"><strong>Khoa học tự nhiên và công nghệ</strong></a>
								  		<ul id="journal1672" style="display: none;">
											<li><a href="#" style="font-weight:normal">Ban biên tập</a></li>
											<li><a href="#" style="font-weight:normal">Bài viết</a></li>
										</ul>
								<li class="list-group-item" data-id="journal1673"> 
								  <a href="#" class="list-group-item"><strong>Khoa học xã hội và nhân văn</strong></a>
								  		<ul id="journal1673" style="display: none;">
											<li><a href="#" style="font-weight:normal">Ban biên tập</a></li>
											<li><a href="#" style="font-weight:normal">Bài viết</a></li>
										</ul>
								 <li class="list-group-item" data-id="journal1674"> 
								  <a href="#" class="list-group-item"><strong>Khoa học giáo dục</strong></a>
								  		<ul id="journal1674" style="display: none;">
											<li><a href="#" style="font-weight:normal">Ban biên tập</a></li>
											<li><a href="#" style="font-weight:normal">Bài viết</a></li>
										</ul>
								 <li class="list-group-item" data-id="journal1675"> 
								  <a href="#" class="list-group-item"><strong>Khoa học môi trường</strong></a>
								  		<ul id="journal1675" style="display: none;">
											<li><a href="#" style="font-weight:normal">Ban biên tập</a></li>
											<li><a href="#" style="font-weight:normal">Bài viết</a></li>
										</ul>
								</ul>		
							</div>
						<script type="text/javascript">
						<!--
							var elm = null;
							$(".list-group-item").hover(function(){
								$("#"+$(this).attr("data-id")).show();
							},function(){
								$("#"+$(this).attr("data-id")).hide();
							});
						//-->
						</script>
							<!--quang cao-->
							<p style=" "><embed height="210" width="180" type="application/x-shockwave-flash" allowscriptaccess="always" wmode="transparent" allowfullscreen="false" scale="noborder" quality="high" src="Flash/135.swf" title=" "/></p>

						</div>
					<!--end cột trái-->
					<!--cột giữa-->
						<div class="col-md-7 line" id="nd">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title"><strong>Thông Tin Cá Nhân</strong></h3>
								</div>
								<div class="panel-body">
								<c:choose>
									<c:when test="${not empty sessionScope['loginUser']}">
								      <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
								                       url="jdbc:mysql://localhost:3306/tckh"
								                       user="root" password="123456"/>
								                       
									 <s:query dataSource="${ds}" var="selectQ">
								        select * from TaiKhoan
								        where Username='${sessionScope['loginUser']}'
								      </s:query>
								 
								      <c:forEach items="${selectQ.rows}" var="r">
								        <c:choose>
								          <c:when test="${r.Username != NULL}">
								          		<div class="col-sm-3">
													<img src="images/anh.png" alt="..." class="img-thumbnail"> <br>
													<br>
													<!-- <label>Ảnh Đại Diện</label> -->
												</div>
												<div class="col-sm-9">
													<form class="form-horizontal">
													  <div class="form-group" >
													    <label class="col-sm-3 control-label">Họ Tên</label>
													    <div class="col-sm-8" >
													      <p class="form-control-static"><c:out value="${r.last_name}"/> <c:out value="${r.first_name}"/> </p>
													    </div>
													    <span  id="suahoten" class="glyphicon glyphicon-edit" aria-hidden="true"></span>
													  </div>
													  <div class="form-group">
													    <label class="col-sm-3 control-label">Email</label>
													    <div class="col-sm-8">
													      <p class="form-control-static"><c:out value="${r.email}"/></p>
													    </div>
													    <span id="suaemail" class="glyphicon glyphicon-edit" aria-hidden="true"></span>
													  </div>
													  <div class="form-group">
													    <label class="col-sm-3 control-label">Username</label>
													    <div class="col-sm-8">
													      <p class="form-control-static"><c:out value="${r.Username}"/></p>
													    </div>
													    <!-- <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> -->
													  </div>
													  <div class="form-group">
													    <label class="col-sm-3 control-label">Password</label>
													    <div class="col-sm-8">
													      <p class="form-control-static">********</p>
													    </div>
													    <span id="suapassword" class="glyphicon glyphicon-edit" aria-hidden="true"></span>
													  </div>
													   <div class="form-group">
													    <label class="col-sm-3 control-label">Date Reg</label>
													    <div class="col-sm-8">
													      <p class="form-control-static"><c:out value="${r.regdate}"/></p>
													    </div>
													    <!-- <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> -->
													  </div>
													  
													  <div class="form-group">
													    <button type="submit" class="btn btn-primary col-sm-offset-4" name="update" value="update">OK</button>
													  </div>
													</form>
			
													<script>
													function update(id)
													{
														var div=$("#"+id).closest("div");
														div.append('<div class="col-sm-8 col-sm-offset-3"><input type="text" class="form-control" placeholder="Nhập thông tin mới"></div>');
													}
													$(document).ready(
														function()
														{
															$("#suahoten").click(function()
															{
																update("suahoten");
															});
															$("#suaemail").click(function()
															{
																update("suaemail");
															});
															$("#suapassword").click(function()
															{
																update("suapassword");
															});
														});
														
														
													</script>										
												</div>
												<!-- <div class="col-sm-2">
													
												</div> -->
											            
											            
											</c:when>
											 <c:otherwise>
												<font color='red'>Không Tồn Tại Người Này! </font>
											 </c:otherwise>
										</c:choose>										 
									</c:forEach>
								  </c:when>
								   <c:otherwise>
										<font color='red'>Không Tồn Tại Người Này! </font>
									</c:otherwise>
								  </c:choose>
								  
								</div>
							</div>
						</div>
					<!--end cột giữa-->
					<!--Ajax-->	
						 <script type="text/javascript">
							 $(document).ready(function() {
							 $('#GioiThieu').click(function(e) {
							 e.preventDefault();
							 $('#nd').load('gioithieu.jsp #ndgt-canlay');
							 });
							 });

							 $(document).ready(function() {
							 $('#QDHD').click(function(e) {
							 e.preventDefault();
							 $('#nd').load('quydinh_huongdan.jsp #ndqd-canlay');
							 });
							 });

							 $(document).ready(function() {
							 $('#LienHe').click(function(e) {
							 e.preventDefault();
							 $('#nd').load('lienhe.jsp #ndlh-canlay');
							 });
							 });

							 $(document).ready(function() {
							 $('#LienKet').click(function(e) {
							 e.preventDefault();
							 $('#nd').load('lienket.jsp #ndlk-canlay');
							 });
							 });
						</script>
	  				<!--endAjax-->

					<!--cột 3-->
						<div class="col-md-3">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title"><strong>Được Đọc nhiều</strong></h3>
								</div>
								<div class="panel-body">
									<marquee scrolldelay="6" scrollamount="2" onmouseover="this.stop()"" onmouseout="this.start()" direction="up" height="300" style="height:300px;"  behavior="" direction="">
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">Nhà Giáo VN</a></h6>
										    chào mừng ngày nahf giáo việt nam......
										  </div>
										</div>
										<!--continute-->
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">University</a></h6>
										    cẩn thận số khi nghe.............
										  </div>
										</div>
										<!--continute-->
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp"> HCMUTE</a></h6>
										    nhà trường tăng học phí gấp 5 lần......
										  </div>
										</div>

										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">University</a></h6>
										    cẩn thận số khi nghe.............
										  </div>
										</div>
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">University</a></h6>
										    cẩn thận số khi nghe.............
										  </div>
										</div>
										<div class="media">
										  <a class="pull-left" href="xemnoidung.jsp">
										    <img class="media-object" src="images/3.jpg" alt="...">
										  </a>
										  <div class="media-body">
										    <h6 class="media-heading"><a href="xemnoidung.jsp">University</a></h6>
										    cẩn thận số khi nghe.............
										  </div>
										</div>

										
									</marquee>
								</div>
							</div><!--end panel-->
						</div>
					<!--end cột 3-->
					</div><!--endrow chinh-->
			</div>
<!--endMain-->
		</div>
	</div>
</div>
</body>
<footer>
	<div class="container well footer">
		<div class="row">
			<div class="col-md-12">
				<div class="text">
						<h6>Copyright © 2013, Trường Đại Học Sư Phạm Kỹ Thuật - Tp.HCM </h6>
						<h6>Địa chỉ: 1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, Thành phố Hồ Chí Minh.</h6>
						<h6>Điện thoại: (+84 - 8) 38968641 - (+84 - 8) 38961333</h6>
						<h6>E-mail: ic@hcmute.edu.vn</h6>
				</div>
			</div>
		</div>
	</div>
</footer>
</html>
