<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="Car Repair, Our Services, Team, Customer Feedback, Expertise">
    <meta name="description" content="Car repair and service business. Learn more about our services, expertise, and customer feedback.">
    <title>Home - Car Repair Service</title>
     <style>
        .map-container {
            width: 80%;
            height: 400px;
            margin: 0 auto; /* Center the map */
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .map-container iframe {
            width: 100%;
            height: 100%;
            border: 0;
        }

        .page-container {
            padding: 60px 0;
          
        }
    </style>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Meta Info -->
    <meta name="theme-color" content="#478ac9">
</head>
<body>
<jsp:include page="indexhead.jsp"></jsp:include>

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
        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="img-fluid rounded shadow" alt="Car Repair" style="max-width: 100%; height: auto;">
    </div>

    <!-- Text Content Column -->
    <div class="col-lg-6">
        <div class="bg-white p-4 rounded shadow-lg">
            <h2 class="mb-3 text-lg-start text-center">Car Repair</h2>
            <p class="text-lg-start text-center mb-4">
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.
            </p>
            <div class="text-lg-start text-center">
                <a href="bookService" class="btn btn-primary rounded-pill d-lg-inline-block d-block">
                    Need a car inspection?
                </a>
            </div>
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
                <div class="card h-100 shadow-sm">
                    <img src="${pageContext.request.contextPath}/resources/images/2822686-d51604f5.png" alt="Auto Repair" class="card-img-top img-fluid mx-auto" style="width: 150px; height: auto;">
                    <div class="card-body">
                        <h3 class="card-title">Auto Repair</h3>
                        <p class="card-text">We provide expert auto repair services with fast turnaround times.</p>
                    </div>
                </div>
            </div>

            <!-- Service Item 2 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src="${pageContext.request.contextPath}/resources/images/16096073-d0fe1288.png" alt="Auto Glass Repair" class="card-img-top img-fluid mx-auto" style="width: 150px; height: auto;">
                    <div class="card-body">
                        <h3 class="card-title">Auto Glass Repair</h3>
                        <p class="card-text">Fast and reliable auto glass repair services.</p>
                    </div>
                </div>
            </div>

            <!-- Service Item 3 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src="${pageContext.request.contextPath}/resources/images/16096073-d0fe1288.png" alt="Auto Glass Repair" class="card-img-top img-fluid mx-auto" style="width: 150px; height: auto;">
                    <div class="card-body">
                        <h3 class="card-title">Auto Glass Repair</h3>
                        <p class="card-text">Reliable and high-quality auto glass repair services.</p>
                    </div>
                </div>
            </div>

            <!-- Service Item 4 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src="${pageContext.request.contextPath}/resources/images/5442963-a212bfbf.png" alt="Oil Change" class="card-img-top img-fluid mx-auto" style="width: 150px; height: auto;">
                    <div class="card-body">
                        <h3 class="card-title">Oil Change</h3>
                        <p class="card-text">Regular oil changes to keep your vehicle running smoothly.</p>
                    </div>
                </div>
            </div>

            <!-- Service Item 5 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src="${pageContext.request.contextPath}/resources/images/942147-dd80c966.png" alt="General Repair" class="card-img-top img-fluid mx-auto" style="width: 150px; height: auto;">
                    <div class="card-body">
                        <h3 class="card-title">General Repair</h3>
                        <p class="card-text">Comprehensive general repair services for all car models.</p>
                    </div>
                </div>
            </div>

            <!-- Service Item 6 -->
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src="${pageContext.request.contextPath}/resources/images/12050562-ea0861df.png" alt="Auto Body Work" class="card-img-top img-fluid mx-auto" style="width: 150px; height: auto;">
                    <div class="card-body">
                        <h3 class="card-title">Auto Body Work</h3>
                        <p class="card-text">We offer expert auto body repair services to restore your vehicle's look.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container-fluid page-container">
<h2 class="mb-4 text-center">Visit Us</h2>

        <div class="map-container">
        
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30018.673432591222!2d75.37418177431643!3d19.868106100000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdba3753ebdd87f%3A0x8dd8c383e189bc22!2sshree%20laxmi%20auto!5e0!3m2!1sen!2sin!4v1725736489957!5m2!1sen!2sin" 
                    allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
<article class="contact container my-5" data-page="contact">

 

  <!-- Contact Form Section -->
  <section class="contact-form">
    <h2 class="h3 form-title text-center mb-4">Contact Form</h2>

    <form class="form" data-form action="https://api.web3forms.com/submit" method="POST">
      <input type="hidden" name="access_key" value="69ad5cad-959a-4c94-a26c-8318d2bcd345">

      <!-- Input fields -->
      <div class="row mb-3">
        <div class="col-md-6 mb-3">
          <input type="text" name="fullname" class="form-control" placeholder="Full name" required data-form-input>
        </div>
        <div class="col-md-6 mb-3">
          <input type="email" name="email" class="form-control" placeholder="Email address" required data-form-input>
        </div>
      </div>

      <!-- Message field -->
      <div class="mb-3">
        <textarea name="message" class="form-control" rows="5" placeholder="Your Message" required data-form-input></textarea>
      </div>

      <!-- Submit button -->
      <div class="text-center">
        <button class="btn btn-primary" type="submit" data-form-btn>
          <i class="fas fa-paper-plane"></i> Send Message
        </button>
      </div>

    </form>
  </section>

</article>


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
