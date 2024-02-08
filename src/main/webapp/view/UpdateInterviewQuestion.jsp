<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update InterviewQuestion</title>

<script type="text/javascript">

let conUpd = () =>{
	let result = confirm('Are You Want to Update ? ');
	return result;
}


</script>
</head>
<body>

	<%@ include file="./dashboard.jsp"%>
	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">Update Interview Question</h5>

				</div>
				<div class="card-body">

					<form
						action="${pageContext.request. contextPath}/admin/finalInterviewUpdate"
						onsubmit="return  conUpd()">
						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Topic
										Id </label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										value="${question.topic.topicId }" readonly="readonly"
										name="topic.topicId">

								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Topic
										Name </label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										value="${question.topic.topicName }" readonly="readonly">
								</div>

							</div>

						</div>


						<div class="row">
							<div class="col-6">

								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Interview
										Question Id </label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										value="${question.interviewQuestionId }"
										name="interviewQuestionId" readonly="readonly">

								</div>

							</div>

							<div class="col-6">

								<div class="mb-3">
									<label for="exampleFormControlTextarea2" class="form-label">Interview
										Question Description Url </label> <input type="text"
										class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" value="${question.description } "
										name="description">

								</div>

							</div>
						</div>

						<div class="row">
							<div class="col">

								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">Interview
										Question </label>


									<div>
										<textarea class="form-control" name="question">${question.question}</textarea>
									</div>

								</div>

							</div>

						</div>
						<div class="row">
							<div class="col-6">
								<div class="mt-3">
									<button type="submit" class="btn btn-outline-primary">Update
										Question</button>
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