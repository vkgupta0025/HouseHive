<table width="100%">
<%if(session.getAttribute("valid")!=null) 
{
 %>
 <tr><td><jsp:include page="breadcumb.jsp"/></td></tr>
 <%
   }
  %>
  <tr><td>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>ApnaHOME</title>
	<meta charset="utf-8">
	<meta name="author" content="pixelhint.com">
	<meta name="description" content="La casa free real state fully responsive html5/css3 home page website template"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>

	<section class="hero">
		<header>
			<div class="wrapper">
				<a href="index.jsp"><img src="img/logo.png" class="logo" alt="" titl=""/></a>
				<a href="#" class="hamburger"></a>
				<nav>
					<ul>
						<li><a href="Buy.jsp">Buy/Rent</a></li>
						<li><a href="Sell.jsp">Sell/Rent</a></li>
						<li><a href="aboutus.jsp">About</a></li>
						<li><a href="contactus.jsp">Contact</a></li>
					</ul>
					<a href="login.jsp" class="login_btn">Login</a>
				</nav>
			</div>
		</header><!--  end header section  -->

			<section class="caption">
				<h2 class="caption">Find You Dream Home</h2>
				<%if(session.getAttribute("valid")!=null) 
                 {
                 %>
                      <br/>
				 <%
				   }
				  %>
				<h3 class="properties">Appartements - Houses - Mansions</h3>
			</section>
	</section><!--  end hero section  -->


		<footer>
		<div class="wrapper footer">
			<ul>
				<li class="links">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="Buy.jsp">Buy/Rent</a></li>
						<li><a href="Sell.jsp">Sell/Rent</a></li>
						<li><a href="aboutus.jsp">About Us</a></li>
						<li><a href="contactus.jsp">Contact</a></li>
					</ul>
				</li>

				<li class="links">
					<ul>
						<li><a href="">Appartements</a></li>
						<li><a href="">Separate Houses</a></li>
						<li><a href="">Single Rooms</a></li>
						<li><a href="">Bunglows</a></li>
					</ul>
				</li>
				<li class="links">
					<ul>
						<li><a href="">Reliable</a></li>
						<li><a href="">Free Service</a></li>
						<li><a href="">Genuine Results</a></li>
						
					</ul>
				</li>

				

				<li class="about">
					<p> ApnaHOME is a dedicated solution for everyone who is in the planning of stepping their feets in their 
		HOME.Besides this we also provide assistance for finding a temporary property for a very minimal rent.
		HAPPY STAYING!!!</p>
					<ul>
						<li><a href="http://facebook.com" class="facebook" target="_blank"></a></li>
						<li><a href="http://twitter.com" class="twitter" target="_blank"></a></li>
						<li><a href="http://plus.google.com" class="google" target="_blank"></a></li>
						<li><a href="#" class="skype"></a></li>
					</ul>
				</li>
			</ul>
		</div>

		<div class="copyrights wrapper">
			 Copyright&copy;2015 ApnaHOME.com</a>. All Rights Reserved.
		</div>
	</footer><!--  end footer  -->
	
</body>
</html>
</td>
</tr></table>