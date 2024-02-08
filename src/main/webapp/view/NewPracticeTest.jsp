<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Practice Question</title>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../JS/PracticeTest.js"></script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>

	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">New Practice Question</h5>
				</div>

				<div class="card-body">

					<div class="row">

						<div class="col-6">
							<label for="course" class="form-label"> Course</label>

							<div class="mb-3">
								<select class="form-select" aria-label="Default select example"
									name="courseId" id="courseId">
									<option selected>Select Course</option>
									<c:forEach var="course" items="${course}">
										<option value="${course.id}">${course.courseName}</option>
									</c:forEach>
								</select>

							</div>
						</div>


						<div class="col-6">
							<label for="course" class="form-label"> Chapter</label>

							<div class="mb-3">
								<select class="form-select" aria-label="Default select example"
									id="chapterId" name="chapterId">

								</select>

							</div>
						</div>

					</div>


				</div>
				<div class="table-responsive">
				<div id="grid"></div>
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