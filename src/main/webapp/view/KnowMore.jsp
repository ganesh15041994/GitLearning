<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Content</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
</script>

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
	margin: 0px;
	padding: 0px;
}

body {
	background-color: #F3E4F1;
}

.line{
width: 100%;
border: 1px solid;
}
a{
text-decoration: none;
color: black;
}

a:hover {
	color: purple;
	font-weight: bold;
}
</style>


<script type="text/javascript">

$(function(){
	alert('hi');
	let cid = $('#cid').val();
	$('#cid').click(function(){
		let uid = $('#uid').val();
		alert (uid)
	})
	//alert(uid);
});


</script>
</head>
<body>

	<div class="container-fluid m-0  ">
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
				<a href="${pageContext.request.contextPath }/userRegistration"
					class="mycls text-white py-3 px-lg-5 d-none d-lg-block">Join
					Now<i class="fa fa-arrow-right ms-3"></i>
				</a>
			</div>
		</nav>

		<div class="container-fluid container-expand-lg m-0 p-0 ">


			<div class="row">

				<div class="">
					<img src="../images/${course.path }" class="img-fluid" alt="..."
						style="width: 100%; height: 400px">

				</div>
			</div>
		</div>

		<section>


			<div class="py-5  ">
				<div class="row">
					<div class="col">
						<h1 class="text-center">Faculty Info</h1>
					</div>


				</div>

				<div class="row py-5 ">
					<div class="col-1"></div>
					<div class="col-md-5 p-5 detail ">
						<div class="course_objective">
							<img src="../Faculty/${faculty.facultyPhoto }"
								class="img-thumbnail" alt="..." >
							<div class="prerequisite_alert">
								<h5 class="text-center mt-2">${faculty.facultyName}</h5>
							</div>

						</div>
					</div>

					<div class="col-md-5 p-5 detail">
						<div class="row">
							<div class="col-5">
								<span>Experience</span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${faculty.experience }</div>

						</div>


						<div class="row mt-2">
							<div class="col-5">
								<span>SkillSet</span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${faculty.skillset}</div>

						</div>

						<div class="row mt-2">
							<div class="col-5">
								<span>Designation</span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${faculty.designation}</div>

						</div>


						<div class="row mt-2">
							<div class="col-5">
								<span>qualification </span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${faculty.qualification }</div>

						</div>

					</div>


				</div>
			</div>


			<div class="py-5  ">
				<div class="row">
					<div class="col">
						<h1 class="text-center">Course Overview</h1>
					</div>


				</div>

				<div class="row py-5 ">
					<div class="col-1"></div>
					<div class="col-md-5 p-5 detail ">
						<div class="course_objective">
							<h4>Course Objective</h4>
							<p>${course.getObjectives()}</p>
							<div class="prerequisite_alert">
								<h5>Prerequisite :</h5>
								<span class="prerequisite_value">${course.getPrerequisites()}</span>
							</div>
							<div class="line mb-2 mt-2"></div>
							<input type ="hidden" id ="cid" value="${course.id }">
							<input type ="hidden" id ="uid" value="${uid.id }">
							<a
								href="${pageContext.request.contextPath}/user/buyCourse/${course.id}"
								class="btn btn-success"> &nbsp;Buy Now  </a>
								
								<a 
								href="${pageContext.request.contextPath}/user/addCart/${course.id}/${user.uid}"
								class="btn btn-success"> Add To Cart </a>
						</div>
					</div>

					<div class="col-md-5 p-5 detail">
						<div class="row">
							<div class="col-5">
								<span>Numbers Of Hours</span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${course.noOfHours }</div>

						</div>


						<div class="row mt-2">
							<div class="col-5">
								<span>Total Lecture</span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${totalLecture}</div>

						</div>

						<div class="row mt-2">
							<div class="col-5">
								<span>Total Interview Question</span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${totalInterviewQuestion}</div>

						</div>


						<div class="row mt-2">
							<div class="col-5">
								<span>Total Assignment </span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${totalAssignment }</div>

						</div>

						<div class="row mt-2">
							<div class="col-5">
								<span>Total Practice Question </span>
							</div>
							<div class="col-1"></div>
							<div class="col-4">${pr }</div>

						</div>

					</div>



				</div>
			</div>
		</section>


		<div class="container-fluid mt-5 p-0 m-0">
			<div class="row">
				<div class="col-2"></div>
				<div class="col-8">
					<h1 class="mb-3">Demo Video</h1>

					<iframe width="100%" height="400"
						src="https://www.youtube.com/embed/${url}" frameborder="0"
						allowfullscreen></iframe>

				</div>
				<div class="col-2"></div>


			</div>

		</div>


		<div class="container-fluid mt-5  m-0 mb-3">
			<div class="row">
				<div class="col-2"></div>
				<div class="col-8  p-2">
					<h1 class="mb-3">Syllabus</h1>

					<ul class="list-group list-group-flush ">
						<c:forEach var="chapter" items="${chapter }">
							<li class="list-group-item" style="text-transform: capitalize;">${chapter.chapterName}</li>
						</c:forEach>

					</ul>

				</div>
				<div class="col-2"></div>


			</div>

		</div>


	</div>

</body>
</html>