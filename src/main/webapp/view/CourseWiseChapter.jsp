<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Chapters</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
	
</script>

<script>
	$(document).ready(function() {
		//alert("hello");
		$('#cid').change(function() {
			var courseId = $('#cid').val();
			//alert(courseId);
			$.ajax({
				type : 'GET',
				url : '/admin/viewAllChapter/' + courseId,
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


	<div class="col-9">

		<div class="row">
			<div class="container mt-5">

				<div class="card p-2">

					<h5 class="card-title bs-light py-2 g-secondary b">View
						Chapter</h5>

					<select id="cid" class="form-select"
						aria-label="Default select example">
						<option selected>Select Course Here</option>
						<c:forEach var="course" items="${course}">
							<option value="${course.id }">${course.courseName}</option>
						</c:forEach>
					</select>
				</div>
			</div>



			<div class="col" id="grid"></div>
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