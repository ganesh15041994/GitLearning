<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Faculty</title>

</head>
<body>
	<%@  include file="./dashboard.jsp"%>

	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">New Faculty</h5>
					<h6 class="${msg.type }">${msg.msg }</h6>

				</div>
				<div class="card-body">
					<form action="/admin/saveFaculty" method="Post"
						enctype="multipart/form-data">
						<div class="row">
							<div class="col-6">
								<label for="name" class="form-label">Course</label>

								<div class="mb-3">
									<select class="form-select" aria-label="Default select example"
										name="course.id">
										<option selected disabled="disabled">Select Course</option>
										<c:forEach var="course" items="${course }">
											<option value="${course.id }">${course.courseName }</option>
										</c:forEach>

									</select>
								</div>

							</div>

						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Name</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="facultyName">
								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label"> Upload Faculty
										Photo</label> <input type="file" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="facultyImage">

								</div>

							</div>

						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty
										Designation</label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="designation">
								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label"> Faculty
										Qualification</label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name=qualification>

								</div>

							</div>

						</div>

						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Skill Set
									</label>

									<textarea class="form-control" id="floatingTextarea2"
										style="height: 100px" name="skillset"></textarea>

								</div>

							</div>



						</div>
						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Experience
									</label>

									<textarea class="form-control" id="floatingTextarea2"
										style="height: 100px" name="experience"></textarea>

								</div>

							</div>



						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">

									<button type="submit" class="btn btn-outline-primary">Submit</button>

								</div>

							</div>
							<div class="col-6">
								<div class="mb-3">

									<button type="reset" class="btn btn-outline-secondary">&nbsp;Reset&nbsp;</button>

								</div>

							</div>



						</div>

					</form>

				</div>

			</div>
		</div>
	</div>
</body>
</html>