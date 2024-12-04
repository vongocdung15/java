<%@page import="Model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
    Account_User auth = (Account_User) request.getSession().getAttribute("auth");
    if (auth != null){
    	request.setAttribute("auth", auth);
    	response.sendRedirect("HomePage.jsp");
    }
    %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Contact</title>
<link rel="icon" href="public/frontend/img/icon_sach.png" type="image/png">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<%@include file="includes/Home/head.jsp"%>
</head>

<body>
	<%@include file="includes/Home/navbar.jsp"%>

	<!-- Contact Section Begin -->
	<section class="contact spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="contact__text">
						<div class="section-title">
							
							<h2>Đăng nhập</h2>
							<div class="col-lg-6 col-md-6">
								<p class="text-danger">${mess_signin}</p>
								<div class="contact__form">
									<form action="SignIn" method="post">
										<div class="row">
											<input type="text" name="accountuser" placeholder="Tài khoản">
											<input type="password" name="pass" placeholder="Mật khẩu">
											
											<button type="submit" class="site-btn">Đăng nhập</button>
										</div>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="contact__text">
						<div class="section-title">
							
							<h2>Đăng kí</h2>
							<div class="col-lg-6 col-md-6">
								<p class="text-danger">${mess_signup}</p>
								<div class="contact__form">
									<form action="SignUp" method="post">
										<div class="row">
											<input type="text" name="name" placeholder="Họ tên">
											<input type="text" name="accountuser" placeholder="Tài khoản">
											<input type="password" name="pass" placeholder="Mật khẩu">
											<input type="password" name="repass" placeholder="Nhập lại mật khẩu">
											
											<button type="submit" class="site-btn">Đăng kí</button>
										</div>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- Contact Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__logo">
							<a href="#"><img src="img/footer-logo.png" alt=""></a>
						</div>
						<p>The customer is at the heart of our unique business model,
							which includes design.</p>
						<a href="#"><img src="img/payment.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6>Shopping</h6>
						<ul>
							<li><a href="#">Clothing Store</a></li>
							<li><a href="#">Trending Shoes</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">Sale</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer__widget">
						<h6>Shopping</h6>
						<ul>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Payment Methods</a></li>
							<li><a href="#">Delivary</a></li>
							<li><a href="#">Return & Exchanges</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
					<div class="footer__widget">
						<h6>NewLetter</h6>
						<div class="footer__newslatter">
							<p>Be the first to know about new arrivals, look books, sales
								& promos!</p>
							<form action="#">
								<input type="text" placeholder="Your email">
								<button type="submit">
									<span class="icon_mail_alt"></span>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="footer__copyright__text">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<p>
							Copyright ©
							<script>
								document.write(new Date().getFullYear());
							</script>
							2020 All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						</p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search End -->

	<!-- Js Plugins -->
	<%@include file="includes/Home/footer.jsp"%>
</body>

</html>