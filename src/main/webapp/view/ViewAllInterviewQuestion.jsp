<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Interview Question</title>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>
            <div class="col-lg-9 col-md-8 col-12 content mt-5">

		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">All Interview Question</h5>
					<h6 class="${msg.type }">${msg.msg }</h6>

				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered table-striped example1"
							id="myTable">
							<thead>
								<tr>

									<th scope="col">Question</th>
									<th scope="col">Description Link</th>
									<th scope="col">View All Details</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="i" items="${question}">
									<tr>
										<td>${i.question}</td>
										<td>${i.description}</td>
										<td><a
											href="${pageContext.request.contextPath}/admin/detaiedInterviewQuestion/${i.interviewQuestionId}">
												View All Detail</a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>


					</div>

				</div>

			</div>

		</div>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>

	<script src="plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script>
		$(function() {
			$(".example1").DataTable();
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false
			});
		});
	</script>


</body>
</html>