<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sub Service Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Add Sub Service</h2>
        <form action="${pageContext.request.contextPath}/saveSubService" method="post">
            <div class="form-group">
                <label for="serviceID">Service ID:</label>
                <input type="number" class="form-control" id="serviceID" name="serviceID" required>
            </div>
            <div class="form-group">
                <label for="subServiceName">Sub Service Name:</label>
                <input type="text" class="form-control" id="subServiceName" name="subServiceName" required>
            </div>
            <div class="form-group">
                <label for="subServiceDescription">Sub Service Description:</label>
                <input type="text" class="form-control" id="subServiceDescription" name="subServiceDescription" required>
            </div>
            <div class="form-group">
                <label for="subServicePrice">Sub Service Price:</label>
                <input type="text" class="form-control" id="subServicePrice" name="subServicePrice" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</body>
</html>
