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
<title>Exam Details</title>
</head>
<body onload="fnRefresh()">
	<div class="container">
		<header class="header_class">
			<h2>Exam Details</h2>
			<div class="clear"></div>
		</header>
		<div class="body_background">
			<section class="left_side">
				<article>
					<form action="/SpringProjectHersley/ExamDetailsSubmit" method="post" id="formExamDetailsSubmit">
						<table>
							<tr>
								<td>Exam Name</td>
								<c:choose>
									<c:when test = "${not empty examDetails }">
										 <td><input type="text" name="examName" id="examName" placeholder="Exam Name" 
										 				value="${ examDetails.examName }" maxlength="10" /></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="examName" id="examName" placeholder="Exam Name" maxlength="10" /></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "examNameSpanId"></span></td>
							</tr>
							<tr>
								<td>Exam Rank</td>
								<c:choose>
									<c:when test = "${not empty examDetails }">
										<td><input type="text" name="examRank" id="examRank" placeholder="Exam Rank" maxlength="10"
												value="${ examDetails.examRank }" onkeyup="fnCheckInputNumber(id)" /></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="examRank" id="examRank" placeholder="Exam Rank" maxlength="10"
																		onkeyup="fnCheckInputNumber(id)" /></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "examRankSpanId"></span></td>
							</tr>
							<tr>
								<td><input type="button" value="Submit Details" id="class10" class="button" onclick="fnSubmitExamDetails()"/></td>
								<td><input type="button" value="Reset" class="button" onclick="fnResetExamDetails()"/></td>
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
			var something = '${flagExamDetails}';
			if( something == "pass"){
				window.opener.location.reload();
				window.close();
			}
		}
	</script>
</body>
</html>