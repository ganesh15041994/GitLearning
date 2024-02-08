<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddBulkTopic</title>
</head>
<body>

	<%@ include file="./dashboard.jsp"%>

	<div class="col-9">

		<div class="row">

			<div class="container mt-3">
				<div class="col">
					<div class="card">
						<div class="card-title ml-3">
							<h5 class="card-title bs-light py-2 ml-5">Add Bulk Topic</h5>
							<span class="${msg.type }">${msg.msg}</span>
						</div>
						<div class="card-body">


							<form name="#" action="saveChapter" method="POST"
								enctype="multipart/form-data">

								<div class="row">

									<div class="col-1"></div>
									<div class="col-9 mt-3">
										<div class="mb-3">
											<label for="exampleInputEmail1" class="form-label">Upload
												Bulk Topic </label> <input type="file" class="form-control"
												name="chapter">
										</div>
									</div>



								</div>


								<div class="row">

									<div class="col-1"></div>
									<div class="col-9 mt-3">
										<div class="mb-3">
											<button type="submit" class="btn btn-primary">Submit</button>


										</div>
									</div>



								</div>
							</form>
						</div>
					</div>


				</div>

			</div>
		</div>
	</div>
</body>
</html>