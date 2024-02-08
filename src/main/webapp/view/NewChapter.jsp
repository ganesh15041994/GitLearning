<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Chapter</title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>
	<%@ include file="./dashboard.jsp"%>



	
	<!-- Content -->
            <div class="col-lg-9 col-md-8 col-12 content mt-5">
		<div class="container">

			<div class="card p-2">

				<h5 class="card-header mt-1">New Chapter</h5>
				<span class="${msg.type }">${msg.msg}</span>

				<form name="courseForm" action="saveChapter" method="POST"
					enctype="multipart/form-data">

					<div class="row">


						<div class="col-6 mt-3">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Upload
									Chapter List </label> <input type="file" class="form-control" name="chapter">

							</div>

						</div>
						<div class="col-6 mt-3">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Courses</label>
								<select class="form-select" name="courseId">
									<option selected="selected" disabled="disabled">Select Course</option>
									<c:forEach var="c" items="${course}">
										<option value="${c.id}">${c.courseName}</option>

									</c:forEach>

								</select>

							</div>
						</div>
					</div>


					<div class="row">

						<div class="col-6">
							<button type="submit" class="btn btn-primary">Submit</button>


						</div>
						
						<div class="col-6">
							<button type="reset" class="btn btn-info">Reset</button>


						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>