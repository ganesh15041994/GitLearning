<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%-- <%@ include file="./userDashboard.jsp"%> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Learning</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<style type="text/css">

.navbar-brand, .navbar-nav .nav-link {
	color: #fff;
}

.navbar-nav .nav-link {
	margin-right: 15px; /* Added margin between the navigation items */
}

</style>

</head>
<body>

<div class="container-fluid mt-5">

	<div class="row bg-dark text-white">
		<div class="col-1"></div>
		<div class="col-10 ">
			<div class="row mt-2">
				<h1>My Learning</h1>
			</div>

			<div class="row">
				<nav class="navbar navbar-expand-lg bg-body-tertiary">
					<div class="container-fluid">
						
						
						<div class="collapse navbar-collapse" id="">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="${pageContext.request.contextPath }/user/myAllCourses/${user.uid}">My Courses</a></li>
								<li class="nav-item"><a class="nav-link" href="#">My List</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">My WishLIst</a>
								</li>
								
								<li class="nav-item"><a class="nav-link" href="#">My Cart</a>
								</li>
								
							</ul>
						</div>
					</div>
				</nav>

			</div>



		</div>
	</div>
	<div class="col-1 "></div>

	<div class="row">

		<div class=""></div>

	</div>



<!-- Bootstrap JS and dependencies (jQuery) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
</body>

