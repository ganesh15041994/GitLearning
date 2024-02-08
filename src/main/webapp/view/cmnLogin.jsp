<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<!-- Google Fonts Links -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,600;1,400&family=Ubuntu:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,600;1,400&family=Ubuntu:wght@500&display=swap"
	rel="stylesheet">


<!-- Font Awesome Links -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Manual CSS -->

<link rel="stylesheet" href="../CSS/home.css" type="text/css">
<style type="text/css">
</style>

</head>
<body>
<%@ include file="./cmnNavbar.jsp" %>

	<section>

		<div class="container">
			<div class="row mt-5">
				<div class="col-3"></div>

				<div class="col-6 ">
					<div class="card">
						<div class="card-header">
							<h5 class="card-header">Login Here</h5>
							<h3 class="${msg.type}">${msg.msg}</h3>
						</div>

						<div class="card-body p-5">
							<form
								action="${pageContext.request.contextPath }/userLogin"
								method="POST">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">User
										Name </label> <input type="text" class="form-control" name="username">

								</div>


								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Password
									</label> <input type="text" class="form-control" name="password">

								</div>

								<div class="mb-3">

									<span>Not A Member ? </span> <a
										href="${pageContext.request.contextPath }/userRegistration">Register
										Here</a>

								</div>

								<div class="mb-3">

									<button type="submit"
										class="btn btn-outline-success text-center ">&nbsp;Log
										In&nbsp;</button>

								</div>
							</form>

						</div>

					</div>

				</div>
			</div>

		</div>

	</section>

</body>
</html>