<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
    <style>
      body {
            font-family: Arial, sans-serif;
            background-image: url('B.jpg'); 
            background-size: cover; 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
        }

        h1 {
            text-align: center;
        }

        .centered {
            text-align: center;
        }

        .booking-container {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            margin: 20px;
        }

        .booking-details {
            margin: 10px 0;
        }

        .btn-container {
            text-align: center;
        }

        button {
            background-color:#000000;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
        }
        .btn1{
        background-color:#ff0000;
  
        }
        .btn2{
        background-color:#0000FF;
        }

        button:hover {
            background-color: #0056b3;
        }
       
    </style>
    <script>
        function confirmDelete() {
            return confirm("Are you sure you want to delete this booking?");
        }

        function toggleDetails(toggleBtn) {
            var detailsDiv = toggleBtn.nextElementSibling;
            detailsDiv.style.display = (detailsDiv.style.display === 'none' || detailsDiv.style.display === '') ? 'block' : 'none';
        }
    </script>
</head>
<body>
<h1>Your Reservations</h1>

<c:forEach var="cus" items="${Booklist}">

    <c:set var="tour_id" value="${cus.tour_id}"/>
    <c:set var="name" value="${cus.name}"/>
    <c:set var="email" value="${cus.email}"/>
    <c:set var="phone" value="${cus.phone}"/>
    <c:set var="num_person" value="${cus.num_person}"/>
    <c:set var="start_date" value="${cus.start_date}"/>
    <c:set var="end_date" value="${cus.end_date}"/>

    <div class="centered">
        <h2>Booking Confirmation</h2>
        <div class="booking-container">
        
            <button onclick="toggleDetails(this)" class = "btn2">Reservation Details</button>
            
            <div class="booking-details" style="display: none;">
                <p><strong>Tour ID:</strong> ${tour_id}</p>
                <p><strong>Name:</strong> ${name}</p>
                <p><strong>Email:</strong> ${email}</p>
                <p><strong>Phone:</strong> ${phone}</p>
                <p><strong>Number of Persons:</strong> ${num_person}</p>
                <p><strong>Start Date:</strong> ${start_date}</p>
                <p><strong>End Date:</strong> ${end_date}</p>
            </div>
        </div>
    </div>

    <c:url value="updatecustomer.jsp" var="cusupdate">
        <c:param name="tour_id" value="${tour_id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="email" value="${email}"/>
        <c:param name="phone" value="${phone}"/>
        <c:param name="num_person" value="${num_person}"/>
        <c:param name="start_date" value="${start_date}"/>
        <c:param name="end_date" value="${end_date}"/>
    </c:url>

    <div class="btn-container">
        <a href="${cusupdate}">
            <button name="update">Update My Data</button>
        </a>
        <c:url value="deletecustomer.jsp" var="cusdelete">
            <c:param name="tour_id" value="${tour_id}"/>
            <c:param name="name" value="${name}"/>
            <c:param name="email" value="${email}"/>
            <c:param name="phone" value="${phone}"/>
            <c:param name="num_person" value="${num_person}"/>
            <c:param name="start_date" value="${start_date}"/>
            <c:param name="end_date" value="${end_date}"/>
        </c:url>
        <a href="${cusdelete}" onclick="return confirmDelete();">
            <button name="delete" class = "btn1">Delete My Data</button>
        </a>
    </div>
</c:forEach>
</body>
</html>