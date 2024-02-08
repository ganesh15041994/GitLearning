<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Topic</title>
</head>
<body>

	<%@ include file="./dashboard.jsp"%>
	<div class="col-9">
		<div class="container">
			<div class="card p-2 mt-5">
				<div class="card-title">
					<h5 class="card-header mt-1">Topic Detail</h5>

					<span class="${msg.type}">${msg.msg}</span>
				</div>
				<div class="card-body">

					<div class="row">
						<div class="col-12  d-flex justify-content-end">
							<div class="mb-3">
								<a
									href="${pageContex.request.ContextPath}/updateTopic/${topic.topicId}"
									class="btn btn-outline-success"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;">
									Update</a>
							</div>
							<div class="mb-3 mx-3">
								<a
									href="${pageContex.request.ContextPath}/deleteTopic/${topic.topicId}"
									class="btn btn-outline-danger"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;"
									onclick="return confirm('Are you sure you want to delete this chapter?');">
									Delete</a>
							</div>
						</div>



					</div>
					<form action="#" method="get">
						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Topic
										Id </label> <input type="text" class="form-control" name="topicName"
										value="${topic.topicId}" disabled="disabled">
								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Topic
										Name </label> <input type="text" class="form-control" name="topicName"
										value="${topic.topicName}" disabled="disabled">
								</div>
							</div>

						</div>


						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Chapter
										Id </label> <input type="text" class="form-control" name=""
										value="${topic.chapter.chapterId}" disabled="disabled">
								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Chapter
										Name </label> <input type="text" class="form-control" name="topicName"
										value="${topic.chapter.chapterName}" disabled="disabled">
								</div>
							</div>

						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3 form-check">
									<button type="submit" class="btn btn-outline-primary mt-4"
										style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;"
										disabled="disabled">Submit</button>

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