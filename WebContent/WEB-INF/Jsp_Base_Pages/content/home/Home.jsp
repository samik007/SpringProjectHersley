<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Home.css" />" rel="stylesheet">
<title>Home Page</title>
</head>
<body>
  	<div class="container">
		<header class="header_class">
			<div class="login">
				<c:choose>
					<c:when test = "${empty loggedUser.userId }">
						<a href="http://localhost:8081/SpringProjectHersley/login">login</a>
					</c:when>
					<c:otherwise>
						Hello ${loggedUser.userId}
						<a href="http://localhost:8081/SpringProjectHersley/logout">logout</a>  
					</c:otherwise>
				</c:choose>
			</div>
			<h2> Home Page - ABC Institute of Technology </h2>
			<div class="top_nav">
				<ul>
					<li><a href="http://localhost:8081/SpringProjectHersley/About.html">About</a></li>
					<li><a href="http://localhost:8081/SpringProjectHersley/Admission.html">Admission</a></li>
					<li><a href="/SpringProjectHersley/NewAdmission.html">New Admission</a></li>
					<li><a href="/SpringProjectHersley/trainingAndPlacement.html">Placement</a></li>
					<li><a href="http://localhost:8081/SpringProjectHersley/Feedback.html">Feedback</a></li>
					<li><a href="/SpringProjectHersley/search.html">Search</a></li>
					<li><a href="/SpringProjectHersley/rest.html">Rest Api</a></li>
				</ul>
			</div>	
			<div class="clear"></div>
		</header>
		<div class="body_background">
			<section class="left_side">
				<div class="image-slider">
					<img class="mySlides" src="<c:url value="/resources/images/download.jpg" />" style="width:100%" height="450px"/>
					<img class="mySlides" src="<c:url value="/resources/images/download1.jpg" />" style="width:100%" height="450px"/>
					<img class="mySlides" src="<c:url value="/resources/images/download2.jpg" />" style="width:100%" height="450px"/>
					<img class="mySlides" src="<c:url value="/resources/images/images.jpg" />" style="width:100%" height="450px"/>
			
					<button class="image_button_left" onclick="plusDivs(-1)">&#10094;</button>
					<button class="image_button_right" onclick="plusDivs(1)">&#10095;</button>
				</div>
				<article>
					<p>
						Inspired by the noble cause of education and with a philanthropic zeal, a group of twenty-two 
						like-minded industrialists of Kolkata established Kalyan Bharti Trust (KBT), a public charitable 
						foundation, to promote and provide higher education in the country and in the State of West Bengal, 
						in particular.

						The vision of the founders of Kalyan Bharti Trust, ‘to prepare dynamic and caring citizens to 
						meet the challenges of global society while retaining their traditional values’, has found its 
						tangible reality in the provision of educational opportunities for a broad spectrum of 
						learners - from the Primary to the Tertiary levels.

						The six wings of the Trust - The Heritage School (THS), Heritage Institute of Technology (HIT-K) , 
						The Heritage Academy (THA) , Heritage Business School (HBS) ,Heritage Law College (HLC) & 
						The Heritage College (THC) together constitute an oasis of learning and have, over the years, 
						carved a niche for themselves among academicians, faculty, students and society, in general.
						
						A harmonious integration of valued traditions with modern outlook is the guiding principle 
						behind the development of the academic environment that constitutes the basic philosophy of 
						these six educational initiatives of Kalyan Bharti Trust.
						
						Besides these educational initiatives, Kalyan Bharti Trust carries out its social responsibilities 
						through SURYAKIRAN & KALYANI. ‘Suryakiran’ is engaged in spreading education to the disadvantaged 
						children of the neighbourhood, while ‘Kalyani’, a charitable health-care centre, provides basic 
						medical facilities to the poor & needy.
						
						The Trust has plans to set up a Medical College, an Institute of Design and finally, 
						a Private University in the near future.
						
						Kalyan Bharti Trust shares a great Indian dream - a dream of a new tomorrow where technological 
						advancement would go hand in hand with intellectual development in laying the corner stone of a 
						spiritually evolved new- age Indian; one who would stand tall to face global challenges to etch 
						India’s pride in the annals of international progress.
					</p>
				</article>
			</section>
			<aside class="right_side">
				<div>
					<h2> Social Links</h2>
					<hr>
					<ul>
						<li><a href=""> facebook </a></li>
						<li><a href=""> twitter </a></li>
					</ul>
				</div>
				<div>
					<h2> Related Information</h2>
					<hr>
					<article>
						<header>
							<h3>Before and after</h3>
							<hr>
						</header>
						<p>This is another classic approach, borrowed from the advertising industry.
							You have doubtless seen your fair share of before and after photos.
							Think weight loss.
							Think hair loss. 
						</p>
						<footer>
							<a href=""> see more </a>
						</footer>
					</article>
				</div>
			</aside>
			<footer class="page_footer">
				&copy; SamikBasu @ abc.com
			</footer>
		</div>
	</div>
	<script>
		var slideIndex = 1;
		showDivs(slideIndex);
		function plusDivs(n){
			showDivs(slideIndex += n);
		}
		function showDivs(n){
			var i;
			var x = document.getElementsByClassName("mySlides");
			if(n < 1){
				slideIndex = x.length - 1;
			}
			if(n > x.length){
				slideIndex = 1;
			}
			for(i=0; i<x.length;i++){
				x[i].style.display = "none";
			}
			x[slideIndex-1].style.display = "block";
		}
	</script>
</body>
</html>