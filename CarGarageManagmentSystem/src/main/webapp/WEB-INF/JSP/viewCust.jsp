<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer List</title>
</head>
<body>
<!--     <jsp:include page="superadmindashjsp.jsp"></jsp:include>  -->
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
                <th scope="col">Total Visits</th>
                <th scope="col">Update</th>
                <th scope="col">Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="d" items="${custList}">
                <tr>
                  <!--    <th scope="row">${c.getCustomerID()}</th> -->
                   <td>${d.getCustomerID()}</td>
                    <td>${d.getName()}</td>
                    <td>${d.getAddress()}</td>
                    <td>${d.getPhone()}</td>
                    <td>${d.getEmail()}</td>
                    <td>${d.getTotalVisits()}</td>
                    <td><a href="#">Update</a></td>
                    <td><a href="#">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
