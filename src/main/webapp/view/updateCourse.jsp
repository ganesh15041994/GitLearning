<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Course</title>

<script type="text/javascript">
	function confirmUpdate() {

		let result = confirm("Are You Sure To Update a Course...!");
		return result;
	}
</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>

	<div class="col-9">
		<div class="container">

			<div class="card p-2">

				<h5 class="card-title bs-light py-2 ml-3">New Course</h5>
				<span class="${msg.type }">${msg.msg}</span>

				<form name="courseForm"
					action="${pageContext.request.contextPath}/finalUpdate"
					method="POST" enctype="multipart/form-data"
					onsubmit="return confirmUpdate();">


					<div class="row">
						<div class="col-6">

							<input type="text" value="${course.id}" name="id" hidden="">
						</div>
					</div>

					<div class="row">


						<div class="col-6 mt-3">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Course
									Name</label> <input type="text" class="form-control" name="courseName"
									value="${course.courseName}">

							</div>

						</div>
						<div class="col-6 mt-3">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Course
									Fees</label> <input type="text" class="form-control" name="fees"
									value="${course.fees}">
							</div>
						</div>
					</div>




					<div class="row">

						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">No Of
									Hours</label> <input type="text" class="form-control" name="noOfHours"
									value="${course.noOfHours}">
							</div>

						</div>
						<div class="col-6">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Pre
									Requisite</label> <input type="text" class="form-control"
									name="prerequisites" value="${course.prerequisites}">
							</div>

						</div>
					</div>





					<div class="row">


						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Upload
									New Banner</label> <input type="file" class="form-control"
									name="banner">
							</div>

						</div>


						<div class="col-6">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Course
									Type</label> <input type="text" class="form-control" name="type"
									value="${course.type }">
							</div>

						</div>
					</div>

					<div class="row">



						<div class="col-6">
							<label for="exampleInputEmail1" class="form-label">Old
								Banner</label>
							<div class="mb-3">
								<img class="img-fluid img-thumbnail" style="width: 200px;"
									height="90px;" src="../images/${course.path}">
							</div>


						</div>
					</div>

					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">Course
							Objective</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" name="objectives">${course.objectives}</textarea>
					</div>

					<div class="row">
						<div class="col-6">
							<button type="submit" class="btn btn-primary ">Update
								Course Detail</button>

						</div>

					</div>

				</form>

			</div>
		</div>
	</div>



</body>
</html>