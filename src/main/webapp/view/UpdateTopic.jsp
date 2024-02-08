<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Topic</title>

<script type="text/javascript">
	function confirmUpdate() {
		let result = confirm('Are You Sure To Update Topic');
		return result;
	}
</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>


	<div class="col-9  ">

		<div class="container  ">
			<div class="card  p-2">

				<h5 class="card-header mb-2">Update Topic</h5>
				<h6 class="${msg.type }">${msg.msg}</h6>

				<form action="${pageContext.request.contextPath}/finalTopicUpdate"
					method="get" onsubmit=" return confirmUpdate()">
					<div class="row">
					<input type ="hidden" value="${topic.chapter.course.id }" name="course.id">
						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Topic
									Id </label> <input type="text" class="form-control"
									value="${topic.topicId }" name="topicId">
							</div>
						</div>


						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Topic
									Name </label> <input type="text" class="form-control"
									value="${topic.topicName}" name="topicName">
							</div>
						</div>
					</div>

					<div class="row">

						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Chapter
									Id </label> <input type="text" class="form-control"
									value="${topic.chapter.chapterId }" name="chapter.chapterId">
							</div>
						</div>
						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Chapter
								</label> <input type="text" class="form-control"
									value="${topic.chapter.chapterName}" name="chapter.chapterName">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<button type="submit" class="btn btn-primary"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 5rem; --bs-btn-font-size: 1rem;">
									Submit</button>
							</div>
						</div>
					</div>
				</form>
			</div>

		</div>

	</div>
</body>
</html>