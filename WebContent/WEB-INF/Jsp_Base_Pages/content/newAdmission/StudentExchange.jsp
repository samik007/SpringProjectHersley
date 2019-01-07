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
<title>Student Exchange</title>
</head>
<body onload="fnRefresh()">
	<div class="container">
		<header class="header_class">
			<h2>Student Exchange</h2>
			<div class="clear"></div>
		</header>
		<div class="body_background">
			<section class="left_side">
				<article>
					<form action="/SpringProjectHersley/StudentExchangeSubmit" method="post" id="formStudentExchangeSubmit">
						<table>
							<tr>
								<td>Student Exchange Name</td>
								<c:choose>
									<c:when test = "${not empty studentExchangeDetail }">
										 <td><input type="text" name="studentExchangeName" id="StudentExchangeName" 
										 			value="${ studentExchangeDetail.studentExchangeName }" placeholder="Student Exchange Name" maxlength="10" /></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="studentExchangeName" id="StudentExchangeName" placeholder="Student Exchange Name" maxlength="10" /></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "StudentExchangeNameSpanId"></span></td>
							</tr>
							<tr>
								<td>Student Exchange Fees</td>
								<c:choose>
									<c:when test = "${not empty studentExchangeDetail }">
										 <td><input type="text" name="studentExchangeFees" id="StudentExchangeFees" placeholder="Student Exchange Fees" maxlength="10"
																value="${ studentExchangeDetail.studentExchangeFees }" onkeyup="fnCheckInputNumber(id)" /></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="studentExchangeFees" id="StudentExchangeFees" placeholder="Student Exchange Fees" maxlength="10"
																		onkeyup="fnCheckInputNumber(id)" /></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "StudentExchangeFeesSpanId"></span></td>
							</tr>
							<tr>
								<td><input type="button" value="Submit Details" id="class10" class="button" onclick="fnSubmitStudentExchange()"/></td>
								<td><input type="button" value="Reset" class="button" onclick="fnResetStudentExchange()"/></td>
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
			var something = '${flagStudentExchange}';
			if( something == "pass"){
				window.opener.location.reload();
				window.close();
			}
		}
	</script>
</body>
</html>