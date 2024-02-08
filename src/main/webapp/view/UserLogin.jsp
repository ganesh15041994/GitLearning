<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>



</head>
<body>
<%@ include file="./cmnNavbar.jsp" %>
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
			<a href="${pageContext.request.contextPath }/userRegistration"
				class="mycls text-white py-3 px-lg-5 d-none d-lg-block">Join Now<i
				class="fa fa-arrow-right ms-3"></i>
			</a>
		</div>
	</nav>


	<section>

		<div class="container">
			<div class="row mt-5">
				<div class="col-3"></div>

				<div class="col-6 ">
					<div class="card">
						<div class="card-header">
							<h5 class="card-header">Login Here</h5>
							<h6 class="${msg.type }">${msg.msg}</h6>
						</div>

						<div class="card-body p-5">
							<form
								action="${pageContext.request.contextPath }/validateUserLogin"
								method="POST">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">User
										Name </label> <input type="text" class="form-control" name="username">

								</div>


								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Password
									</label> <input type="text" class="form-control" name="password">

								</div>

								<div class="mb-3">

									<span>Not A Member ? </span> <a
										href="${pageContext.request.contextPath }/userRegistration">Register
										Here</a>

								</div>

								<div class="mb-3">

									<button type="submit"
										class="btn btn-outline-success text-center ">&nbsp;Log
										In&nbsp;</button>

								</div>
							</form>

						</div>

					</div>

				</div>
			</div>

		</div>

	</section>

</body>
</html>