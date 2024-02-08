<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GitLearning Admin Login</title>
<!-- Bootstrap Links -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
</head>
<body>

	<div class="container">

		<div class="row">

			<div class="col-3"></div>
			<div class="col-6">
				<div class="card mt-3">

					<div class="card-body">

						<h5 class="card-title text-center mt-2 mb-2 text-warning ">GitLearning
							Admin Login</h5>
						<form name="adminFrm" action="dashboard"  method="POST">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">
									Username</label> <input type="text" class="form-control"
									name ="username">

							</div>
							<div class="mb-5">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="text" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>

							<div class="container text-center mt-2">
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="Reset" class="btn btn-primary">Submit</button>
							</div>

						</form>

					</div>
				</div>


			</div>

		</div>


	</div>-->

</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Dashboard</title>
    
    <!-- Bootstrap Links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    
    <!-- Google Fonts Links -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,600;1,400&family=Ubuntu:wght@700&display=swap">
    
    <!-- Font Awesome Links -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="../CSS/home.css" type="text/css">
    
    <!-- Custom Styles -->
    <style>
        body {
            padding: 0;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            color: #ffc107;
            font-size: 1.5rem;
        }

        .navbar-toggler {
            border: none;
        }

        .nav-link {
            color: #333;
        }

        .nav-link:hover {
            color: #ffc107;
        }

        .sidebar {
            background-color: #ffffff;
            height: 150vh;
            padding-top: 56px; /* Adjusted for fixed navbar */
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar li {
            cursor: pointer;
            padding: 10px;
            transition: background-color 0.3s ease;
        }

        .sidebar li:hover {
            background-color: #f1f1f1;
        }

        .content {
            padding: 20px;
        }
        .dropdown .submenu {
            display: none;
            padding-left: 20px;
        }

        .dropdown:hover .submenu {
            display: block;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top">
        <div class="container-fluid">
            <a href="${pageContext.request.contextPath}/" class="navbar-brand">
                <i class="fa fa-book me-2"></i>GitLearning
            </a>
            <div class="d-flex">
                <span class="me-3">Logout</span>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </nav>

    <!-- Sidebar and Content -->
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-lg-3 col-md-4 col-12 sidebar">
                <ul class="dropdown">
                    <!-- Add your menu items here -->
                    <li>Course
                        <ul class="submenu">
                            <li><a href="${pageContext.request.contextPath }/admin/newCourse">New Course</a></li>
                            <li><a href="${pageContext.request.contextPath }/admin/viewAllCourse">View Course</a></li>
                        </ul>
                    </li>

                    <!-- Add more menu items as needed -->
                </ul>
                
                 <ul class="dropdown">
                    <!-- Add your menu items here -->
                    <li>Course
                        <ul class="submenu">
                            <li><a href="${pageContext.request.contextPath }/admin/newCourse">New Course</a></li>
                            <li><a href="${pageContext.request.contextPath }/admin/viewAllCourse">View Course</a></li>
                        </ul>
                    </li>

                    <!-- Add more menu items as needed -->
                </ul>
                <ul class="dropdown">
				<li>Chapter
					<ul class="submenu">
						<li><a href="${pageContext.request.contextPath}/admin/newChapter">New
								Chapter</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/viewChapter">View
								Chapter</a></li>
					</ul>

				</li>


			</ul>


			<ul class="dropdown">
				<li>Topic
					<ul class="submenu">
						<li><a href="${pageContext.request.contextPath}/admin/newTopic">New
								Topic</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/viewAllTopics">View
								Topics</a></li>
					</ul>

				</li>
			</ul>

			<ul class="dropdown">
				<li>Video
					<ul class="submenu">
						<li><a href="${pageContext.request.contextPath}//admin/newVideo">New
								Video</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/viewVideos">View
								Videos</a></li>
					</ul>

				</li>


			</ul>


			<ul class="dropdown">
				<li>Assignment
					<ul class="submenu">
						<li><a
							href="${pageContext.request.contextPath}/admin/newAssignment">New
								Assignment</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/viewAssignment">View
								Assignment</a></li>
					</ul>

				</li>


			</ul>

			<ul class="dropdown">
				<li>Interview Question
					<ul class="submenu">
						<li><a
							href="${pageContext.request.contextPath}/admin/newInterviewQuestion">New
								Interview Question</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/viewInterviewQuestion">View
								Interview Question</a></li>
					</ul>
				</li>

			</ul>

			<ul class="dropdown">
				<li>Practice Question
					<ul class="submenu">
						<li><a
							href="${pageContext.request.contextPath}/admin/newPracticeTest">New
								Practice Question</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/viewPracticeTestQuestion">View
								Practice Question</a></li>
					</ul>

				</li>


			</ul>

			<ul class="dropdown">
				<li>Faculty
					<ul class="submenu">
						<li><a href="${pageContext.request.contextPath}/admin/newFaculty">New
								Faculty Profile</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/viewFacultyProfile">View
								Faculty Profile</a></li>
					</ul>

				</li>


			</ul>


			<ul class="dropdown">
				<li>Blog
					<ul class="submenu">
						<li><a href="#">New Blog Question</a></li>
					</ul>

				</li>


			</ul>

			<ul class="dropdown">
				<li>Report
					<ul class="submenu">
						<li><a href="#">New Faculty Profile</a></li>
						<li><a href="#">View Faculty Profile</a></li>
					</ul>

				</li>


			</ul>

                
            </div>

            

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
