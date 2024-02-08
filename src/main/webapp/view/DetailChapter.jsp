<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chapter All Detail</title>
</head>
<body>



	<%@ include file="./dashboard.jsp"%>


	<div class="col-lg-9 col-md-8 col-12 content mt-5">


		<div class="container  ">
			<div class="card  p-2">

				<h5 class="card-header mb-2">Chapter Details</h5>

				<div class="row">
					<div class="col-12  d-flex justify-content-end">
						<div class="mb-3">
							<a
								href="${pageContex.request.ContextPath}/admin/updateCahpter/${chapter.chapterId}"
								class="btn btn-outline-success"
								style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;">
								Update</a>
						</div>
						<div class="mb-3 mx-3">
							<a
								href="${pageContex.request.ContextPath}/admin/deleteChapter/${chapter.chapterId}"
								class="btn btn-outline-danger"
								style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;"
								onclick="return confirm('Are you sure you want to delete this chapter?');">
								Delete</a>
						</div>
					</div>



				</div>
				<form>
					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Chapter
									Id </label> <input type="text" class="form-control"
									value="${chapter.chapterId }" disabled="disabled">
							</div>
						</div>


						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Chapter
									Name </label> <input type="text" class="form-control"
									value="${chapter.chapterName}" disabled="disabled">
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Course
								</label> <input type="text" class="form-control"
									value="${chapter.course.courseName}" disabled="disabled">
							</div>
						</div>


						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Course
									Id </label> <input type="text" class="form-control"
									value="${chapter.course.id }" disabled="disabled">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<button type="submit" class="btn btn-primary"
									disabled="disabled"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 5rem; --bs-btn-font-size: 1rem;">
									Submit</button>
							</div>
						</div>


						<div class="col-6">
							<div class="mb-3">
								<button type="reset" class="btn btn-info" disabled="disabled"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 5rem; --bs-btn-font-size: 1rem;">
									Reset</button>
							</div>
						</div>
					</div>
				</form>
			</div>


		</div>

	</div>
</body>
</html>