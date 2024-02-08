<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,600;1,400&family=Ubuntu:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,600;1,400&family=Ubuntu:wght@500&display=swap"
	rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<style type="text/css">

/*** Footer ***/
.footer .btn.btn-social {
	margin-right: 5px;
	width: 35px;
	height: 35px;
	display: flex;
	align-items: center;
	justify-content: center;
	color: var(--light);
	font-weight: normal;
	border: 1px solid #FFFFFF;
	border-radius: 35px;
	transition: .3s;
}

.footer .btn.btn-social:hover {
	color: var(--primary);
}

.footer .btn.btn-link {
	display: block;
	margin-bottom: 5px;
	padding: 0;
	text-align: left;
	color: #FFFFFF;
	font-size: 15px;
	font-weight: normal;
	text-transform: capitalize;
	transition: .3s;
}

.footer .btn.btn-link::before {
	position: relative;
	content: "\f105";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	margin-right: 10px;
}

.footer .btn.btn-link:hover {
	letter-spacing: 1px;
	box-shadow: none;
}

.footer .copyright {
	padding: 25px 0;
	font-size: 15px;
	border-top: 1px solid rgba(256, 256, 256, .1);
}

.footer .copyright a {
	color: var(--light);
}

.footer .footer-menu a {
	margin-right: 15px;
	padding-right: 15px;
	border-right: 1px solid rgba(255, 255, 255, .1);
}

.footer .footer-menu a:last-child {
	margin-right: 0;
	padding-right: 0;
	border-right: none;
}
</style>
</head>
<body>
	<!-- Footer Start -->
	<div
		class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn"
		data-wow-delay="0.1s">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<h4 class="text-white mb-3">Quick Link</h4>
					<a class="btn btn-link" href="">About Us</a> <a
						class="btn btn-link" href="">Contact Us</a> <a
						class="btn btn-link" href="">Privacy Policy</a> <a
						class="btn btn-link" href="">Terms & Condition</a> <a
						class="btn btn-link" href="">FAQs & Help</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4 class="text-white mb-3">Contact</h4>
					<p class="mb-2">
						<i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA
					</p>
					<p class="mb-2">
						<i class="fa fa-phone-alt me-3"></i>+012 345 67890
					</p>
					<p class="mb-2">
						<i class="fa fa-envelope me-3"></i>info@example.com
					</p>
					<div class="d-flex pt-2">
						<a class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-youtube"></i></a> <a
							class="btn btn-outline-light btn-social" href=""><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4 class="text-white mb-3">Gallery</h4>
					<div class="row g-2 pt-2">
						<div class="col-4">
							<img class="img-fluid bg-light p-1" src="img/course-1.jpg" alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid bg-light p-1" src="img/course-2.jpg" alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid bg-light p-1" src="img/course-3.jpg" alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid bg-light p-1" src="img/course-2.jpg" alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid bg-light p-1" src="img/course-3.jpg" alt="">
						</div>
						<div class="col-4">
							<img class="img-fluid bg-light p-1" src="img/course-1.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h4 class="text-white mb-3">Newsletter</h4>
					<p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
					<div class="position-relative mx-auto" style="max-width: 400px;">
						<input class="form-control border-0 w-100 py-3 ps-4 pe-5"
							type="text" placeholder="Your email">
						<button type="button"
							class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy; <a class="border-bottom" href="#">Your Site Name</a>, All
						Right Reserved.

						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML
							Codex</a><br> <br> Distributed By <a class="border-bottom"
							href="https://themewagon.com">ThemeWagon</a>
					</div>
					<div class="col-md-6 text-center text-md-end">
						<div class="footer-menu">
							<a href="">Home</a> <a href="">Cookies</a> <a href="">Help</a> <a
								href="">FQAs</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->
</body>
</html>