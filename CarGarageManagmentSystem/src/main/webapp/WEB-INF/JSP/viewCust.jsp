<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer List</title>
</head>
<body>
<%@ include file="superadmindashjsp.jsp" %>
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
           <a class="link-primary" href="viewCustomer">Refresh</a>
           <input type="text" class="form-control" placeholder="Search....">
             <table class="table table-striped">
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
                    <td><a href="deleteCustById?custid=${d.getCustomerID()}">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
            </div>
</body>
</html>
