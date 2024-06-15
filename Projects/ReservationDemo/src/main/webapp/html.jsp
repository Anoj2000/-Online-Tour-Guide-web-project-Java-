
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Tour Guide</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,600;0,700;1,300;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css.css">
    <link rel="stylesheet" href="Header and footer.css">
</head>
<body>

<div class="header">
    <header>
<div class="container">
    <div class="navbar">
        <div class="logo">
            <img src="img/logo5.jpg" alt="logo" width="100px" height="100px">
        </div>
        <nav>
            <ul>
                <li><a href="html.jsp">Home</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="reguserinsert.jsp">Register</a></li>
                <li><a href="useraccount.jsp">User Account</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">About us</a></li>
            </ul>
        </nav>

       </div> 
       

</div>
</div>
</header>

<div class="page">
	
	     <P class="title">TOURS</P>
         <br><br>
		
           <form class="bar" action="html.html" style="margin:auto;max-width:300px">
         <input type="text" placeholder="Search.." name="search2">
         <button type="submit"><i class="fa fa-search"></i></button>
         </form> 
  
        <br><br><br><br><br>
		
		<div class="product-list">
        <div class="product">
            <img src="img/miami.jpg" alt="Product 1">
            <div class="product-description">
                <h2>Miami</h2>
                <p>Available Tour Guides: <span class="available-quantity">5</span></p>
                <p>Welocome to the Magic city!<br><br></p>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
        <div class="product">
            <img src="img/paris.jpg" alt="Product 2">
            <div class="product-description">
                <h2>Paris</h2>
                <p>Available Tour Guides:<span class="available-quantity">10</span></p>
                <p>Welcome to the lovers city!<br><br></p>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
        <div class="product">
            <img src="img/barcelona.jfif" alt="Product 3">
            <div class="product-description">
                <h2>Barcelona</h2>
                <p>Available Tour Guides: <span class="available-quantity">7</span></p>
                <p>Welocme to the  Antoni Gaudí's world!</p><br>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
        <div class="product">
            <img src="img/luxembourg.jpg" alt="Product 4">
            <div class="product-description">
                <h2>Luxembourg</h2>
                <p>Available Tour Guides:<span class="available-quantity">15</span></p>
                <p>Living a life of luxury in Luxembourg</p>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
        <div class="product">
            <img src="img/colombo.jfif" alt="Product 5">
            <div class="product-description">
                <h2>Colombo</h2>
                <p>Available Tour Guides:<span class="available-quantity">12</span></p>
                <p>Hearbeat of southasia</p>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
        <div class="product">
            <img src="img/bangkok.jpg" alt="Product 6">
            <div class="product-description">
                <h2>Bangkok</h2>
                <p>Available Tour Guides:<span class="available-quantity">8</span></p>
                <p>Bangkok is your living dream</p><br>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
        <div class="product">
            <img src="img/cook.jfif" alt="Product 7">
            <div class="product-description">
                <h2>Cook Islands</h2>
                <p>Available Tour Guides:<span class="available-quantity">20</span></p>
                <p>Enjoy mindblowing beaches!</p>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
        <div class="product">
            <img src="img/seoul.jfif" alt="Product 8">
            <div class="product-description">
                <h2>Seoul</h2>
                <p>Available Tour Guides:<span class="available-quantity">3</span></p>
                <p>Find your lost soul in seoul</p><br>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
		<div class="product">
            <img src="img/tokyo2.jpg" alt="Product 9">
            <div class="product-description">
                <h2>Tokyo</h2>
                <p>Available Tour Guides:<span class="available-quantity">1</p>
                <p>Be animated!</p><br>
				<button class="buynow"><a href="customerinsert.jsp" >Book Now</a></button>
            </div>
        </div>
    </div>
	</div>

   
<footer class="footer" style="margin-top: 200px;">
    <div class="footer-container">
<div class="footer-row">

<div class="footer-col">
    <h3>Packages</h3>
    <ul class="footerul">
        <li><a href="#">Solo</a></li>
        <li><a href="#">Couple</a></li>
        <li><a href="#">Group</a></li>
        
    </ul>
</div>

<div class="footer-col">
    <h3>HELP</h3>
    <ul class="footerul">
        <li><a href="#">Register</a></li>
        <li><a href="#">User Account</a></li>
        <li><a href="#">About us</a></li>
        <li><a href="#">FAQs</a></li>
        <li><a href="\Online Fashion Store\Login & register\customer_login.html">Login</a></li>
    </ul>
</div>

<div class="footer-col">
    <h3>Get in Touch</h3>
    <p id="GetInTouch">
        There is no reason to be just a mere tourist anymore,<br> not when locals can show you an edgier,<br> more beautiful and more authentic version of their city.
    </p>
</div>

<div class="footer-col">
    <h3>FOLLOW US</h3>
    <input type="email" name="email" id="subcribeEmail" placeholder="example@gmail.com">
    <a href="#" class="footerbtn">Subcribe our Channel</a>
    <div class="socialMediaIcons">
    <a href="#"><i class="fa-brands fa-facebook"></i></a>
    <a href="#"><i class="fa-brands fa-instagram"></i></a>
    <a href="#"><i class="fa-brands fa-youtube"></i></a>
    <a href="#"><i class="fa-brands fa-twitter"></i></a>
</div>
</div>
</div>
</div>
<div class="copyright">
    <p>Copyright &copy;2023 All right reserved</p>
</div>
</footer>

</body>
</html>
