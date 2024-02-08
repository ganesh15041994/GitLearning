<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Video</title>

<script type="text/javascript">

let updateVideo = ()=>{
	let result = confirm('Are You Want To Update Video');
	return result;
}

</script>
</head>
<body>
	<%@ include file="./dashboard.jsp"%>



	<div class="col-9  ">

		<div class="container  ">
			<div class="card  p-2">

				<h5 class="card-header mb-2">Video Details</h5>
				<h6 class="${msg.type }">${msg.msg}</h6>

				<form action="${pageContext.request.contextPath}/finalVideoUpdate"
					method="get" onsubmit="return updateVideo()">

					<div class="row">

						<div class="col-6">
							<div class="mb-3">
								<!-- <label for="exampleInputEmail1" class="form-label">Topic
									Id </label> -->
								<input type="hidden" class="form-control"
									value="${video.topic.topicId }" name="topic.topicId">
							</div>
						</div>

						<div class="col-6">
							<div class="mb-3">
								<!-- <label for="exampleInputEmail1" class="form-label">Video
									Id </label> -->
								<input type="hidden" class="form-control"
									value="${video.videoId }" name="videoId">
							</div>
						</div>
					</div>
					<div class="row">

						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Video
									Title </label> <input type="text" class="form-control"
									value="${video.title}" name="title">
							</div>
						</div>


						<div class="col-6">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Topic
								</label> <input type="text" class="form-control"
									value="${video.topic.topicName}" name="topic.topicName"
									disabled="disabled">
							</div>
						</div>
					</div>



					<div class="row"></div>


					<div class="row">
						<div class="col">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Video
									Url </label> <input type="text" class="form-control"
									value="${video.url}" name="url">
							</div>
						</div>
					</div>


					<div class="row">

						<div class="col">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Description
								</label>
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3" name="description">${video.description}</textarea>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-6">
							<div class="mb-3">
								<button type="submit" class="btn btn-primary"
									style="--bs-btn-padding-y: .70rem; --bs-btn-padding-x: 5rem; --bs-btn-font-size: 1rem;">
									Submit</button>
							</div>
						</div>

					</div>
				</form>
			</div>
		</div>

	</div>


</body>
</html>