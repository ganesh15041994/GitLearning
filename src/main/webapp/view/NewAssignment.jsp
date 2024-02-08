<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Assignment</title>


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
			});

		});
	});

	$(document).ready(function() {

		$('#chapterId').change(function() {

			let chapterId = $('#chapterId').val();
			$.ajax({
				type : 'GET',
				url : '/admin/topicChapterWise/'+ chapterId,
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
	<!-- Content -->
            <div class="col-lg-9 col-md-8 col-12 content mt-5">
              
		<div class="container">

			<div class="card p-2">

				<div class="card-title">
					<h5 class="card-header">New Assignment</h5>
				</div>

				<div class="card-body">
					<div class="row">

						<div class="col-6">

							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Select
									Course</label> <select class="form-select"
									aria-label="Default select example" id="courseId">
									<option selected disabled="disabled">Select Course</option>
									<c:forEach var="c" items="${course}">
										<option value="${c.id }">${c.courseName}</option>
									</c:forEach>
								</select>
							</div>
						</div>


						<div class="col-6">

							<div class="mb-3">
								<label for="exampleFormControlInput1" class="form-label">Select
									Chapter</label> <select class="form-select"
									aria-label="Default select example" id="chapterId">

								</select>
							</div>
						</div>

					</div>

				</div>

				<div class="col">
					<div id="grid"></div>

				</div>
			</div>


		</div>

	</div>	
</body>
</html>