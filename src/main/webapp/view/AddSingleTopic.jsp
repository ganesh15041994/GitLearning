<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Single Topic</title>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>

	<div class="col-9">
		<div class="container">
			<div class="card p-2 mt-5">
				<div class="card-title">
					<h5 class="card-header mt-1">Add Topic</h5>

					<span class="${msg.type}">${msg.msg}</span>
				</div>
				<div class="card-body">
					<form action="${pageContext.request.contextPath}/saveSingleTopic" method="get">
						<div class="row">
							<div class="col-6">

							<input type =text value ="${c}" name="chapterId">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Topic
										Name </label> <input type="text" class="form-control"
										name="topicName">
								</div>
							</div>

							<div class="col-6">
								<div class="mb-3 form-check">
									<button type="submit" class="btn btn-outline-primary mt-4"
										style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;">Submit</button>

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