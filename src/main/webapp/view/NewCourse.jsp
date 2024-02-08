<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./dashboard.jsp"%>
<%@ page isELIgnored="false"%>



<div class="col-lg-9 col-md-8 col-12 content mt-5">
	<div class="container">

		<div class="card p-2">

			<h5 class="card-header mt-1">New Course</h5>
			<span class="${msg.type }">${msg.msg}</span>

			<form name="courseForm" action="saveCourse" method="POST"
				enctype="multipart/form-data">




				<div class="row">


					<div class="col-6 mt-3">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Course
								Name</label> <input type="text" class="form-control" name="courseName">

						</div>

					</div>
					<div class="col-6 mt-3">

						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Course
								Fees</label> <input type="text" class="form-control" name="fees">
						</div>
					</div>
				</div>




				<div class="row">


					<div class="col-6">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">No Of
								Hours</label> <input type="text" class="form-control" name="noOfHours">
						</div>

					</div>
					<div class="col-6">

						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Pre
								Requisite</label> <input type="text" class="form-control"
								name="prerequisites">
						</div>

					</div>
				</div>





				<div class="row">


					<div class="col-6">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Upload
								Banner</label> <input type="file" class="form-control" name="banner">
						</div>

					</div>
					<div class="col-6">

						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Course
								Type</label> <input type="text" class="form-control" name="type">
						</div>

					</div>
				</div>

				<div class="mb-3">
					<label for="exampleFormControlTextarea1" class="form-label">Course
						Objective</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						rows="3" name="objectives"></textarea>
				</div>

				<div class="row">
					<div class="col-6">
						<button type="submit" class="btn btn-primary ">Submit</button>

					</div>

					<div class="col-6">
						<button type="button" class="btn btn-info ">Reset</button>
					</div>
				</div>

			</form>

		</div>
	</div>
</div>
