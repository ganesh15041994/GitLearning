<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Courses</title>

<link rel="stylesheet" href="../CSS/home.css" type="text/css">

<style type="text/css">


/*** Service ***/
.service-item1 {
	background: var(--light);
	transition: .5s;
}

.service-item:hover {
	margin-top: -10px;
	background: var(--primary);
}

.service-item * {
	transition: .5s;
}

.service-item:hover * {
	color: var(--light) !important;
}

.line
{
	width: 100%;
	border: 1px solid;
}

</style>
</head>
<body>
	<%@ include file="./MyLearning.jsp"%>



	<!-- Service Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-4">
				<c:forEach var="c" items="${c }">

					<div class="col-lg-3 col-sm-6 mb-2" >
						<div class="service-item1 	 pt-3">
							<div class="p-4">
							<img src="/images/${ c.course.path}" width="100%" height="130px">
								<h6 class="mb-3 mt-3">Become an  ${c.course.courseName } Developer from Scratch</h6>
								
								
								<p>Diam elitr </p>
								<div class="line" ></div>
								<a href="#">Start Course</a>
							</div>
						</div>
					</div>
				</c:forEach>



			</div>
		</div>
	</div>
</body>
</html>