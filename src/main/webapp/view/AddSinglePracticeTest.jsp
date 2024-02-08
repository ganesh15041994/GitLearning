<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Single Practice Test</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
textarea {
	height: 45px;
}
</style>


</head>
<body>
	<%@ include file="./dashboard.jsp"%>


	<div class="col-9">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">Add Single Practice Test</h5>
					<h6 id="msg" class="${msg.type}">${msg.msg }</h6>
				</div>

				<div class="card-body">
					<form
						action="${pageContext.request.contextPath }/saveSinglePracticeQuestion">

						<div class="row">
							<div class="col-6">

								<div class="mb-3">
									<label for="courseId" class="form-label">Topic ID</label> <input
										type="text" class="form-control" id="exampleInputPassword1"
										name="topic.topicId" value="${topic.topicId }"
										readonly="readonly">
								</div>
							</div>

							<div class="col-6">

								<div class="mb-3">
									<label for="courseId" class="form-label">Topic </label> <input
										type="text" class="form-control" id="topicName"
										name="topic.topicName" value="${topic.topicName }"
										readonly="readonly">
								</div>
							</div>


						</div>

						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="quesion" class="form-label">Practice
										Question</label>

									<div>
										<textarea class="form-control" name="question"></textarea>
									</div>


								</div>

							</div>


						</div>


						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 1 </label>

									<div>
										<textarea class="form-control" name="option1"></textarea>
									</div>


								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 2 </label>

									<div>
										<textarea class="form-control" name="option2"></textarea>
									</div>


								</div>
							</div>

						</div>



						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 3 </label>

									<div>
										<textarea class="form-control" name="option3"></textarea>
									</div>


								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 4 </label>

									<div>
										<textarea class="form-control" name="option4"></textarea>
									</div>


								</div>
							</div>

						</div>

						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="quesion" class="form-label">Practice
										Question Solution Description </label>

									<div>
										<textarea class="form-control" name="description"></textarea>
									</div>


								</div>

							</div>


						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Select Correct
										Answer </label> <select class="form-select"
										aria-label="Default select example" name="answer"
										required="required">
										<option selected="selected" disabled="disabled">Select
											Option</option>
										<option value="1">Option 1</option>
										<option value="2">Option 2</option>
										<option value="3">Option 3</option>
										<option value="3">Option 4</option>

									</select>


								</div>

							</div>


						</div>


						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<button type="submit" name="sub"
										class="btn btn-outline-primary" style="margin-left: 50px;">Submit</button>

								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<button type="submit" name="sub"
										class="btn btn-outline-secondary" style="margin-left: 50px;">&nbsp;Reset&nbsp;</button>

								</div>

							</div>


						</div>
					</form>
				</div>

			</div>

		</div>
		<%
		request.getSession().invalidate();
		%>

	</div>
</body>
</html>