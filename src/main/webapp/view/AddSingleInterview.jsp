<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Single Interview Question</title>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>
	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">
				<div class="card-header">
					<h5 class="card-header">Interview Question Details</h5>
					<h6 class="${msg.type}">${msg.msg}</h6>

				</div>

				<div class="card-body">
					<form
						action="${pageContext.request.contextPath}/admin/saveInterviewQuestion"
						method="POST">


						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Topic
										Id </label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="topic.topicId" value="${topic.topicId} "
										readonly="readonly">

								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Topic
										Name </label> <input type="text" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										name="topicName" value="${topic.topicName }"
										readonly="readonly">

								</div>

							</div>


						</div>
						<div class="row">
							<div class="col">

								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">Interview
										Question </label>


									<div>
										<textarea class="form-control" name="question"></textarea>
									</div>

								</div>
							</div>

							<div class="row">
								<div class="col">

									<div class="mb-2">

										<label for="exampleFormControlTextarea2" class="form-label">Interview
											Question Solution Description </label>

										<div>
											<textarea class="form-control" name="description"></textarea>
										</div>
									</div>

								</div>
							</div>


							<div class="row">
								<div class="col-6">
									<div class="mt-3">
										<button type="submit" class="btn btn-outline-primary">Submit</button>
									</div>
								</div>
								<div class="col-6">
									<div class="mt-3">
										<button type="button" class="btn btn-outline-danger">&nbsp;Reset
											&nbsp;</button>
									</div>
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