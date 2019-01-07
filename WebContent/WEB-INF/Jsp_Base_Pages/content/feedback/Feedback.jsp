<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Feedback.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/Feedback.js" />"></script>
<title>Feedback</title>
</head>
<body>
	<c:if test="${feedbackSuccess}">
		<script type="text/javascript">
			alert("Feedback added successfully");
		</script>
	</c:if>
	<c:if test="${feedbackError}">
		<script type="text/javascript">
			alert("Error in feedback");
		</script>
	</c:if>
	<header class="header">
		<h1> Feedback </h1>
	</header>
	<div class="wrapper">
		<form action="/SpringProjectHersley/feedbackSubmit" id="feedbackForm" method="post">
			<div class="inputs">
				<table>
					<tr>
						<td>User Name:</td>
						<td><input type="text" name="name" id="name" placeholder="name"/></td>
						<td><span id="spanNameId"></span></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input type="email" id="email" name="email" placeholder="email" ></td>
						<td><span id="spanEmailId"></span></td>
					</tr>
					<tr>
						<td>Stars:</td>
						<td>
							<select name="star" id="star">
							  	<option value="0"> Rate the Product </option>
								<option value="1"> 1 Star </option>
								<option value="2"> 2 Star </option>
								<option value="3"> 3 Star </option>
								<option value="4"> 4 Star </option>
								<option value="5"> 5 Star </option>
				  		  	</select>
						</td>
						<td><span id="spanStarId"></span></td>
					</tr>
					<tr>
						<td>Comments:</td>
						<td>
							<textarea name="comments" id="comments" placeholder="Enter Comments"></textarea>
						</td>
						<td><span id="spanCommentsId"></span></td>
					</tr>
					<tr>
						<td colspan="3">
						<input type="button" value="Submit Feedback" class="button" onclick="myFeedbackFnctn()"/>
						<input type="button" value="Home" class="button" onclick="myHomeFunction()"/>
						</td>
					</tr>
					<tr>
						<td colspan="3"> 
							<h3>Top Comments:</h3>
							 <hr>
						</td>
					</tr>
				</table>
				<c:forEach var="i" items="${feedbackDataList}">
					<article>
						<p><c:out value="${ i.comments }"></c:out></p>
						<footer>
							written by - <c:out value="${ i.name }"></c:out>
						</footer>
					</article>
				</c:forEach>
			</div>
		</form>
	</div>
</body>
</html>