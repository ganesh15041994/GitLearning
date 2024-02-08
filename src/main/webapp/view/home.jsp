<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>GitLearning Home</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Bootstrap Links -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<!-- Google Fonts Links -->
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


<!-- Font Awesome Links -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Manual CSS -->

<link rel="stylesheet" href="../CSS/home.css" type="text/css">
<style type="text/css">
</style>

</head>

<body>
	<!-- Spinner Start -->
	<!-- <div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div> -->
	<!-- Spinner End -->


	<!-- Navbar Start -->

	<nav
		class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0 mynav ">
		<a href="/"
			class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h2 class="m-0 text-warning">
				<i class="fa fa-book me-3"></i>GitLearning
			</h2>
		</a>
		<button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse " id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<a href="index.html" class="nav-item nav-link active">Home</a> <a
					href="about.html" class="nav-item nav-link">About</a> <a
					href="courses.html" class="nav-item nav-link">Courses</a>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown">Pages</a>
					<div class="dropdown-menu fade-down m-0">
						<a href="team.html" class="dropdown-item">Our Team</a> <a
							href="testimonial.html" class="dropdown-item">Testimonial</a> <a
							href="404.html" class="dropdown-item">404 Page</a>
					</div>
				</div>
				<a href="contact.html" class="nav-item nav-link">Contact</a>
			</div>
			<a href="${pageContext.request.contextPath }/userLogin"
				class="mycls text-white py-3 px-lg-5 d-none d-lg-block">Join Now<i
				class="fa fa-arrow-right ms-3"></i>
			</a>
		</div>
	</nav>
	<!-- Navbar End -->


	<div class="container-fluid container-expand-lg mt-1  banner">


		<div class="row">

			<div
				class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
				style="background: rgba(24, 29, 56, .7);">
				<div class="container">
					<div class="row justify-content-start">
						<div class="col-sm-10 col-lg-8">
							<h5 class="text-warning text-uppercase mb-3 animated slideInDown">Best
								Online Courses</h5>
							<h1 class="display-3 text-white animated slideInDown">The
								Best Online</h1>
							<h1 class="display-3">Learning Platform</h1>
							<p class="fs-5 text-white mb-4 pb-2">Vero elitr justo clita
								lorem. Ipsum dolor at sed stet sit diam no. Kasd rebum ipsum et
								diam justo clita et kasd rebum sea sanctus eirmod elitr.</p>
							<a href=""
								class="btn btn-success py-md-3 px-md-5 me-3 animated slideInLeft">Join
								Now</a> <a href="${pageContext.request.contextPath }/userLogin"
								class="btn btn-success py-md-3 px-md-5 me-3 animated slideInLeft">Read
								More</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<!-- Service Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-4">
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
					<div class="service-item text-center pt-3">
						<div class="p-4">
							<i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
							<h5 class="mb-3">Skilled Instructors</h5>
							<p>Diam elitr kasd sed at elitr sed ipsum justo dolor sed
								clita amet diam</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
					<div class="service-item text-center pt-3">
						<div class="p-4">
							<i class="fa fa-3x fa-globe text-primary mb-4"></i>
							<h5 class="mb-3">Online Classes</h5>
							<p>Diam elitr kasd sed at elitr sed ipsum justo dolor sed
								clita amet diam</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="service-item text-center pt-3">
						<div class="p-4">
							<i class="fa fa-3x fa-home text-primary mb-4"></i>
							<h5 class="mb-3">Home Projects</h5>
							<p>Diam elitr kasd sed at elitr sed ipsum justo dolor sed
								clita amet diam</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
					<div class="service-item text-center pt-3">
						<div class="p-4">
							<i class="fa fa-3x fa-book-open text-primary mb-4"></i>
							<h5 class="mb-3">Book Library</h5>
							<p>Diam elitr kasd sed at elitr sed ipsum justo dolor sed
								clita amet diam</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Service End -->


	<section class="home_courses_section py-5" id="courses">
		<div class="container">
			<h1 class="text-center">OUR FEATURES COURSES</h1>
			<div class="container-xxl py-5">
				<div class="container">
					<div class="row g-4">
						<c:forEach var="c" items="${c }">

							<div class="col-lg-4   wow fadeInUp " data-wow-delay="0.1s">
								<img alt="" src="../images/${c.path }" class="" height="200px"
									width="355px">
								<div class="  text-center pt-3">
									<div class="p-4">
										<h5 class="mb-3">${c.courseName }</h5>
										<h6>${c.objectives }
											<br>
										</h6>
									</div>
								</div>
								<div class="pt-3 text-center">
									<a class="mb-3"
										href="${pageContext.request.contextPath }/knowMore/${c.id}">Know
										More</a>

								</div>
							</div>

						</c:forEach>


					</div>


				</div>
			</div>

		</div>
	</section>








	<footer>

		<%@ include file="footer.jsp"%>

	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
		integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
		crossorigin="anonymous"></script>
</body>

</html>