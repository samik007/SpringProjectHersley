<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Admission.css" />" rel="stylesheet">
<title>Summer Training</title>
</head>
<body>
	<div class="container">
		<header class="header_class">
			<h2>Summer Training</h2>
			<div class="top_nav">
				<ul>
					<li><a href="http://localhost:8081/SpringProjectHersley//recruitments">Recruitments</a></li>
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
						The Training & Placement Cell conducts various value added programmes for the students, 
						which supplement the University Syllabi. The objective is to make the students more 
						employable and enterprising in the market place.

						Industry Orientation:
						Weekly seminars are being organized with eminent speakers from Industry and Institutes of higher learning.

						Students' Seminar is conducted departmentally on a regular basis
						Rigorous two months of Pre-Placement Training is imparted to all the students' 
						eligible placement every year by eminent corporate trainers and psychologists.

						Summer Courses are organized during the semester-break in June every year.
					</p>
				</article>
				<article>
					<p>
						Personality Development, GD & PI Skills	Two Months
						Programming with C and Data Structures	One Month
						Programming with C++ and Object Orientation.	One Month
						Aptitude Training (Logical & Mathematical Reasoning, English Comprehension)	One Month
						Industry Orientation by Experts from the Industry.	Fortnightly
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
</body>
</html>