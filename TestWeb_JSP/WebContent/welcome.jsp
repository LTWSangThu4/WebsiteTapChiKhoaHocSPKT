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
								<div class="nav navbar col-md-push-6">						
											<button class="btn btn-default textcolor" style="background: #0c6b63;" data-toggle="modal" data-target="#myModal">
											  Đăng Nhập
											</button>

										<!-- Modal 1 -->
											<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">Đăng Nhập</h4>
											      </div>
											      <!--body-->
											      <div class="modal-body">
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="0" checked>  Admin
											      	</label>
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1">  Tổng Biên Tập
											      	</label>
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="2">  Biên Tập Viên
											      	</label>
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="3">  Phản Biện
											      	</label>
											      	<label class="radio-inline">
											      		<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="4">  Tác Giả
											      	</label>
											      	<br><br>

											      	<form id="FormDangNhap" method="post" action="" class="form-horizontal">
														<div class="form-group">
															<label class="col-sm-4 control-label" for="username_signin">User Name </label>
															<div class="col-sm-5">
																<input type="text" class="form-control" id="username_signin" name="username_signin" placeholder="Username" />
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-4 control-label" for="password_signin">Password</label>
															<div class="col-sm-5">
																<input type="password" class="form-control" id="password_signin" name="password_signin" placeholder="Password" />
															</div>
														</div>
													</form>

												    <a id="btnDangNhap" class="btn btn-primary col-md-offset-5" role="button" >Đăng nhập</a> 
												 
												    <script type="text/javascript">
														
														$( document ).ready( function () {
															$( "#FormDangNhap" ).validate( {
																rules: {
																	username_signin: {
																		required: true,
																		minlength: 2
																	},
																	password_signin: {
																		required: true,
																		minlength: 5
																	},
																},
																messages: {
																	username_signin: {
																		required: "Vui lòng nhập lại Username",
																		minlength: "Username không được ít hơn 2 ký tự"
																	},
																	password_signin: {
																		required: "Vui lòng nhập lại Password",
																		minlength: "Password không được ít hơn 5 ký tự"
																	},
																},
																errorElement: "em",
																errorPlacement: function ( error, element ) {
																	// Add the `help-block` class to the error element
																	error.addClass( "help-block" );

																	// Add `has-feedback` class to the parent div.form-group
																	// in order to add icons to inputs
																	element.parents( ".col-sm-5" ).addClass( "has-feedback" );

																	if ( element.prop( "type" ) === "checkbox" ) {
																		error.insertAfter( element.parent( "label" ) );
																	} else {
																		error.insertAfter( element );
																	}

																	// Add the span element, if doesn't exists, and apply the icon classes to it.
																	if ( !element.next( "span" )[ 0 ] ) {
																		$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
																	}
																},
																success: function ( label, element ) {
																	// Add the span element, if doesn't exists, and apply the icon classes to it.
																	if ( !$( element ).next( "span" )[ 0 ] ) {
																		$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
																	}
																},
																highlight: function ( element, errorClass, validClass ) {
																	$( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
																	$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
																},
																unhighlight: function ( element, errorClass, validClass ) {
																	$( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
																	$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
																}
															} );
														} );
													</script>

												    <script >
       
												        $("#btnDangNhap").click(function(){
												          var chon = $('input[type="radio"]:checked');
												          if(chon.val()==0)
												            $('#btnDangNhap').attr('href','admin1.jsp')
												          else if(chon.val()==1)
												            $('#btnDangNhap').attr('href','tongbientap.jsp')
												          else if(chon.val()==2)
												            $('#btnDangNhap').attr('href','bientapvien1.jsp')
												          else if(chon.val()==3)
												            $('#btnDangNhap').attr('href','phanbien1.jsp')
												          else
												            $('#btnDangNhap').attr('href','tacgia.jsp')
												        });
												       
												    </script>
											      </div>
											      <!--end body-->
											      <div class="modal-footer modal-footer-left">
											        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Cancle</button> -->
											      </div>
											    </div>
											  </div>
											</div>
										<!-- end Modal 1 -->

											<button class="btn btn-default navbar-btn" data-toggle="modal" data-target="#myModal1">
											  Đăng Ký
											</button>
										<!-- Modal 2 -->
											<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											  <div class="modal-dialog">
											    <div class="modal-content">
											      <div class="modal-header">
											        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
											        <h4 class="modal-title" id="myModalLabel">Đăng Ký</h4>
											      </div>
											      <!--body-->
											      <div class="modal-body">
											        	<form id="FormDangKy" method="post" class="form-horizontal" action="registration.jsp">

															<div class="form-group">
																<label class="col-sm-4 control-label" for="ho">Họ</label>
																<div class="col-sm-5">
																	<input type="text" class="form-control" id="ho" name="ho" placeholder="Họ">
																</div>
															</div>
															<div class="form-group">
																<label class="col-sm-4 control-label" for="ten">Tên</label>
																<div class="col-sm-5">
																	<input type="text" class="form-control" id="ten" name="ten" placeholder="Tên">
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label" for="username">UserName</label>
																<div class="col-sm-5">
																	<input type="text" class="form-control" id="username" name="username" placeholder="Username">
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label" for="email">Email </label>
																<div class="col-sm-5">
																	<input type="email" class="form-control" id="email" name="email" placeholder="Email">
																</div> 
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label" for="password">Password </label> 
																<div class="col-sm-5">
																	<input type="password" class="form-control" id="password" name="password" placeholder="Password">
																</div>
															</div>

															<div class="form-group">
																<label class="col-sm-4 control-label" for="confirm">Confirm PassWord </label> 
																<div class="col-sm-5">
																	<input type="password" class="form-control" id="confirm" name="confirm" placeholder="Confirm Password">
																</div>
															</div>

															<div class="form-group">
																<div class="col-sm-5 col-sm-offset-4">
																	<div class="checkbox">
																		<label>
																			<input type="checkbox" id="agree1" name="agree1" value="agree" />Đồng ý điều khoản 
																		</label>
																	</div>
																</div>
															</div>

															<div class="form-group">
																<div class="col-sm-9 col-sm-offset-2">
																	<button type="submit" class="btn btn-primary col-md-offset-4" name="signup1" value="Sign up">Đăng Ký</button>
																</div>
															</div>
															
														</form>
											      </div>
											      <!--endbody-->
											      <div class="modal-footer">
											        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
											        
											      </div>
											    </div>
											  </div>
											</div>
											<script>
												
												$( document ).ready( function () {
													$( "#FormDangKy" ).validate( {
														rules: {
															ho: "required",
															ten: "required",
															username: {
																required: true,
																minlength: 2
															},
															password: {
																required: true,
																minlength: 5
															},
															confirm: {
																required: true,
																minlength: 5,
																equalTo: "#password"
															},
															email: {
																required: true,
																email: true
															},
															agree1: "required"
														},
														
														errorElement: "em",
														errorPlacement: function ( error, element ) {
															// Add the `help-block` class to the error element
															error.addClass( "help-block" );

															// Add `has-feedback` class to the parent div.form-group
															// in order to add icons to inputs
															element.parents( ".col-sm-5" ).addClass( "has-feedback" );

															if ( element.prop( "type" ) === "checkbox" ) {
																error.insertAfter( element.parent( "label" ) );
															} else {
																error.insertAfter( element );
															}

															// Add the span element, if doesn't exists, and apply the icon classes to it.
															if ( !element.next( "span" )[ 0 ] ) {
																$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
															}
														},
														success: function ( label, element ) {
															// Add the span element, if doesn't exists, and apply the icon classes to it.
															if ( !$( element ).next( "span" )[ 0 ] ) {
																$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
															}
														},
														highlight: function ( element, errorClass, validClass ) {
															$( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
															$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
														},
														unhighlight: function ( element, errorClass, validClass ) {
															$( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
															$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
														}
													} );
												} );
											</script>
											
										<!--end modal 2-->										
								</div>
			
							</div>
						</div>
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
										<li><a class="textcolor" href="index.jsp"><strong>Trang chủ</strong></a></li>
										<li><a class="textcolor" href="gioithieu.jsp"><strong>Giới Thiệu</strong></a></li>
										<li><a class="textcolor" href="quydinh_huongdan.jsp"><strong>Quy Định-Hướng Dẫn</strong></a></li>
										<li><a class="textcolor" href="lienhe.jsp"><strong>Liên Hệ</strong></a></li>
										<li><a class="textcolor" href="lienket.jsp"><strong>Liên Kết</strong></a></li>
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

					<!--cột giữa-->
						<div class="col-md-12 line">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Thông Báo</h3>
								</div>
								<div class="panel-body">
									<h1>Đăng ký thành công !!!!!!!!!</h1>
									
								</div>
							</div>
						</div>
					<!--end cột giữa-->

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