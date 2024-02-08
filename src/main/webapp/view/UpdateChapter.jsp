<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Chapter</title>


<script type="text/javascript">
	function course() {
		document.getElementById("courseName").style.color = "red";
		document.getElementById("courseHelp").innerHTML = "You Can Not Edit Course";
	}

	function confirmUpdate() {
		const result = confirm("Are you sure you want to update this chapter?");
		return result;
	}
</script>
</head>
<body>


	<%@ include file="./dashboard.jsp"%>

	<div class="col-9  ">

		<div class="container  ">
			<div class="card  p-2">

				<h5 class="card-header mb-2">Chapter Details</h5>

				<div class="${msg.type} mb-3">${msg.msg}</div>
				<form action="${pageContext.request.contextPath}/admin/chapterFinalUpdate"
					method="GET" onsubmit="return confirmUpdate()">
					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Chapter
									Id </label> <input type="text" class="form-control"
									value="${chapter.chapterId }" name="chapterId">
							</div>
						</div>


						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Chapter
									Name </label> <input type="text" class="form-control"
									value="${chapter.chapterName}" name="chapterName">
							</div>


						</div>
					</div>

					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Course
								</label> <input type="text" class="form-control"
									value="${chapter.course.courseName}" name="course.courseName"
									readonly="readonly" id="courseName" onclick="course()">
								<div id="courseHelp" class="form-text text-danger"></div>
							</div>
						</div>

						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Course
									Id </label> <input type="text" class="form-control"
									value="${chapter.course.id }" readonly="readonly">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<button type="submit" class="btn btn-outline-success"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 5rem; --bs-btn-font-size: 1rem;"
									onclick="">Update Chapter</button>
							</div>
						</div>

					</div>
				</form>
			</div>


		</div>

	</div>

</body>
</html>