<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="./userNavbar.jsp"%>

	<div class="container-fluid  container-expand-lg">


		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8 mt-5">
				<div class="card">

					<div class="card-header">
						<h5>Register Here</h5>
						<h3 class="${msg.type }">${msg.msg }</h3>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/saveUser"
							method="POST">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Your
									Name </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Your Name Here" name="name">

							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Your
									Email </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Your Email " name="email">

							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Mobile
									No: </label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter Your Contact No" name="contact_no">

							</div>

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Password
								</label> <input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Your Password "
									name="password">
							</div>


							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>

			</div>

		</div>

	</div>

</body>
</html>