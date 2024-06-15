<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Booking Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('A.jpg');
            background-size: cover; 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8); 
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            margin-top: 20px;
        }

        h1 {
            text-align: center;
        }

        form {
            text-align: left;
        }

        label {
            display: block;
            margin-top: 0px;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book Your Tour</h1>
        
        <form action="insert" method="GET">
        
            <label for="name"><b>Name</b></label>
            <input type="text" name="name" id="name"required>

            <label for="email"><b>Email</b></label>
            <input type="text" name="email" id="email" pattern="[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,}$" required>

            <label for="phone"><b>Phone number</b></label>
            <input type="text" name="phone" id="phone" pattern="[0-9]{10}" required>

            <label for="num_person"><b>Number of persons</b></label>
            <input type="text" name="num_person" id="num_person" pattern="[0-9]{2}" required>

            <label for="start_date"><b>Start Date</b></label>
            <input type="date" name="start_date" id="start_date"required>

            <label for="end_date"><b>End Date</b></label>
            <input type="date" name="end_date" id="end_date"required>

            <input type="submit" name="submit" value="Submit"required>
        </form>
    </div>
</body>
</html>
