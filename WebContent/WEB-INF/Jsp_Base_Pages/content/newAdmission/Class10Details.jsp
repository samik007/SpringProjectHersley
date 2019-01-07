<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/popUp.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/popUp.js" />"></script>
<title>Class-10 Details</title>
</head>
<body onload="fnRefresh();">
	<div class="container">
		<header class="header_class">
			<h2>Class 10 Details</h2>
			<div class="clear"></div>
		</header>
		<div class="body_background">
			<section class="left_side">
				<article>
					<form action="/SpringProjectHersley/Class10Submit" method="post" id="formClass10">
						<table>
							<tr>
								<td>Year of Passing</td>
								<c:choose>
									<c:when test = "${not empty classTenDetails }">
										<td><input type="text" name="year" id="year" placeholder="Year of Passing" maxlength="4"
																		value="${ classTenDetails.year }" onkeyup="fnCheckInputNumber(id)" /></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="year" id="year" placeholder="Year of Passing" maxlength="4"
																	onkeyup="fnCheckInputNumber(id)" /></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "yearSpanId"></span></td>
							</tr>
							<tr>
								<td>School Name</td>
								<c:choose>
									<c:when test = "${not empty classTenDetails }">
										<td><input type="text" name="school" id="school" placeholder="School Name" 
															value="${ classTenDetails.school }" maxlength="20"/></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="school" id="school" placeholder="School Name" maxlength="20"/></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "schoolSpanId"></span></td>
							</tr>
							<tr>	
								<td>Percentage Marks</td>
								<c:choose>
									<c:when test = "${not empty classTenDetails }">
										<td><input type="text" name="marks" id="marks" placeholder="Percentage Marks" maxlength="3"
														value="${ classTenDetails.marks }" onkeyup="fnCheckInputNumber(id)"/></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="marks" id="marks" placeholder="Percentage Marks" maxlength="3"
															onkeyup="fnCheckInputNumber(id)"/></td>
									</c:otherwise>
								</c:choose>
								
								<td width="170px"><span id = "marksSpanId"></span></td>
							</tr>
							<tr>
								<td><input type="button" value="Submit Details" id="class10" class="button" onclick="fnSubmit()"/></td>
								<td><input type="button" value="Reset" class="button" onclick="fnResetClass()"/></td>
								<td width="170px"></td>
							</tr>
						</table>
					</form>
				</article>
			</section>
		</div>
	</div>
	<script type="text/javascript">
		function fnRefresh(){
			var something = '${flagClass10}';
			if( something == "pass"){
				window.opener.location.reload();
				window.close();
			}
		}
	</script>
</body>
</html>