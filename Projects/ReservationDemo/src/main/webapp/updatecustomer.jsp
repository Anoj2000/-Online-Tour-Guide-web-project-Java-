<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Update</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            background-image: url('D.jpg'); 
            background-size: cover; 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
            margin: 0;
            padding: 0;
        }

        form {
            width: 80%;
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        
        h1 {
          text-align: center;
        
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
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            border-radius: 3px;
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

<h1> Update Conformation</h1>

<form action="update" method="Get">
    <strong><label for="tour_id">Tour ID:</label></strong>
    <input type="text" name="tour_id" value="<%= tour_id %>" readonly><br>

    <strong><label for="name">Name:</label></strong>
    <input type="text" name="name" value="<%= name %>"required><br>

    <strong><label for="email">Email:</label></strong>
    <input type="text" name="email" value="<%= email %>" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" required><br>

    <strong><label for="phone">Phone number:</label></strong>
    <input type="text" name="phone" value="<%= phone %>" pattern="[0-9]{10}" required><br>

    <strong><label for="num_person">Number of Persons:</label></strong>
    <input type="text" name="num_person" value="<%= num_person %>" pattern="[0-9]{2}" required><br>

    <strong><label for="start_date">Start Date:</label></strong>
    <input type="date" name="start_date" value="<%= start_date %>"required><br>

    <strong><label for="end_date">End Date:</label></strong>
    <input type="date" name="end_date" value="<%= end_date %>"required><br>

    <input type="submit" name="submit" value="Submit"required><br>
</form>

</body>
</html>
