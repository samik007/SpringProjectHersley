<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Admission.css" />" rel="stylesheet">
<title>About</title>
</head>
<body>
	<div class="container">
		<header class="header_class">
			<h2>About</h2>
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
					<p>
						Training & Placement Cell compliments the efforts of the members of faculty by 
						organizing value-addition programmes and providing placement opportunities to students. 
						It acts as one of the major interfaces with the corporate sector and helps in developing 
						the industry-academia inter-relationship.
					</p>
				</article>
				<table>
					<thead>
						<tr>
							<th>YEAR</th>
							<th>RANK</th>
							<th>PLCEMNT_PRCNTGE</th>
							<th>AUTONOMUS_STATUS</th>
							<th>UNIVERSITY</th>
							<th>TOTALSTUDENT</th>
						</tr>
					</thead>
					<c:forEach var="i" items="${aboutDataList}">
						<tbody>
							<tr>	
								<td> <c:out value = "${ i.year }" ></c:out> </td>
								<td> <c:out value = "${ i.rank }" ></c:out> </td>
								<td> <c:out value = "${ i.percentage }" ></c:out> </td>
								<td> <c:out value = "${ i.status }" ></c:out> </td>
								<td> <c:out value = "${ i.university }" ></c:out> </td>
								<td> <c:out value = "${ i.totalStudent }" ></c:out> </td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</section>
		</div>
	</div>
</body>
</html>