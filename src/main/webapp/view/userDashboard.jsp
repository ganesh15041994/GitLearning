<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Dashboard</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

<style>
body {
	background-color: #f4f4f4;
}

.navbar {
	background-color: #343a40;
	justify-content: space-between;
}

.navbar-brand, .navbar-nav .nav-link {
	color: #fff;
}

.container-fluid {
	padding-top: 20px;
}

.card {
	margin-bottom: 20px;
}

.course-navbar {
	background-color: #e9ecef;
}

.course-navbar a {
	color: #000;
}

.search-box {
	margin-bottom: 20px;
	width: 100%; /* Set the width to 100% */
	border-radius: 25px;
}

.my-courses-box {
	display: none;
	top: 56px;
	right: 0;
	width: 100%;
	background-color: #e9ecef;
	padding: 10px;
	z-index: 1000;
	text-align: center;
}

.my-profile {
    display: none;
    position: absolute;
    top: 80px;
    right: 30px;
    width: 250px;
    background-color: #fff;
   /*  padding: 10px; */
    z-index: 1000;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.my-profile .card {
    border: none;
}

.my-profile .card-header {
   
    background-color: white;
 
}

.my-profile .card-body {
    display: flex;
    flex-direction: column;
}

.my-profile .profile-link {
    display: block;
    padding: 10px;
    margin-bottom: 8px;
    text-decoration: none;
    color: #333;
   
   
    transition: background-color 0.3s ease;
}


.card-body .line {
	width:100%;
    border-top: 1px solid #000; /* Adjust the color and thickness as needed */
  /*   margin: 10px 0; */ /* Adjust the margin as needed */
}
.my-profile .profile-link:hover {
    color: purple;
    font-weight: bold;
}

.navbar-nav .nav-link {
	margin-right: 15px; /* Added margin between the navigation items */
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark">
		<a class="navbar-brand" href="#">GitLearning</a>
		<div class="d-flex align-items-center">
			<!-- Added this container for alignment -->
			<!-- <form class="form-inline ml-auto">
				<input class="form-control mr-2" type="text" placeholder="Search"
					aria-label="Search" style="width: 300px;">
				<button class="btn btn-outline-light" type="submit">Search</button>
			</form> -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Courses</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fas fa-heart"></i> </a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fas fa-shopping-cart"></i> </a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i
						class="fas fa-bell"></i><SUP>1</SUP> </a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					id="profileIcon"><i class="fas fa-user"></i> </a></li>
				<li class="nav-item"><a class="nav-link" href="#">Logout</a></li>
			</ul>
		</div>
	</nav>

	<!-- My Courses Box (hidden by default) -->
	<div class="my-courses-box">
		<a href="#">My Course 1</a> <a href="#">My Course 2</a> <a href="#">My
			Course 3</a>
		<!-- Add more courses as needed -->
	</div>


	<!-- My Courses Box (hidden by default) -->
	<div class="my-profile">
    <div class="card">
        <div class="card-header">
            <h3>${user.name}</h3>
        </div>

        <div class="card-body">
            <a href="${pageContext.request.contextPath }/user/myLearning" class="profile-link">My Learning</a>
            <a href="#" class="profile-link">My Cart</a>
            <a href="#" class="profile-link">WishList</a>
          	<div class="line"></div>
            <a href="#" class="profile-link">Notification</a>
             <a href="#" class="profile-link">Message</a>
             <div class="line"></div>
             
             <a href="#" class="profile-link">Account Setting </a>
              <a href="#" class="profile-link">Purchase History </a>
               <a href="#" class="profile-link">Payment Method </a>
               <a href="#" class="profile-link">My Subscription</a>
                            <div class="line"></div>
                <a href="#" class="profile-link">Logout</a>
               
              
             
             
            
            <!-- Add more courses as needed -->
        </div>
    </div>
</div>

		<!-- Add more courses as needed -->




	<div class="container-fluid"></div>

	<!-- Bootstrap JS and dependencies (jQuery) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			// Toggle visibility of My Courses Box
			$(".navbar-nav .nav-link:contains('Courses')").hover(function() {
				$(".my-courses-box").toggle();
			});
		});

		/* $(document).ready(function() {
			// Toggle visibility of My Profile Box on profile icon hover
			$("#profileIcon").hover(function() {

				$(".my-profile").toggle();
			}, function() {
				$(".my-profile").fadeOut(200);
			});
		}); */
		
		$(document).ready(function() {
		    // Variables to keep track of hover state
		    var isHoveredIcon = false;
		    var isHoveredProfile = false;

		    // Toggle visibility of My Profile Box on profile icon hover
		    $("#profileIcon").hover(
		        function() {
		            $(".my-profile").toggle();
		            isHoveredIcon = true;
		        },
		        function() {
		            isHoveredIcon = false;
		            setTimeout(function() {
		                if (!isHoveredProfile) {
		                    $(".my-profile").hide();
		                }
		            }, 200);
		        }
		    );

		    // Hide the profile box when the mouse leaves the profile content
		    $(".my-profile").hover(
		        function() {
		            isHoveredProfile = true;
		        },
		        function() {
		            isHoveredProfile = false;
		            setTimeout(function() {
		                if (!isHoveredIcon) {
		                    $(".my-profile").hide();
		                }
		            }, 200);
		        }
		    );
		});

	</script>
</body>
</html>
