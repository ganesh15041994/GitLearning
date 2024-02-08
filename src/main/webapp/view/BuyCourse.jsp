<%@page import="com.git.AdminModel.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page isELIgnored="false" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Your Course</title>
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
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>


<link rel="stylesheet" href="../CSS/home.css" type="text/css">
<style type="text/css">
.offer {
	border: 2px solid black;
}

.my-select {
	width: 100%;
	height: 40px;
	padding: 2px;
	border: 2px solid black;
}

.my-select select[option]:hover {
	padding: 5px;
	background-color: gray;
}

.my-con input {
	display: inline-block;
	width: 100%;
	padding: 5px;
	border: 2px solid black;
}

form {
	padding: 5px;
}

.summary {
	background-color: #e4e8eb;
}

.my-btn {
	padding: 5px 5px 10px 10px;
	background-color: #B660CD;
	outline: #B660CD;
	color: white;
	font-weight: bold;
	cursor: pointer;
}

.my-btn:hover {
	background-color: #702963;
}

.my-btn button {
	outline: #B660CD;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('#plan').click(function() {

			let plan = $('#plan').val();
			//alert(plan);
			if (plan == 'on') {
				let price = $('#price').text();
				//alert(price);
				let h = $('#h').text();
				//alert(h)
				$('#summary').text(h);
				$('#pprice').text(price);
				$('#total').text(price);
				$('#lp').text(price);

			}
		});

	});

	$(document).ready(function() {
		//alert('hi');
		let  v = $('#plan2').val();
	
		
		if (v == 'on') {
			let price = $('#price2').text();
			//alert(price);
			let h = $('#h2').text();
			//alert(h)
			$('#summary').text(h);

			$('#pprice').text(price);
			$('#total').text(price);
			$('#lp').text(price);
		}
		
		
		
		$('#plan2').click(function() {

			let plan = $('#plan2').val();
			//alert(plan);
			
			if (plan == 'on') {
				let price = $('#price2').text();
				//alert(price);
				let h = $('#h2').text();
				//alert(h)
				$('#summary').text(h);

				$('#pprice').text(price);
				$('#total').text(price);
				$('#lp').text(price);
			}
		});

	});

	
</script>

</head>
<body>
	<nav
		class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0 mynav ">
		<a href="/"
			class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h2 class="m-0 text-warning">
				<i class="fa fa-book me-3"></i>GitLearning
			</h2>
		</a>
		<button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>

	</nav>


	<section>

		<div class="container py-5 ">
			<h2>Checkout</h2>
			<div class="row g-4">

				<div class=" col-lg-8 ">

					<div class="container">

						<div class="row mt-3 py-1 g-3">
							<h3>Personal Plan</h3>

							<div class="col-lg-1"></div>
							<div class="col-lg-5 py-3 offer ">
								<h6 class="text-center">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="plan">&nbsp;<span id="h">Monthly
										Access</span>
								</h6>
								<h5 class="text-center " id="price">&#8377;&nbsp;<fmt:formatNumber value="${(c.fees/12)+(c.fees*1/100)}" minFractionDigits="0" maxFractionDigits="0"/>
