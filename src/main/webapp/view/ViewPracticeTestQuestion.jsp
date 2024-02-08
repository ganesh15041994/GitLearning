<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Practice Test Question</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
	
</script>
<script
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script src="../JS/PracticeQuestion.js"></script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>

	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">View Practice Test Question</h5>
					<h6 class="${msg.type }">${msg.msg }</h6>

				</div>
				<div class="card-body">

					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<label for="course" class="form-label">Course </label> <select
									class="form-select" name="courseId" id="courseId">

									<option selected="selected" disabled="disabled">Select
										Course</option>
									<c:forEach var="course" items="${course}">
										<option value="${course.id}">${course.courseName}</option>
									</c:forEach>

								</select>
							</div>
						</div>


						<div class="col-6">
							<div class="mb-3">
								<label for="course" class="form-label">Course </label> <select
									class="form-select" id="chapterId" name="chapterId">

									<option selected="selected" disabled="disabled">Select
										Chapter Here</option>
								</select>

							</div>

						</div>

					</div>


					<div class="table-responsive" id="grid"></div>

				</div>

			</div>

		</div>

	</div>

</body>
</html>