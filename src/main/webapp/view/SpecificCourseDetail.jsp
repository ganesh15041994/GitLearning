<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Detail Of Course</title>

</head>
<body>

	<%@ include file="./dashboard.jsp"%>

	<div class="col-9 ">

		<div class="container">


			<div class="card p-2  ">



				<div class="row">
					<div class="col-9  d-flex justify-content-end">
						<span>
							<a class="text-warning"
								href="${pageContext.request.contextPath}/updateCourse/${course.id}">Update
								Course</a>
						</span>
					</div>
					<div class="col-3 d-flex justify-content-start">
						<span>
							<a href="${pageContext.request.contextPath }/deleteCourse/${course.id}" onclick=" return confirm('Are You Sure Delete Course');"  >Delete Course</a>
						</span>
					</div>
				</div>


				<div class="row">
						<div class="col-6">
 
							<input type="text" value="${course.id}" hidden>
						</div>
					</div>

				<div class="row">
					<div class="col-6 mt-3 ">
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Course
								Name </label> <input type="text" class="form-control"
								id="exampleFormControlInput1" value="${course.courseName }"
								disabled="disabled">
						</div>

					</div>
					<div class="col-6 mt-3">

						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Course
								Fees</label> <input type="text" class="form-control"
								id="exampleFormControlInput1" value="${course.fees }"
								disabled="disabled">
						</div>
					</div>
				</div>


				<div class="row">


					<div class="col-6">
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">No
								Of Hours </label> <input type="text" class="form-control"
								id="exampleFormControlInput1" value="${course.noOfHours}"
								disabled="disabled">
						</div>

					</div>
					<div class="col-6">

						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Pre
								Requests </label> <input type="text" class="form-control"
								id="exampleFormControlInput1" value="${course.prerequisites}"
								disabled="disabled">
						</div>
					</div>
				</div>

				<div class="row">


					<div class="col-6">
						<label for="exampleFormControlInput1" class="form-label">Upload
							Banner </label>
						<div class="mb-3">
							<img class="img-fluid img-thumbnail" style="width: 200px;"
								height="90px;" id="exampleFormControlInput1"
								src="../images/${course.path}" disabled="disabled">
						</div>

					</div>
					<div class="col-6">

						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Course
								Type </label> <input type="text" class="form-control"
								id="exampleFormControlInput1" value="${course.type }"
								disabled="disabled">
						</div>
					</div>
				</div>


				<div class="row">


					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">Example
							textarea</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" disabled="disabled">${course.objectives }</textarea>
					</div>
				</div>

				<div class="row">
					<div class="col-5">
						<button type="submit" class="btn btn-primary " disabled="disabled">Submit</button>

					</div>
					<div class="col-1"></div>
					<div class="col-5">
						<button type="button" class="btn btn-info " disabled="disabled">Reset</button>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>