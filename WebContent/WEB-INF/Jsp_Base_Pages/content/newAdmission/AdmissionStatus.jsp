<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Admission.css" />" rel="stylesheet">
<title>Admission Success</title>
</head>
<body>
	<div class="container">
		<header class="header_class">
			<h2>Admission Success</h2>
			<div class="top_nav">
				<ul>
					<li style="float: right"><a href="/SpringProjectHersley/Home.html">Home</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</header>
		<div class="body_background">
			<section class="left_side">
				<article>
					<header> <u> Admission Success Details </u> </header>
					<c:choose>
						<c:when test = "${not empty masterdata }">
							<p> Admission Details: </p> 
							<p>	{ Name - <c:out value = "${ masterdata.name }" ></c:out> } </p>
							<p>	{ EmailId - <c:out value = "${ masterdata.emailID }" ></c:out> } </p>
							<p>	{ Registration Number - <c:out value = "${ masterdata.regNumber }" ></c:out> } </p>
							<p> { Exam Rank - <c:out value = "${ masterdata.rank }" ></c:out> } </p>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
				</article>
			</section>
			<footer class="page_footer">
				&copy; SamikBasu @ abc.com
			</footer>
		</div>
	</div>
</body>
</html>