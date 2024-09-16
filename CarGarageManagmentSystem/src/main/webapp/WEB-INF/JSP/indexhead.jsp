<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="Car Repair, Customer Dashboard, Servicing Details, Account Management">
    <meta name="description" content="Customer dashboard for managing your car repair services and viewing servicing details.">
    <title>Customer Dashboard - Car Repair Service</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <meta name="theme-color" content="#478ac9">
</head>
<body class="bg-light">
    <header class="bg-dark text-white py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <a href="${pageContext.request.contextPath}/afterLogin" class="d-flex align-items-center text-white">
                <img src="https://static.vecteezy.com/system/resources/thumbnails/027/385/442/small/car-stainless-logo-png.png" alt="Car Repair Logo" width="60" class="mr-2">
                <span class="h5 mb-0">Digital Garage</span>
            </a>
            <span>Welcome, ${cust_name}!</span>
            <nav class="d-flex">
          
                <a href="${pageContext.request.contextPath}/vsDetails" class="nav-link text-white">Servicing Details</a>
                <a href="${pageContext.request.contextPath}/viewVehicle" class="nav-link text-white">My Vehicles</a>
                <a href="${pageContext.request.contextPath}/account" class="nav-link text-white">Account</a>
                <a href="getBill" class="nav-link text-white">View Bill</a>
                 <a href="${pageContext.request.contextPath}/getServicingStatus" class="nav-link text-white"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
  <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2m.995-14.901a1 1 0 1 0-1.99 0A5 5 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901"/>
</svg></a>
                <a href="${pageContext.request.contextPath}/logout" class="nav-link text-white">Logout</a>
               
            </nav>
        </div>
    </header>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
