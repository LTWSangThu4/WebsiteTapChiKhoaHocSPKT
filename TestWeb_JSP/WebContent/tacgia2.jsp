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
									<button class="btn btn-default dropdown-toggle textcolor" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="background: #0c6b63;">
										TG
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
										<li><a href="thongtincanhan.jsp">Thông Tin Cá Nhân</a></li>
										<li><a href="tacgia2.jsp">Gửi Bài Viết</a></li>
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
								  		<a href="ketquatimkiem.jsp"><button type="button" class="btn btn-primary textcolor" style="background: #0c6b63;">TÌM</button></a>
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
										<li><a class="textcolor" href="tacgia2.jsp"><strong>Trang chủ</strong></a></li>
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
					<div class="row" id="nd">
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
						<div class="col-md-10 line">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title"><strong>Gửi Bài</strong></h3>
								</div>
								<div class="panel-body">
									<div>
										<ul class="nav nav-tabs">
											<li class="active"><a href="#guibaionline" data-toggle="tab">Gửi Bài Online</a></li>
										    <li><a href="#dsbaidaviet" data-toggle="tab">Danh Sách Bài Đã Viết</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane fade in active" id="guibaionline">
												<!--cot trái-->
												<div class="col-md-8">
													<form id="FormGuiBai" method="post" class="form-horizontal" action="" role="form">
														<div class="form-group">
															<label for="tieude" class="col-sm-2">Tiêu Đề</label>
															<div class="col-sm-10">
																<input type="text" class="form-control" id="tieude" placeholder="Nhập tiêu đề">
															</div>
														</div>
														<div class="form-group">
															<label for="noidung" class="col-sm-2">Nội Dung</label>
															<div class="col-sm-10">
																<input type="file" class="form-control" id="noidung">
															</div>
														</div>
														<div class="form-group">
															<label for="tentacgia" class="col-sm-2">Tên Tác Giả</label>
															<div class="col-sm-10">
																<input type="text" class="form-control" id="tentacgia" placeholder="Nhập tên tác giả">
															</div>
														</div>
														<div class="form-group">
															<label for="coquan" class="col-sm-2">Cơ Quan</label>
															<div class="col-sm-10">
																<input type="text" class="form-control" id="coquan" placeholder="Nhập cơ quan">
															</div>
														</div>
														<div class="form-group">
															<label for="thongtinlienlac" class="col-sm-2">Thông Tin Liên Lạc</label>
															<div class="col-sm-10">
																<input type="text" class="form-control" id="thongtinlienlac" placeholder="Nhập thông tin liên lạc">
															</div>
														</div>
														<div class="form-group">
															<label for="dstukhoa" class="col-sm-2">Danh Sách Từ Khóa (nếu có)</label>
															<div class="col-sm-10">
																<textarea class="form-control" id="dstukhoa" rows="10" placeholder="Nhập danh sách từ khóa"></textarea>
															</div>
														</div>
														<div class="col-sm-offset-2">
															<button type="button" id="guibai" class="btn btn-primary">Gửi Bài</button>
														</div>
													</form>
													<script>
														
														function validateText(id)
														{
															if($("#"+id).val()==null || $("#"+id).val()=="")
															{
																var div=$("#"+id).closest("div");
																div.removeClass("has-success");
																div.addClass("has-error has-feedback");
																$("#glypcn"+id).remove();
																div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback"></span>');
																return false;
															}
															else
															{
																var div=$("#"+id).closest("div");
																div.removeClass("has-error");
																div.addClass("has-success has-feedback");
																$("#glypcn"+id).remove();
																div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-ok form-control-feedback"></span>');
																return true;
															};
														}
														$(document).ready(
															function()
															{
																$("#guibai").click(function()
																{
																	
																	if(!validateText("tieude"))
																		return false;
																	
																	if(!validateText("noidung"))
																		return false;
																	
																	if(!validateText("tentacgia"))
																		return false;
																	
																	if(!validateText("coquan"))
																		return false;
																
																	if(!validateText("thongtinlienlac"))
																		return false;
																	
																	$("form#FormGuiBai").submit();
																});
															});
													</script>

												</div>
											<!--end cột trái-->

											<!--cot phải-->
												<div class="col-md-4">
													<img src="images/anh.png" alt="..." class="img-thumbnail"> <br>
													<br>
													<label>Ảnh Bìa</label>

													<input type="file" id="">
														    
												</div>
											<!--end cot phải-->
											</div>
											<div class="tab-pane fade" id="dsbaidaviet">
												<table class="table table-bordered table-hover">
													<thead>
														<tr>
															<th>Tên Bài</th>
															<th>Ngày gửi</th>
															<th>File</th>
															<th>Trạng thái</th>
														</tr>
													</thead>
													<tbody>
													<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" 
													url="jdbc:mysql://localhost/tckh" user="root" password="123456"/>
													<sql:query var="result" sql="select * from dsbai_daviet" dataSource="${con }"/>
													<c:forEach var="rows" items="${result.rows }">
														<tr>
															<td>${rows.TenBai }</td>
															<td>${rows.NgayGui }</td>
															<td><button type="button" class="btn btn-link">${rows.File }</button></td>
															<td>${rows.TrangThai }</td>
														</tr>
													</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
										
								</div>
										<div class="row">
											<div class="col-md-offset-4">
												<!-- <button type="submit" id="guibai" class="btn btn-primary" data-toggle="modal" data-target="#myModal4">
												  Gửi Bài
												</button> -->
												<br><br>
												

												<!-- Modal -->
												<div class="modal" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
												  <div class="modal-dialog">
												    <div class="modal-content">
												      <div class="modal-header">
												        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												        <h4 class="modal-title" id="myModalLabel">Thông Báo!</h4>
												      </div>
												      <div class="modal-body">
													      	<div class="text-center">
													       		Gửi Bài Thành Công!!!
													        </div>
												      </div>
												      <div class="modal-footer">
												        <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
												        
												      </div>
												    </div>
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