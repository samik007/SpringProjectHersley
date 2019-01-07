<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Admission.css" />" rel="stylesheet">
<link href="<c:url value="/resources/styleSheet/Recruitments.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/Recruitments.js" />"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<title>Training And Placement</title>
</head>
<body>
	<div class="container">
		<header class="header_class">
			<h2>Training And Placement</h2>
			<div class="top_nav">
				<ul>
					<li><a href="http://localhost:8081/SpringProjectHersley/recruitments">Recruitments</a></li>
					<li><a href="http://localhost:8081/SpringProjectHersley/summerTraining">Summer Training</a></li>
					<li><a href="http://localhost:8081/SpringProjectHersley/softSkillAndTraining">Soft Skill And Training</a></li>
					<li style="float: right"><a href="/SpringProjectHersley/Home.html">Home</a></li>
				</ul>
			</div>	
			<div class="clear"></div>
		</header>
		<div class="body_background">
			<section class="left_side">
				<article>
					<p>
						Open data is free, publicly available data that anyone can access 
						and use without restrictions. U.S. Federal Open Data is a strategic national resource. 
						American businesses depend on this government data to optimize their operations, 
						improve their marketing, and develop new products and services. Federal Open Data 
						also helps guide business investment, foster innovation, improve employment opportunities, 
						and spur economic growth.

						The value of Federal Open Data to the United States has been estimated at hundreds of billions of dollars. 
						The U.S. Department of Commerce calculates that internet publishing, consulting and market research
						firms use this data to generate more than $200 billion in revenues each year. 
						
						Other studies have found that U.S. weather, GPS, Census, and health data support billions 
						more in revenue in other sectors.
					</p>
				</article>
				<article>
					<p>
						Names are random, constructed from real first and last names. 
						Company names are real, but are randomized along with street addresses and do not 
						represent actual locations.

						City, County, State/Province, and ZIP/Postal are correct for each record.
						Phone and fax numbers are random, but the area code and exchange for each are correct for their location.

						Email and Web addresses are fake but properly formatted for their country.
						Records are in random order and cover the countries with a more or less even distribution.

						Import-ready CSV files, no weird characters, escaped characters, or anything else funky to screw things up.
					</p>
					<div class="inputs">
						Search for official information of director, tpo, principal, cordinator:
						<input type="text" id="post" name="post" />
						<input type="button" value="fetch details" class="button" onclick="fnSubmit()"/>
					</div>
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
</body>
</html>