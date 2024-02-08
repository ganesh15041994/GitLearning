<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Assignment</title>

<script type="text/javascript">

let updAssignment =  () =>
{
	let result = confirm('You Want To Update Course...!');
	return result;
}


</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>
	<div class="col-9">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">Update Assignment</h5>
					<h6 class="${msg.type}">${msg.msg}</h6>
				</div>

				<div class="card-body">

					<form
						action="${pageContext.request.contextPath}/finalAssignmentUpate"
						onsubmit=" return updAssignment()">

						<div class="row">

							<div class="col">
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">
										Assignment Id </label> <input type="text" class="form-control"
										id="exampleFormControlInput1" name="assignmentId"
										value="${assignment.assignmentId}">
								</div>
							</div>

						</div>

						<input type="hidden" value="${assignment.topic.topicId }"
							name="topicId">
						<div class="row">

							<div class="col">
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">
										Question </label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3" name="question">${assignment.question}</textarea>
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

										<option>Select Assignment Type</option>
										<option ${assignment.type == 'Solved' ? 'selected' : ''}>Solved</option>
										<option ${assignment.type == 'Practice' ? 'selected' : ''}>Practice</option>
									</select>

								</div>

							</div>


							<div class="col-6">
								<label for="exampleFormControlInput1" class="form-label">Assignment
									Description Url </label>

								<div class="mb-3">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" name="description"
										value="${assignment.description}">
								</div>

							</div>

						</div>
						<div class="row mt-3">
							<div class="col-6">
								<button type="submit" class="btn btn-outline-primary">Update
									Assignment</button>

							</div>
						</div>

					</form>

				</div>
			</div>

		</div>

	</div>
</body>
</html>