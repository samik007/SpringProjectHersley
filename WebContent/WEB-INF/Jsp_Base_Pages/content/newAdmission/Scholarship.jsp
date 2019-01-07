<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/popUp.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/popUp.js" />"></script>
<title>Scholarship</title>
</head>
<body onload="fnRefresh()">
	<div class="container">
		<header class="header_class">
			<h2>Scholarship</h2>
			<div class="clear"></div>
		</header>
		<div class="body_background">
			<section class="left_side">
				<article>
					<form action="/SpringProjectHersley/ScholarshipSubmit" method="post" id="formScholarshipSubmit">
						<table>
							<tr>
								<td>Scholarship Name</td>
								<c:choose>
									<c:when test = "${not empty scholarship }">
										 <td><input type="text" name="scholarshipName" id="scholarshipName" 
										 						value="${ scholarship.scholarshipName }" placeholder="Scholarship Name" maxlength="10" /></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="scholarshipName" id="scholarshipName" placeholder="Scholarship Name" maxlength="10" /></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "scholarshipNameSpanId"></span></td>
							</tr>
							<tr>
								<td>Scholarship Percentage</td>
								<c:choose>
									<c:when test = "${not empty scholarship }">
										 <td><input type="text" name="scholarshipPercentage" id="scholarshipPercentage" placeholder="scholarship Percentage" maxlength="3"
															value="${ scholarship.scholarshipPercentage }" onkeyup="fnCheckInputNumber(id)" /></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="scholarshipPercentage" id="scholarshipPercentage" placeholder="scholarship Percentage" maxlength="3"
																		onkeyup="fnCheckInputNumber(id)" /></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "scholarshipPercentageSpanId"></span></td>
							</tr>
							<tr>
								<td><input type="button" value="Submit Details" id="class10" class="button" onclick="fnSubmitScholarship()"/></td>
								<td><input type="button" value="Reset" class="button" onclick="fnResetScholarship()"/></td>
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
			var something = '${flagScholarship}';
			if( something == "pass"){
				window.opener.location.reload();
				window.close();
			}
		}
	</script>
</body>
</html>