<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Faculty Profile</title>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>

	<div class="col-9">
		<div class="container">
			<div class="card">

				<div class="card-title">
					<h5 class="card-header">Update Faculty Profile</h5>

				</div>

				<div class="card-body">
					<form
						action="${pageContext.request.contextPath}/finalFacultyProfileUpdate"
						method="POST" enctype="multipart/form-data">

						<div class="row">
							
								

								<div class="mb-3">
									<select class="form-select" aria-label="Default select example"
										name="course.id" hidden="">

										<option selected="selected" value="${f.course.id }">${f.course.courseName }</option>

									</select>
								</div>

							


							<div class="col">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Name</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="facultyName"
										value="${f.facultyName }">
										<input
										type="hidden" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" name="facultyId"
										value="${f.facultyId }">
								</div>

							</div>

						</div>



						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty
										Designation</label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="designation" value="${f.designation }">
								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label"> Faculty
										Qualification</label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="qualification" value="${f.qualification }">

								</div>

							</div>

						</div>


						<div class="row">
							<div class="col-6">
								<label for="name" class="form-label"> Faculty Old Photo</label>

								<div class="mb-3">

									<img class="img-fluid img-thumbnail" style="width: 200px;"
										height="90px;" id="exampleFormControlInput1"
										src="../Faculty/${f.facultyPhoto}"> <input type="hidden"
										class="form-control" value="${f.facultyPhoto } "
										name="facultyPhoto">
								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="name" class="form-label"> Upload Faculty
										Photo</label> <input type="file" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="newFacultyImage">

								</div>

							</div>

						</div>

						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Skill Set
									</label>

									<textarea class="form-control" id="floatingTextarea2"
										style="height: 80px" name="skillset">${f. skillset}</textarea>

								</div>

							</div>



						</div>
						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="name" class="form-label">Faculty Experience
									</label>

									<textarea class="form-control" id="floatingTextarea2"
										style="height: 80px" name="experience">${f.experience }</textarea>

								</div>

							</div>



						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">

									<button type="submit" class="btn btn-outline-primary">Submit</button>

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