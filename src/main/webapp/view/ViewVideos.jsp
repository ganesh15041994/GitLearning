<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Videos</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
	
</script>


<script type="text/javascript">
	$(document).ready(function() {
		$('#courseId').change(function() {
			let courseId = $('#courseId').val();
			$.ajax({
				type : 'GET',
				url : '/admin/getAllChapter/' + courseId,
				success : function(result) {
					$('#chapterId').html(result);
				}
			});
		});
	});

	$(document).ready(function() {
		//alert('hi loaded...');
		$('#chapterId').change(function() {

			let chapterId = $('#chapterId').val();
			//alert(chapterId);
			$.ajax({
				type : 'GET',
				url : '/admin/getAllTopic/' + chapterId,
				success : function(result) {
					$('#topicId').html(result);
				}
			});

		});

	});

	$(document).ready(function() {
		//alert('hi');
		$('#topicId').change(function() {

			let topicId = $('#topicId').val();

			$.ajax({
				type : 'GET',
				url : '/admin/getAllVideos/' + topicId,
				success : function(result) {
					$('#grid').html(result);
					//console.log(result);
				}
			});
			//alert(topicId);
		});
	});
</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>


	<div class="col-lg-9 col-md-8 col-12 content mt-5">

		<div class="container-fluid">

			<div class="card p-2">
				<div class="card-title">
					<h5 class="card-header">View Videos</h5>
				</div>

				<div class="card-body">

					<form action="#">

						<div class="row">
							<div class="col-6">

								<div class="mb-3">
									<label for="disabledTextInput" class="form-label">Select
										Course </label> <select class="form-select"
										aria-label="Default select example" id="courseId"
										name="chapterId">
										<option selected disabled="disabled">Open Courses</option>
										<c:forEach var="c" items="${course}">
											<option value="${c.id}">${c.courseName}</option>
										</c:forEach>
									</select>
								</div>
							</div>


							<div class="col-6">

								<div class="mb-3">
									<label for="disabledTextInput" class="form-label">Select
										Chapter </label> <select class="form-select"
										aria-label="Default select example" id="chapterId"
										name="chapterId">
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="disabledTextInput" class="form-label">Select
										Chapter </label> <select class="form-select"
										aria-label="Default select example" id="topicId"
										name="topicId">
									</select>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div id="grid"></div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>
</html>
