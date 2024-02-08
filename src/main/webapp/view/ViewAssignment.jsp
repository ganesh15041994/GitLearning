<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Assignment</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
</script>



<script type="text/javascript">
	$(document).ready(function() {
		$('#courseId').change(function() {
			let courseId = $('#courseId').val();
			//alert(courseId);
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
		//alert('hello');
		$('#chapterId').change(function() {

			let chapterId = $('#chapterId').val();
			$.ajax({
				type : 'GET',
				url : '/admin/getAllTopic/' + chapterId,
				success : function(result) {
					console.log(result);
					$('#topicId').html(result);
				}

			});
		});
	});

	$(document).ready(function() {

		$('#topicId').change(function() {

			let topicId = $('#topicId').val();
			//	alert(topicId);

			$.ajax({
				type : 'GET',
				url : '/admin/getAllAssignment/' + topicId,
				success : function(result) {
					$('#grid').html(result);
					console.log(result);
				}
			});
		});
	});
</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>

            <div class="col-lg-9 col-md-8 col-12 content mt-5">

		<div class="container">

			<div class="card">
				<div class="card-header">
					<h5 class="card-header">View Assignment</h5>
					<h6 class="${msg.type}">${msg.msg}</h6>

				</div>
				<div class="card-body">


					<form>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="course" class="form-label">Select Course </label> <select
										class="form-select" aria-label="Default select example"
										name="courseId" id="courseId">
										<option selected disabled="disabled">Open this select
											menu</option>
										<c:forEach var="c" items="${course}">
											<option value="${c.id}">${c.courseName}</option>
										</c:forEach>

									</select>
								</div>
							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Select
										Chapter address</label> <select class="form-select"
										aria-label="Default select example" id="chapterId"
										id="chapterId">
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="course" class="form-label">Select Topic </label> <select
										class="form-select" aria-label="Default select example"
										name="topicId" id="topicId">
									</select>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="table-responsive" id="grid"></div>
						</div>
					</form>

				</div>


			</div>
		</div>

	</div>
</body>
</html>