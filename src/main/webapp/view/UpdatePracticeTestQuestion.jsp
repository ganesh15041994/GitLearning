<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdatePracticeInterviewQuestion</title>

<script type="text/javascript">
 let updatePracticeTest = () => {
	 
	 let result = confirm ('Are You Want to Update .....!');
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
					<h5 class="card-header">Update PracticeTest Question</h5>
					<h6 class="${msg.type }">${msg.msg}</h6>
				</div>

				<div class="card-body">
					<form
						action="${pageContext.request.contextPath }/finalUpdatePracticeTest"
						method="POST" onsubmit=" return updatePracticeTest()">

						<div class="row">
							<div class="col-6">
								<input type="hidden" value="${p.practiceTestId }"
									name="practiceTestId">
								<div class="mb-3">
									<label for="courseId" class="form-label">Topic ID</label> <input
										type="text" class="form-control" id="exampleInputPassword1"
										name="topic.topicId" value="${p.topic.topicId }"
										readonly="readonly">
								</div>
							</div>

							<div class="col-6">

								<div class="mb-3">
									<label for="courseId" class="form-label">Topic </label> <input
										type="text" class="form-control" id="topicName"
										name="topic.topicName" value="${p.topic.topicName }"
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
										<textarea class="form-control" name="question">${p.question }</textarea>
									</div>


								</div>

							</div>


						</div>


						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 1 </label>

									<div>
										<textarea class="form-control" name="option1">${p.option1 }</textarea>
									</div>


								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 2 </label>

									<div>
										<textarea class="form-control" name="option2">${p.option2 }</textarea>
									</div>


								</div>
							</div>

						</div>



						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 3 </label>

									<div>
										<textarea class="form-control" name="option3">${p.option3 }</textarea>
									</div>


								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="quesion" class="form-label">Option 4 </label>

									<div>
										<textarea class="form-control" name="option4">${p.option4 }</textarea>
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
										<textarea class="form-control" name="description">${p.description }</textarea>
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
										<option value="1"
											${p.answer == 1 ? 'selected="selected"' : ''}>Option
											1</option>
										<option value="2"
											${p.answer == 2 ? 'selected="selected"' : ''}>Option
											2</option>
										<option value="3"
											${p.answer == 3 ? 'selected="selected"' : ''}>Option
											3</option>
										<option value="4"
											${p.answer == 4 ? 'selected="selected"' : ''}>Option
											4</option>



									</select>


								</div>

							</div>

							<div class="col-6">
								<div class="mb-3 mt-2	">
									<button type="submit" name="sub"
										class="btn btn-outline-primary mt-4" style="margin-left: 50px">Update</button>

								</div>

							</div>


						</div>


						<div class="row"></div>
					</form>



				</div>
			</div>

		</div>


	</div>
	<%
	request.getSession().invalidate();
	%>
</body>
</html>