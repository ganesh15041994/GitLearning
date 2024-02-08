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


<nav
	class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0 mynav ">
	<a href="/" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
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
		<a href="${pageContext.request.contextPath }/cmnRegister"
			class="mycls text-white py-3 px-lg-5 d-none d-lg-block">Join Now<i
			class="fa fa-arrow-right ms-3"></i>
		</a>
	</div>
</nav>
