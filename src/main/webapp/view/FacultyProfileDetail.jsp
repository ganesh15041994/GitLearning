<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Detail</title>

<script type="text/javascript">
	
</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>
	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<div class="row">
						<div class="col-9  d-flex justify-content-end">
							<span> <a class="text-warning"
								href="${pageContext.request.contextPath}/admin/updateProfile/${f.facultyId}">Update
							</a>
							</span>
						</div>
						<div class="col-3 d-flex justify-content-start">
							<span> <a
								href="${pageContext.request.contextPath }/admin/deleteProfile/${f.facultyId}"
								onclick=" return confirm('Are You Sure Delete Course');">Delete
							</a>
							</span>
						</div>
					</div>
					<h5 class="card-header">FacultyProfile</h5>

				</div>
				<div class="card-body">
					<form>


						<div class="row">
							<div class="col-6">
								<label for="name" class="form-label">Course</label>

								<div class="mb-3">
									<select class="form-select" aria-label="Default select example"
										name="course.id">

										<option selected="selected" value="${f.course.id }"
											disabled="disabled">${f.course.courseName }</option>

									</select>
								</div>

							</div>


							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Name</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="facultyName"
										value="${f.facultyName }" disabled="disabled">
								</div>

							</div>

						</div>



						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty
										Designation</label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="designation" value="${f.designation }"
										disabled="disabled">
								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label"> Faculty
										Qualification</label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="qualification" value="${f.qualification }"
										disabled="disabled">

								</div>

							</div>

						</div>


						<div class="row">
							<div class="col-6">
								<label for="name" class="form-label"> Faculty Old Photo</label>

								<div class="mb-3">

									<img class="img-fluid img-thumbnail" style="width: 200px;"
										height="90px;" id="exampleFormControlInput1"
										src="../Faculty/${f.facultyPhoto}">

								</div>

							</div>



						</div>

						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Skill Set
									</label>

									<textarea class="form-control" id="floatingTextarea2"
										style="height: 80px" name="skillset" disabled="disabled">${f. skillset}</textarea>

								</div>

							</div>



						</div>
						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Experience
									</label>

									<textarea class="form-control" id="floatingTextarea2"
										style="height: 80px" name="experience" disabled="disabled">${f.experience }</textarea>

								</div>

							</div>



						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">

									<button type="submit" class="btn btn-outline-primary"
										disabled="disabled">Submit</button>

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