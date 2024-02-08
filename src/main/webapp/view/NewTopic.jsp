<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Topic</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
	
</script>
<script>
	$(document).ready(function() {
		//alert('hello');
		$('#courseId').change(function() {
			let courseId = $('#courseId').val();

			alert(courseId);
			$.ajax({
				type : 'GET',
				url : '/admin/getAllChapterCourseWise/' + courseId,
				success : function(result) {
					//console.log(result);
					$('#grid').html(result);
				}

			})

		});
	});
</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>

	<div class="col-lg-9 col-md-8 col-12 content mt-5">

		<div class="container mt-2">
			<div class="card-p2">
				<div class="card-body">
					<div class="mb-3">
						<h5 class="card-title">New Topic</h5>
					</div>
					<form action="#" class="">
						<div class="row">
							<div class="col-12">
								<div class="mb-3">
									<select id="courseId" class="form-select form-select"
										aria-label="Small select example">
										<option selected disabled="disabled">Select Course</option>
										<c:forEach var="c" items="${course}">
											<option value="${c.id }">${c.courseName}</option>
										</c:forEach>
									</select>
								</div>

							</div>
						</div>
					</form>

					<div class="col" id="grid"></div>

				</div>

			</div>

		</div>
	</div>
</body>
</html>