<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video Detail</title>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>



	<div class="col-9  ">

		<div class="container  ">
			<div class="card  p-2">

				<h5 class="card-header mb-2">Video Details</h5>
				<h6 class="${msg.type}">${msg.msg}</h6>

				<div class="row">
					<div class="col-12  d-flex justify-content-end">
						<div class="mb-3">
							<a href="${pageContext.request.contextPath}/updateVideo/${video.videoId}" class="btn btn-outline-success"
								style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 3rem; --bs-btn-font-size: 1rem;">
								Update</a>
						</div>
						<div class="mb-3 mx-3">
							<a href="${pageContext.request.contextPath}/deleteVideo/${video.videoId}" class="btn btn-outline-danger"
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
								<label for="exampleInputEmail1" class="form-label">Video
									Id </label> <input type="text" class="form-control"
									value="${video.videoId }" disabled="disabled">
							</div>
						</div>


						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Video
									Title </label> <input type="text" class="form-control"
									value="${video.title}" disabled="disabled">
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Video Url
								</label> <input type="text" class="form-control" value="${video.url}"
									disabled="disabled">
							</div>
						</div>
					</div>


					<div class="row">

						<div class="col">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Description
									 </label> <textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3" name="description">${video.description}</textarea>
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