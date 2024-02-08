<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Practice Test Question</title>

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>
	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">
				<div class="row">

					<div class="card-header">
						<h5 class="card-header">View All Practice Question</h5>
						<h6 class="${msg.type }">${msg.msg }</h6>
					</div>

					<div class="card">

						<table class="display" id="myTable">
							<thead>
								<tr>

									<th scope="col">Practice Question Id</th>
									<th scope="col">Question</th>
									<th scope="col">All Detail</th>

								</tr>
							</thead>
							<tbody>

								<c:forEach var="p" items="${pr}">
									<tr>
										<td>${p.question}</td>
										<td>${p.description}</td>
										<td><a
											href="${pageContext.request.contextPath }/detailPracticeQuestion/${p.practiceTestId}">View
												All</a></td>
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

	<script>
		$(document).ready(function() {
			$('#myTable').DataTable({
				"pageLength" : 10,
				"searching" : true,
				"order" : [ [ 0, "asc" ] ]
			});
		});
	</script>
</body>
</html>