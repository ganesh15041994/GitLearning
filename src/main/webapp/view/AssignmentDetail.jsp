<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Assignment Detail</title>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>
	<div class="col-9">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">Assignment Detail</h5>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-12  d-flex justify-content-end">
							<div class="mb-3">
								<a
									href="${pageContex.request.ContextPath}/admin/updateAssignment/${assignment.assignmentId}"
									class="btn btn-outline-success"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;">
									Update</a>
							</div>
							<div class="mb-3 mx-3">
								<a
									href="${pageContex.request.ContextPath}/admin/deleteAssignment/${assignment.assignmentId}"
									class="btn btn-outline-danger"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;"
									onclick="return confirm('Are you sure you want to delete this chapter?');">
									Delete</a>
							</div>
						</div>



					</div>

					<form action="${pageContext.request.contextPath}/#">

						<div class="row">
							<div class="col-4">
								<label for="exampleFormControlInput1" class="form-label">Course
								</label>

								<div class="mb-3">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" name="description"
										value="${assignment.topic.chapter.course.courseName}"
										disabled="disabled">
								</div>

							</div>


							<div class="col-4">
								<label for="exampleFormControlInput1" class="form-label">Chapter</label>

								<div class="mb-3">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" name="description"
										value="${assignment.topic.chapter.chapterName}"
										disabled="disabled">
								</div>

							</div>


							<div class="col-4">
								<label for="exampleFormControlInput1" class="form-label">Topic</label>

								<div class="mb-3">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" name="description"
										value="${assignment.topic.topicName}" disabled="disabled">
								</div>

							</div>
						</div>

						<div class="row">

							<div class="col">
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">
										Question </label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3" name="question" disabled="disabled">${assignment.question}</textarea>
								</div>
							</div>

						</div>
						<div class="row">

							<div class="col-6">
								<label for="exampleFormControlInput1" class="form-label">Assignment
									Type</label>

								<div class="mb-3">
									<select class="form-select" aria-label="Default select example"
										name="type">
										<option selected value="${assignment.type }"
											disabled="disabled">${assignment.type}</option>
										<!-- <option value="Solved">Solved</option>
										<option value="Practice">Practice</option> -->
									</select>

								</div>

							</div>


							<div class="col-6">
								<label for="exampleFormControlInput1" class="form-label">Assignment
									Description Url </label>

								<div class="mb-3">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" name="description"
										value="${assignment.description}" disabled="disabled">
								</div>

							</div>

						</div>
						<div class="row mt-3">
							<div class="col-6">
								<button type="submit" class="btn btn-outline-primary"
									disabled="disabled">Add New Assignment</button>

							</div>
						</div>



					</form>


				</div>
			</div>
		</div>


	</div>
</body>
</html>