<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Video</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
	
</script>

<script
	src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap4.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		//alert("hello");

		$('#courseId').change(function() {
			let courseId = $('#courseId').val();
			//alert(courseId);
			$.ajax({
				type : 'GET',
				url : '/admin/getAllChapter/' + courseId,
				success : function(result) {
					//console.log(result);
					$('#chapterId').html(result);

				}

			});
		});
	});

	$(document).ready(function() {
		$('#chapterId').change(function() {
			let chapterId = $('#chapterId').val();
			//alert(chapterId);
			$.ajax({

				type : 'GET',
				url : '/admin/getAllTopic/'+ chapterId,
				success : function(result) {
					console.log(result);
					$('#topicId').html(result);
				}
			});
		});

	})
</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>

	<div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">
			<div class="card">
				<div class="card-title">
					<h5 class="card-header mt-1">New Video</h5>

					<span class="${msg.type}">${msg.msg}</span>
				</div>
				<div class="card-body">
					<form action="${pageContext.request.contextPath}/saveVideo" method="get">


						<div class="row">

							<div class="col-6">

								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">
										Select Course </label> <select class="form-select"
										aria-label="Default select example" id="courseId"
										name="course">
										<option selected disabled="disabled">Select Course
											Here</option>

										<c:forEach var="c" items="${course}">
											<option value="${c.id}">${c.courseName}</option>
										</c:forEach>
									</select>
								</div>
							</div>


							<div class="col-6">


								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Select
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
									<label for="exampleInputEmail1" class="form-label">Select
										Topic </label> <select class="form-select"
										aria-label="Default select example" id="topicId"
										name="topicId">
									</select>
								</div>

							</div>

							<div class="col-6">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Video
										Title </label> <input type="text" class="form-control" name="title">
								</div>
							</div>
						</div>



						<div class="row">

							<div class="col">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Video
										Url </label> <input type="text" class="form-control" name="url">
								</div>
							</div>

						</div>

						<div class="row">

							<div class="col">
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">Video
										Description</label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3" name="description"></textarea>
								</div>

							</div>
						</div>

						<div class="row">


							<div class="col-6">
								<div class="mb-3 form-check">
									<button type="submit" class="btn btn-outline-primary"
										style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;">Submit</button>

								</div>
							</div>

							<div class="col-6">
								<div class="mb-3 form-check">
									<button type="reset" class="btn btn-outline-danger"
										style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;">Reset</button>

								</div>
							</div>
						</div>


					</form>

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

</body>
</html>