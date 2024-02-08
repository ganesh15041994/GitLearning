<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detailed Practice Question</title>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>
	<div class="col-9">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">Question Details</h5>
					<h6 class="${msg.type }">${msg.msg}</h6>
				</div>

				<div class="card-body">
					<form
						action="#">

						<div class="row">
							<div class="col-9  d-flex justify-content-end">
								<span> <a class="text-warning"
									href="${pageContext.request.contextPath}/updatePracticeTestQuestion/${p.practiceTestId}">Update
										</a>
								</span>
							</div>
							<div class="col-3 d-flex justify-content-start">
								<span> <a
									href="${pageContext.request.contextPath }/deletePracticeTest/${p.practiceTestId}"
									onclick=" return confirm('Are You Sure Delete Course');">Delete
										</a>
								</span>
							</div>
						</div>

						<div class="row">
							<div class="col-6">

								<div class="mb-3">
									<label for="courseId" class="form-label">Topic ID</label> <input
										type="text" class="form-control" id="exampleInputPassword1"
										name="topic.topicId" value="${p.topic.topicId }"
										readonly="readonly" disabled="disabled">
								</div>
							</div>

							<div class="col-6">

								<div class="mb-3">
									<label for="courseId" class="form-label">Topic </label> <input
										type="text" class="form-control" id="topicName"
										name="topic.topicName" value="${p.topic.topicName }"
										readonly="readonly" disabled="disabled">
								</div>
							</div>


						</div>

						<div class="row">
							<div class="col">
								<div class="mb-3">
									<label for="quesion" class="form-label">Practice
										Question</label>

									<div>
										<textarea class="form-control" name="question"
											disabled="disabled">${p.question }</textarea>
									</div>


								</div>

							</div>


						</div>


						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 1 </label>

									<div>
										<textarea class="form-control" name="option1"
											disabled="disabled">${p.option1 }</textarea>
									</div>


								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 2 </label>

									<div>
										<textarea class="form-control" name="option2"
											disabled="disabled">${p.option2 }</textarea>
									</div>


								</div>
							</div>

						</div>



						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 3 </label>

									<div>
										<textarea class="form-control" name="option3"
											disabled="disabled">${p.option3 }</textarea>
									</div>


								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 4 </label>

									<div>
										<textarea class="form-control" name="option4"
											disabled="disabled">${p.option4 }</textarea>
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
										<textarea class="form-control" name="description"
											disabled="disabled">${p.description }</textarea>
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
										required="required" disabled="disabled">
										<option value="${p.answer}"
											${p.answer == 1 ? 'selected="selected"' : ''}>Option
											1</option>
										<option value="${p.answer}"
											${p.answer == 2 ? 'selected="selected"' : ''}>Option
											2</option>
										<option value="${p.answer}"
											${p.answer == 3 ? 'selected="selected"' : ''}>Option
											3</option>
										<option value="${p.answer}"
											${p.answer == 4 ? 'selected="selected"' : ''}>Option
											4</option>



									</select>


								</div>

							</div>


						</div>


						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<button type="submit" name="sub"
										class="btn btn-outline-primary" style="margin-left: 50px;" disabled="disabled">Submit</button>

								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<button type="submit" name="sub" disabled="disabled"
										class="btn btn-outline-secondary" style="margin-left: 50px;">&nbsp;Reset&nbsp;</button>

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