</h5>


							</div>
							<div class="col-lg-1"></div>
							<div class="col-lg-5   py-3 offer ">
								<h6 class="text-center">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="plan2" checked="checked" >&nbsp;<span id="h2">Yearly
										Access</span>

								</h6>
								<h5 class="text-center" id="price2">&#8377;&nbsp;${c.fees}</h5>


							</div>


						</div>

					</div>

					<div class="row g-4">

						<div class=" col-lg-8 ">

							<div class="container">

								<div class="row mt-3 py-1 g-3">
									<div class="col-lg-1"></div>

									<div class="col-lg-11 py-3  ">


										<ul class="list-group list-group-flush">
											<li class="list-group-item"><i
												class="fa-solid fa-octagon-check"></i>A second item</li>
											<li class="list-group-item">A third item</li>
											<li class="list-group-item">A fourth item</li>
										</ul>
									</div>

								</div>
							</div>
						</div>
					</div>


					<div class="row mt-3 py-1 g-1">
						<h3>Billing Address</h3>

						<div class="col-lg-1"></div>
						<div class="col-lg-5 py-3  ">
							<label for="exampleInputEmail1" class="form-label">Country</label>

							<select class="my-select" aria-label="Default select example">
								<option selected>Select Country</option>
								<option value="1">India</option>

							</select>


						</div>
						<div class="col-lg-1"></div>
						<div class="col-lg-5   py-3 ">
							<label for="exampleInputEmail1" class="form-label">State
								/ Union Territory </label> <select class="my-select"
								aria-label="Default select example">
								<option selected>State / Union Territory</option>
								<option value="1">India</option>

							</select>



						</div>


					</div>


					<div class="row mt-3 py-1 g-2">
						<h3>Payment Method</h3>

						<div class="col-lg-1"></div>
						<div class="col-lg-12 py-3  ">

							<form>

								<div class="row py-1 g-2  bg-secondary">

									<div class="col-lg-4  ">
										<h5>New Payment Card</h5>
									</div>
									<div class="col-lg-4"></div>
									<div class="col-lg-4">Visa Master Card Etc</div>

								</div>


								<div class="row mt-2  g-2 ">
									<div class="mb-3 ">
										<div class="col-lg-12  my-con">
											<label class="form-label">Name On Card </label> <input
												type="text" placeholder="">
										</div>
									</div>

								</div>

								<div class="row  g-2 ">
									<div class="mb-2">
										<div class="col-lg-12  my-con">
											<label class="form-label">Card No </label> <input type="text"
												placeholder="">
										</div>
									</div>

								</div>

								<div class="row g-2">

									<div class="col-lg-6   my-con">
										<label class="form-label">Expiration Date </label> <input
											type="text">
									</div>

									<div class="col-lg-6   my-con">
										<label class="form-label">Security Code </label> <input
											type="text">
									</div>

								</div>


								<div class="row g-2 mt-2">

									<div class="col-lg-12">

										<div class="form-check ">
											<input class="form-check-input" type="checkbox" value=""
												id="flexCheckDefault"> <label
												class="form-check-label" for="flexCheckDefault">
												Save card as per RBI Guidelines for future payments </label>
										</div>

									</div>



								</div>



							</form>

						</div>



					</div>



				</div>


				<div class=" col-lg-4 summary">
					<div class="container mt-5">
						<div class="row">
							<div class="col-lg-12">
								<h3>Summary</h3>

								<div class="row mt-2 g-1">
									<div class="col-lg-5" id="summary">Yearly Plan</div>
									<div class="col-lg-1"></div>
									<div class="col-lg-5" id="pprice">&#8377;&nbsp; </div>


								</div>


								<div class="row mt-2 g-1">
									<div class="col-lg-5" id="summary">Total</div>
									<div class="col-lg-1"></div>
									<div class="col-lg-5" id="total">&#8377;&nbsp;</div>


								</div>
								
								
								<form action="${pageContext.request.contextPath }/user/saveBuyedCourse" method="POST">
							
							
							<input type="hidden" name ="courseId" value="${c.id }" > <input type="hidden" name="userId" value="${user.uid }">
									<div class="row mt-2 g-1">
									<p style="text-align: justify; font-size: 13px;">Cancel
										anytime by visiting the Subscriptions page in your account. By
										clicking “Start subscription” you agree to our Terms and are
										enrolling in automatic payments of the subscription fee of
										<span id="lp">₹829/month</span> (plus applicable transaction fees) that will start
										today and continue until you cancel. No refunds or credits for
										partial subscription periods unless required by law.</p>

								</div>

								<div class="row mt-2 g-1">

										<button type="submit" class="my-btn"
											style="outline-color: none">Start Subscription</button>

									</div>
								</form>


							</div>


						</div>

					</div>


				</div>
			</div>

		</div>


	</section>
	<%
	session = request.getSession();
	Course course = (Course) session.getAttribute("course");
	%>

	<%
	if (course != null) {
		session = request.getSession();
		session.getAttribute("course");
		session.invalidate();
	}
	%>

</body>
</html>