<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Faculty Profile</title>
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
				<div class="card-header">
					<h5 class="card-header">View All Faculty Profile</h5>
					<h6 class="${msg.type }">${msg.msg }</h6>
				</div>

				<div class="card-body">
					<div class="row">
						<table id="myTable" class="display ">
							<thead>
								<tr>
									<th scope="col">Faculty Id</th>
									<th scope="col">Faculty Name</th>
									<th scope="col">Faculty Images</th>
									<th scope="col">View All Detail</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="f" items="${faculty}">
									<tr>
										<th>${f.facultyId }</th>
										<td>${f.facultyName}</td>
										<td><img alt="" src="../Faculty/${f.facultyPhoto}"
											style="width: 100px;" height="80px;"></td>
										<td><a
											href="${pageContex.request.contectPath }/admin/profileDetail/${f.facultyId}">View
												All Detail</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


					</div>


				</div>

			</div>

		</div>

	</div>

	<%
	request.getSession().invalidate();
	%>
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