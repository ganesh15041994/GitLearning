<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>All Courses</title>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>


</head>
<body>
	<%@ include file="./dashboard.jsp"%>

		<!-- Content -->
            <div class="col-lg-9 col-md-8 col-12 content mt-5">

		<!-- JQuery -->
		<div class="container">
			<div class="card">

				<div class="card-header">
					<h5 class="card-header mt1">All Courses</h5>
					<span class="${msg.type }">${msg.msg }</span>

				</div>

				<div class="card-body">

					<table id="myTable" class="display ">
						<thead>
							<tr>
								<th>CourseName</th>
								<th>Fees</th>
								<th>No Of Hours</th>
								<th>Banner</th>
								<th>View Details</th>

							</tr>
						</thead>
						<tbody>

							<c:forEach var="course" items="${course}">
								<tr>

									<td>${course.courseName}</td>
									<td>${course.fees}</td>
									<td>${course.type}</td>
									<th><img class="img-fluid img-thumbnail"
										src="../images/${course.path }" style="width: 100px;"
										height="100px;"></th>
									<th scope="row"><a
										href="SpecificCourseDetail/${course.id}">View All Details</a></th>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap4.min.js"></script>
	<script>
		$(function() {
			$("#myTable").DataTable({
				order : [ [ 0, 'desc' ] ]
			});
		});
	</script>
</body>
</html>