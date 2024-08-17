<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="Car Repair, Our Services, Team, Customer Feedback, Expertise">
    <meta name="description" content="Car repair and service business. Learn more about our services, expertise, and customer feedback.">
    <title>Home - Car Repair Service</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Meta Info -->
    <meta name="theme-color" content="#478ac9">
</head>
<body>
    <!-- Header -->
    <header class="bg-primary text-white py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <a href="${pageContext.request.contextPath}/index.jsp" class="navbar-brand text-white">
                <img src="https://static.vecteezy.com/system/resources/thumbnails/027/385/442/small/car-stainless-logo-png.png" alt="Car Repair Logo" width="80">
                Digital Garage
            </a>
            <nav class="navbar navbar-expand-lg navbar-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/Team.jsp">Team</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/Landing.jsp">Landing</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/About.jsp">About</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/login">Login</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container mt-5">
        <div class="jumbotron text-center">
            <h1 class="display-4">Welcome to Our Car Repair Service</h1>
            <p class="lead">We provide top-notch repair services with a focus on customer satisfaction.</p>
            <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/About.jsp" role="button">Learn more</a>
        </div>
    </div>
    
    <section class="position-relative py-5 bg-light" id="carousel_8fae">
  <div class="container">
    <!-- Decorative Shape Background -->
    <div class="position-absolute w-100 h-100 bg-secondary" style="top: 0; left: 0; opacity: 0.2; z-index: -1;"></div>

    <!-- Main Content Row -->
    <div class="row align-items-center">
      <!-- Image Column -->
      <div class="col-lg-6 mb-4 mb-lg-0 text-center text-lg-start">
        <img src="https://via.placeholder.com/600x400.png?text=Car+Repair" class="img-fluid rounded shadow" alt="Car Repair">
      </div>

      <!-- Text Content Column -->
      <div class="col-lg-6">
        <div class="bg-white p-4 rounded shadow">
          <h2 class="mb-3 text-lg-start text-center">Car Repair</h2>
          <p class="text-lg-start text-center mb-4">
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.
          </p>
          <a href="#" class="btn btn-primary rounded-pill d-lg-inline-block d-block mx-lg-0 mx-auto">
            Need a car inspection?
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
    

<section class="py-5 text-center bg-light" id="services">
    <div class="container">
        <h2 class="mb-4">Our Services Include</h2>
        <div class="row">
            <!-- Service Item 1 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body text-left">
                        <h3 class="card-title">Auto Repair</h3>
                        <p class="card-text">Sample text. Click to select the Text Element.</p>
                        <img src="images/2822686-d51604f5.png" alt="Auto Repair" class="img-fluid" width="50">
                    </div>
                </div>
            </div>

            <!-- Service Item 2 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body text-left">
                        <h3 class="card-title">Auto Repair</h3>
                        <p class="card-text">Sample text. Click to select the Text Element.</p>
                        <img src="images/1743705-6a3eb0b6.png" alt="Auto Repair" class="img-fluid" width="50">
                    </div>
                </div>
            </div>

            <!-- Service Item 3 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body text-left">
                        <h3 class="card-title">Auto Glass Repair</h3>
                        <p class="card-text">Sample text. Click to select the Text Element.</p>
                        <img src="images/16096073-d0fe1288.png" alt="Auto Glass Repair" class="img-fluid" width="50">
                    </div>
                </div>
            </div>

            <!-- Service Item 4 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body text-left">
                        <h3 class="card-title">Oil Change</h3>
                        <p class="card-text">Sample text. Click to select the Text Element.</p>
                        <img src="images/5442963-a212bfbf.png" alt="Oil Change" class="img-fluid" width="50">
                    </div>
                </div>
            </div>

            <!-- Service Item 5 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body text-left">
                        <h3 class="card-title">General Repair</h3>
                        <p class="card-text">Sample text. Click to select the Text Element.</p>
                        <img src="jsp/images/942147-dd80c966.png" alt="General Repair" class="card-img-top" width="50">
                    </div>
                </div>
            </div>

            <!-- Service Item 6 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <div class="card-body text-left">
                        <h3 class="card-title">Auto Body Work</h3>
                        <p class="card-text">Sample text. Click to select the Text Element.</p>
                        <img src="images/12050562-ea0861df.png" alt="Auto Body Work" class="img-fluid" width="50">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3 mt-auto">
        <div class="container">
            <p>&copy; 2024 Car Repair Service. All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
