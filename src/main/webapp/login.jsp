<%@page import="Model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Model.Account auth = (Model.Account) request.getSession().getAttribute("auth");
if (auth != null) {
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>


<%@include file="includes/Login/head.jsp"%>

</head>

<body>

	<main>
		<div class="container">

			<section
				class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div
							class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

							<div class="d-flex justify-content-center py-4">
								<a href="index.html"
									class="logo d-flex align-items-center w-auto"> <img
									src="assets/img/logo.png" alt=""> <span
									class="d-none d-lg-block">Đăng nhập</span>
								</a>
							</div>
							<!-- End Logo -->

							<div class="card mb-3">

								<div class="card-body">

									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Login to
											Your Account</h5>
									</div>
									<form action="login" method="post"
										class="row g-3 needs-validation" novalidate>
										<p class="text-danger">${mess}</p>
										<div class="col-12">
											<label for="yourUsername" class="form-label">Tên tài
												khoản</label>
											<div class="input-group has-validation">
												<input type="text" name="user" class="form-control"
													id="yourUsername" required>
												<div class="invalid-feedback">Please enter your
													username.</div>
											</div>
										</div>

										<div class="col-12">
											<label for="yourPassword" class="form-label">Mật khẩu</label>
											<input type="password" name="pass" class="form-control"
												id="yourPassword" required>
											<div class="invalid-feedback">Please enter your
												password!</div>
										</div>

										<div class="col-12">
											<div class="form-check">
												<input class="form-check-input" type="checkbox"
													name="remember" value="true" id="rememberMe"> <label
													class="form-check-label" for="rememberMe">Remember
													me</label>
											</div>
										</div>
										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit">Đăng
												nhập</button>
										</div>
									</form>

								</div>
							</div>


						</div>
					</div>
				</div>

			</section>

		</div>
	</main>
	<!-- End #main -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<%@include file="includes/Login/footer.jsp"%>
</body>
</html>