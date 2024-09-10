<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer Vehicle Report</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	 <jsp:include page="adminhead.jsp"></jsp:include>
    <div class="container mt-5">
        <h2 class="text-center">Customer Vehicle Report</h2>
        
        <!-- Input Form for Customer ID -->
        <form action="customerVehicleReport" method="get" class="form-inline justify-content-center mb-4">
            <label for="customerId" class="mr-2">Enter Customer ID:</label>
            <input type="number" id="customerId" name="customerId" class="form-control mr-2" required>
            <button type="submit" class="btn btn-primary">Get Report</button>
        </form>

        <!-- Display the report after submission -->
        <c:if test="${not empty reportList}">
            <table class="table table-striped table-bordered mt-3">
                <thead>
                    <tr>
                        <th>Customer Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Vehicle Number</th>
                        <th>Model</th>
                        <th>Make</th>
                        <th>Service</th>
                        <th>Sub-Service</th>
                        <th>Total Amount</th>
                        <th>Discount Applied</th>
                        <th>Final Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="report" items="${reportList}">
                        <tr>
                            <td>${report.customerName}</td>
                            <td>${report.customerPhone}</td>
                            <td>${report.customerEmail}</td>
                            <td>${report.vehicleNumber}</td>
                            <td>${report.vehicleModel}</td>
                            <td>${report.vehicleMake}</td>
                            <td>${report.serviceName} (${report.serviceDescription})</td>
                            <td>${report.subServiceName} (${report.subServiceDescription})</td>
                            <td>${report.totalAmount}</td>
                            <td>${report.discountApplied}</td>
                            <td>${report.finalAmount}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <c:if test="${empty reportList}">
            <p class="text-center text-danger">No report found for the entered Customer ID.</p>
        </c:if>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
