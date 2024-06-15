<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('C.jpg'); 
            background-size: cover; 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
        }
        title {
             text-align: center;
        
        }

        h1 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

        <% String tour_id = request.getParameter("tour_id"); %>
        <% String name = request.getParameter("name"); %>
        <% String email = request.getParameter("email"); %>
        <% String phone = request.getParameter("phone"); %>
        <% String num_person = request.getParameter("num_person"); %>
        <% String start_date = request.getParameter("start_date"); %>
        <% String end_date = request.getParameter("end_date"); %>


    <h1>Delete Booking Confirmation</h1>
    <form action="delete" method="Get">

    <label for="tour_id"><strong>Tour ID:</strong></label>
    <input type="text" name="tour_id" value="<%= tour_id %>" readonly>

    <label for="name"><strong>Name:</strong></label>
    <input type="text" name="name" value="<%= name %>" readonly>

    <label for="email"><strong>Email:</strong></label>
    <input type="text" name="email" value="<%= email %>" readonly>

    <label for="phone"><strong>Phone number:</strong></label>
    <input type="text" name="phone" value="<%= phone %>" readonly>

    <label for="num_person"><strong>Number of Persons:</strong></label>
    <input type="text" name="num_person" value="<%= num_person %>" readonly>

    <label for="start_date"><strong>Start Date:</strong></label>
    <input type="date" name="start_date" value="<%= start_date %>" readonly>

    <label for="end_date"><strong>End Date:</strong></label>
    <input type="date" name="end_date" value="<%= end_date %>" readonly>

    <input type="submit" name="submit" value="Delete">
    
</form>
    

</body>
</html>
