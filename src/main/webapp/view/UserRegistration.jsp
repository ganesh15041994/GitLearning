<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>

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
* {
	padding: 0px;
	margin: 0px;
}
</style>

</head>
<body>

	<nav
		class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0 mynav ">
		<a href="${pageContext.request.contextPath }/"
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
			<a href="" class="mycls text-white py-3 px-lg-5 d-none d-lg-block">Join
				Now<i class="fa fa-arrow-right ms-3"></i>
			</a>
		</div>
	</nav>

	<div class="container-fluid  container-expand-lg">


		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8 mt-5">
				<div class="card">

					<div class="card-header">
						<h5>Register Here</h5>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/saveRegistration"
							method="POST">


							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Your
									Name </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Your Name Here" name="name">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Your
									Email </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Your Email " name="emailId">

							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Mobile
									No: </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Your Contact No" name="mobileNo">

							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Password
								</label> <input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Your Password "
									name="password">
							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Confirm
									Password </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Confirm Password " name="cpassword">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>

			</div>

		</div>

	</div>

</body>
</html>