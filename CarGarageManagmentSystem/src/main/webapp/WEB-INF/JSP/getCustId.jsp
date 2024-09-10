<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer Vehicle Report</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	 <jsp:include page="adminhead.jsp"></jsp:include>
 <!-- Input Form for Customer ID -->
        <form action="customerVehicleReport" method="get" class="form-inline justify-content-center mb-4 mt-4">
            <label for="customerId" class="mr-2">Enter Customer ID:</label>
            <input type="number" id="customerId" name="customerId" class="form-control mr-2" required>
            <button type="submit" class="btn btn-primary">Get Report</button>
        </form>
        
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>