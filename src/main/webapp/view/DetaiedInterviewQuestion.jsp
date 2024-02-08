<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Interview Question Detail</title>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>


	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">

				<div class="card-header">
					<h5 class="card-header">Question Details</h5>
					<div class="row">
						<div class="col-12  d-flex justify-content-end mt-3">
							<div class="mb-3">
								<a
									href="${pageContex.request.ContextPath}/admin/updateInterviewQuestion/${question.interviewQuestionId}"
									class="btn btn-outline-success"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;">
									Update</a>
							</div>
							<div class="mb-3 mx-3">
								<a
									href="${pageContex.request.ContextPath}/admin/deleteInterviewQuestion/${question.interviewQuestionId}"
									class="btn btn-outline-danger"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;"
									onclick="return confirm('Are you sure you want to delete this chapter?');">
									Delete</a>
							</div>
						</div>



					</div>

				</div>

				<div class="card-body">
					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Topic
									Id </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									value="${question.topic.topicId }" disabled="disabled">

							</div>

						</div>

						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Topic
									Name </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									value="${question.topic.topicName }" disabled="disabled">

							</div>

						</div>

					</div>


					<div class="row">
						<div class="col-6">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Interview
									Question Id </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									value="${question.interviewQuestionId }" disabled="disabled">

							</div>

						</div>

						<div class="col-6">

							<div class="mb-3">
								<label for="exampleFormControlTextarea2" class="form-label">Interview
									Question Description Url </label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" value="${question.description }"
									disabled="disabled">

							</div>

						</div>
					</div>

					<div class="row">
						<div class="col">

							<div class="mb-3">
								<label for="exampleFormControlTextarea1" class="form-label">Interview
									Question </label>


								<div>
									<textarea class="form-control" name="question"
										disabled="disabled">${question.question}</textarea>
								</div>

							</div>

						</div>

					</div>
					<div class="row">
						<div class="col-6">
							<div class="mt-3">
								<button type="submit" disabled="disabled"
									class="btn btn-outline-primary">Submit</button>
							</div>
						</div>


					</div>

				</div>


			</div>

		</div>

	</div>
</body>
</html>