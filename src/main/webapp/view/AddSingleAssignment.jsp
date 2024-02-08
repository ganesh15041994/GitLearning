<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Single Assignment</title>
</head>
<body>

	<%@ include file="./dashboard.jsp"%>
	<div class="col-9">
		<div class="container">
			<div class="card p-2">
				<div class="catd-title">

					<div class="card-header">

						<h5 class="card-header">Add Single Assignment</h5>
						<h6 class="${msg.type }">${msg.msg}</h6>

					</div>
				</div>
				<div class="card-body">
					<form action="${pageContext.request.contextPath}/admin/saveAssignment">

						<div class="row">

							<div class="col">
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">Enter
										Question </label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3" name="question"></textarea>
								</div>
							</div>

							<input type="hidden" value="${topicId}" name="topic.topicId">

						</div>
						<div class="row">

							<div class="col-6">
								<label for="exampleFormControlInput1" class="form-label">Assignment
									Type</label>

								<div class="mb-3">
									<select class="form-select" aria-label="Default select example"
										name="type">
										<option selected disabled="disabled">Select
											Assignment Type</option>
										<option value="Solved">Solved</option>
										<option value="Practice">Practice</option>
									</select>

								</div>

							</div>


							<div class="col-6">
								<label for="exampleFormControlInput1" class="form-label">Assignment
									Description Url </label>

								<div class="mb-3">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" name="description">
								</div>

							</div>

						</div>
						<div class="row mt-3">
							<div class="col-6">
								<button type="submit" class="btn btn-outline-primary">Add
									New Assignment</button>

							</div>
							<div class="col-6">
								<button type="reset" class="btn btn-outline-danger">Reset
									Detail</button>

							</div>


						</div>



					</form>

				</div>

			</div>

		</div>
	</div>
</body>
</html>