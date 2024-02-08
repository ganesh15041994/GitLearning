<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Topics</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
	
</script>


<script type="text/javascript">
	$(document).ready(function() {

		$('#courseId').change(function() {
			let courseId = $('#courseId').val();
			//alert (courseId);
			$.ajax({
				type : 'GET',
				url : '/admin/getAllChapter/' + courseId,
				success : function(result) {
					$('#chapterId').html(result);
				}
			})
		});

	});

	$(document).ready(function() {

		$('#chapterId').change(function() {

			let chapterId = $('#chapterId').val();
			//alert(chapterId);
			$.ajax({

				type : 'GET',
				url : '/admin/getAllTopicDetails/' + chapterId,
				success : function(result) {
					$('#grid').html(result);
				}

			});
		});
	});
</script>
</head>
<body>

	<%@ include file="./dashboard.jsp"%>


	<div class="col-9">
		<div class="container">


			<div class="card p-2">

				<div class="card-header">


					<h5>View All Topics</h5>
					<h6 class="${msg.type}">${msg.msg}</h6>
				</div>
				<div class="card-body">
					<div class="row">

						<div class="col-6">
							<div class="mb-3">
								<label for="exampleCourse" class="form-label">Select
									Course</label> <select class="form-select"
									aria-label="Default select example" id="courseId">
									<option selected disabled="disabled">Select Course
										Here</option>

									<c:forEach var="c" items="${course}">
										<option value="${c.id }">${c.courseName}</option>
									</c:forEach>

								</select>
							</div>

						</div>

						<div class="col-6">
							<div class="mb-3">
								<label for="exampleCourse" class="form-label">Select
									Chapter</label> <select class="form-select"
									aria-label="Default select example" id="chapterId">
								</select>
							</div>

						</div>

					</div>


					<div class="row">

						<div class="col">
							<div id="grid"></div>
						</div>

					</div>

				</div>

			</div>

		</div>



	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	</script>
</body>
</html>