<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

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
								<div class="dropdown col-md-push-10">
									<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
										TBT
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="thongtincanhan.jsp">Thông Tin Cá Nhân</a></li>
										<li><a href="tongbientap2.jsp">Quản Lý Bài Viết</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="index.jsp">Thoát</a></li>
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
								  		<a href="ketquatimkiem.jsp"><button type="button" class="btn btn-primary">TÌM</button></a>
									</form>
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
								       <a href="ketquatimkiem.jsp"><button type="button" class="btn btn-primary">TÌM</button></a> 
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
						<nav class="navbar navbar-default" style="background: #0a408a;">
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
										<li><a class="textcolor" href="tongbientap2.jsp"><strong>Trang chủ</strong></a></li>
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
							<div class="panel panel-success" >
								<div class="panel-heading">
									<h3 class="panel-title" ><strong>Chuyên Ngành</strong></h3>
								</div >
								<ul class="list-group">
								  <a href="#" class="list-group-item"><strong>Công Nghệ Thông Tin</strong></a>
								  <a href="#" class="list-group-item"><strong>Cơ Khí Chế Tạo Máy</strong></a>
								  <a href="#" class="list-group-item"><strong>Cơ Khí Động Lực</strong></a>
								  <a href="#" class="list-group-item"><strong>Điện - Điện Tử</strong></a>
								  <a href="#" class="list-group-item"><strong>In-Truyền Thông</strong></a>
								  <a href="#" class="list-group-item"><strong>Xây Dựng</strong></a>
								  <a href="#" class="list-group-item"><strong>Công Nghệ May Và Thời Trang</strong></a>
								  <a href="#" class="list-group-item"><strong>Công Nghệ Hóa Học Và Thực Phẩm</strong></a>
								</ul>									
							</div>
							
							<!--quang cao-->
							<div class="media">
							  <a class="pull-left" href="#">
							    <img class="media-object" src="images/quangcao.png" alt="...">
							  </a>
							</div>
						</div>
					<!--end cột trái-->

					<!--cột giữa-->
						<div class="col-md-10">
		
							<div class="panel panel-info">
								<div class="panel-heading">
									<h3 class="panel-title">Quản Lý Bài</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered table-hover">
										<thead>
											<tr>
												<th>Tên Bài</th>
												<th>Tác Giả</th>
												<th>Ngày Gửi</th>
												<th>File</th>
												<th>Phản Biện</th>
												<th>Biên Tập</th>
												<th>Trạng Thái</th>
											</tr>
										</thead>
										<tbody>
										<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" 
										url="jdbc:mysql://mysql176502-nhom8.jelastic.servint.net/tckh" user="root" password="oNxaAn4YNN"/>
										<sql:query var="result" sql="select * from ds_bai_viet" dataSource="${con }"/>
										<c:forEach var="rows" items="${result.rows }">
											<tr>
												<td>${rows.TenBai }</td>
												<td>${rows.TacGia }</td>
												<td>${rows.NgayGui }</td>
												<td><button type="button" class="btn btn-link">${rows.File }</button></td>
												<td>${rows.PhanBien }</td>
												<td>${rows.Bientap }</td>
												<td>${rows.TrangThai }</td>
											</tr>
										</c:forEach>	
										</tbody>
									</table>
									<div class="col-md-4">
										<button type="button" class="btn btn-default" data-toggle="collapse" data-target="#thongtinbaiviet">Thông tin bài viết</button></a>
									</div>
									

									<div class="col-md-8">
										
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#phancong">Phân công bài viết</button></a>
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#dangbai">Đăng Bài</button></a>
									</div><br><br><br><br>
									<div class="collapse" id="thongtinbaiviet">
										<form action="" class="form-horizontal">

											<div class="form-group">
												<label class="col-md-2">Tác Giả: </label>
												<p class="col-md-8"> Huyền Hoàng</p>
											</div>
											<div class="form-group">
												<label class="col-md-2">Tiêu Đề: </label>
												<p class="col-md-8">Lập Trình Web</p>
											</div>
											
											<div class="form-group">
												<label class="col-md-2">Cơ Quan: </label>
												<p class="col-md-8">Cty.ABC</p>
											</div>
											<div class="form-group">
												<label class="col-md-2">Thông Tin Liên Lạc: </label>
												<p class="col-md-8">C9/10 ap TN1, TPHCM</p>
											</div>
											<div class="form-group">
												<label class="col-md-2">Danh Sách Từ Khóa</label>
												<div class="col-md-8">
													<textarea class="form-control" id="dstukhoa" rows="10"></textarea>
												</div>
											</div>
											<div class="form-group">
												<label class="col-md-2">Người Phản Biện: </label>
												<p class="col-md-8">Mr. Tùng</p>
											</div>
											<div class="form-group">
												<label class="col-md-2">Bài Phản Biện: </label>
												<p class="col-md-8">Lập Trình Web</p>
											</div>

											<div class="form-group">
												<label class="col-md-2">Nội dung phản biện: </label> 
												<p class="col-md-8">Tóm tắt: Bài viết phân tích các vấn đề về bạo lực học đường dưới góc nhìn từ khía cạnh tâm lí học. Theo tác giả, hành vi bạo lực học đường nói chung là hành vi của một cá nhân hay nhóm học sinh cố ý dùng sức mạnh để tác động đến cá nhân hay nhóm học sinh khác, gây cho họ những tổn thương về thể xác, tâm lí… Vì vậy, các nhà giáo dục cần nhận diện các loại hành vi bạo lực học đường với tính chất và mức độ tâm lí nghiêm trọng khác nhau để có giải pháp xử lí phù hợp.
									     		Từ khóa: Bạo lực học đường; tâm lí; hành vi bạo lực.</p>
											    
											</div>

											<div class="form-group">
												<label class="col-md-2">File đính kèm (nếu có): </label>
												

											</div>
											<div class="form-group">
												<label class="col-md-2">Người Biên Tập: </label>
												<p class="col-md-8">Mr. Tùng</p>
											</div>

											<div class="form-group">
												<label class="col-md-2">Nội dung đã biên tập: </label> 
												<p class="col-md-8">Tóm tắt: Bài viết phân tích các vấn đề về bạo lực học đường dưới góc nhìn từ khía cạnh tâm lí học. Theo tác giả, hành vi bạo lực học đường nói chung là hành vi của một cá nhân hay nhóm học sinh cố ý dùng sức mạnh để tác động đến cá nhân hay nhóm học sinh khác, gây cho họ những tổn thương về thể xác, tâm lí… Vì vậy, các nhà giáo dục cần nhận diện các loại hành vi bạo lực học đường với tính chất và mức độ tâm lí nghiêm trọng khác nhau để có giải pháp xử lí phù hợp.
									     		Từ khóa: Bạo lực học đường; tâm lí; hành vi bạo lực.</p>
											</div>
											<div class="form-group">
												<label class="col-md-2">File đã biên tập: </label>
												<div class="col-md-8">
													<span class="glyphicon glyphicon-file" aria-hidden="true"></span><a href=""> filedinhkem.docx</a>
												</div>
											</div>

											
											

										</form>
									</div>
									
									<!-- Modal -->
									<div class="modal fade" id="dangbai" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="myModalLabel">Thông Báo</h4>
									      </div>
									      <div class="modal-body">
									        <div class="text-center">
									        	Đồng ý đăng bài 
									        </div>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
									        <a href="tongbientap2.jsp"><button type="button" class="btn btn-primary">Yes</button></a>
									      </div>
									    </div>
									  </div>
									</div>
									<!-- Modal -->
									<div class="modal fade" id="phancong" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="myModalLabel">Gửi Bài Cho PB và BTV</h4>
									      </div>
									      <div class="modal-body">
									        <form class="form-horizontal" action="">
									        	<div class="form-group">
													<label class="col-md-4">Bài Viết: </label>
													<p class="col-md-8">Lập Trình Web</p>
												</div>
												<div class="form-group">
													<label class="col-md-4">File Bài Viết: </label>
													<div class="col-md-8">
														<span class="glyphicon glyphicon-file" aria-hidden="true"></span><a href=""> 101conchodom.docx</a>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-4">Người Phản Biện: </label>
													<div class="col-md-8">
														<select class="form-control">
														<option>Thanh Tùng</option>
														<option>Đinh Sa</option>
														<option>Sino</option>
													</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-4">Người Biên Tập: </label>
													<div class="col-md-8">
														<select class="form-control">
														<option>Sino</option>
														<option>Đinh Sa</option>
														<option>Thanh Tùng</option>
													</select>
													</div>
												</div>
									        </form>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
									        <a href="tongbientap2.jsp"><button type="button" class="btn btn-primary">Yes</button></a>
									      </div>
									    </div>
									  </div>
									</div>
									
								</div>
							</div>
						</div>
					<!--end cột giữa-->
					</div><!--endrow chinh-->

					<!--Ajax-->	
						 <script type="text/javascript">
							 $(document).ready(function() {
							 $('#GioiThieu').click(function(e) {
							 e.preventDefault();
							 $('#Main').load('gioithieu.jsp #nd2-canlay');
							 });
							 });

							 $(document).ready(function() {
							 $('#QDHD').click(function(e) {
							 e.preventDefault();
							 $('#Main').load('quydinh_huongdan.jsp #nd2-canlay');
							 });
							 });

							 $(document).ready(function() {
							 $('#LienHe').click(function(e) {
							 e.preventDefault();
							 $('#Main').load('lienhe.jsp #nd2-canlay');
							 });
							 });

							  $(document).ready(function() {
							 $('#LienKet').click(function(e) {
							 e.preventDefault();
							 $('#Main').load('lienket.jsp #nd2-canlay');
							 });
							 });
						</script>
	  				<!--endAjax-->
			</div>
<!--endMain-->
		</div>
	</div>
</div>
</body>
<footer>
	<div class="container well">
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