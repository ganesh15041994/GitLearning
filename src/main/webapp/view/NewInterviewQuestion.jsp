<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Interview Question</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		//	alert('hello');
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
		$('#chapterId').change(function() {
			let chapterId = $('#chapterId').val();
			//alert (chapterId);
			$.ajax({
				type : 'GET',
				url : '/admin/chapterWiseTopic/' + chapterId,
				success : function(result) {
					console.log(result);
					$('#grid').html(result);

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
					<h5 class="card-header">New Interview Question</h5>

				</div>

				<div class="card-body ">

					<div class="row">
						<div class="col-6">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Select
									Course </label> <select class="form-select"
									aria-label="Default select example" name="courseId"
									id="courseId">

									<option disabled="disabled" selected="selected">Select
										Course Here</option>
									<c:forEach var="c" items="${course}">
										<option value="${c.id}">${c.courseName}</option>
									</c:forEach>
									<option value="2">Two</option>
									<option value="3">Three</option>
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
						<div class="col" id="grid"></div>
					</div>


				</div>

			</div>

		</div>

	</div>

</body>
</html>