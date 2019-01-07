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
<title>Father's Detail</title>
</head>
<body onload="fnRefresh()">
	<div class="container">
		<header class="header_class">
			<h2>Father's Detail</h2>
			<div class="clear"></div>
		</header>
		<div class="body_background">
			<section class="left_side">
				<article>
					<form action="/SpringProjectHersley/FatherIncomeSubmit" method="post" id="formFatherIncomeSubmit">
						<table>
							<tr>
								<td>Father's Name</td>
								<c:choose>
									<c:when test = "${not empty fatherIncomeDetail }">
										 <td><input type="text" name="name" id="name" value="${ fatherIncomeDetail.name }" 
										 													placeholder="Father's Name" maxlength="10" /></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="name" id="name" placeholder="Father's Name" maxlength="10" /></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "nameSpanId"></span></td>
							</tr>
							<tr>
								<td>Father's Age</td>
								<c:choose>
									<c:when test = "${not empty fatherIncomeDetail }">
										 <td><input type="text" name="age" id="age" placeholder="Father's Age" maxlength="3"
																value="${ fatherIncomeDetail.age }"	onkeyup="fnCheckInputNumber(id)"/></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="age" id="age" placeholder="Father's Age" maxlength="3"
																		onkeyup="fnCheckInputNumber(id)"/></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "ageSpanId"></span></td>
							</tr>
							<tr>	
								<td>Father's Income/ Pension</td>
								<c:choose>
									<c:when test = "${not empty fatherIncomeDetail }">
										 <td><input type="text" name="salary" id="salary" placeholder="Fathers Income/ Pension" maxlength="10"
														value="${ fatherIncomeDetail.salary }" onkeyup="fnCheckInputNumber(id)"/></td>
									</c:when>
									<c:otherwise>
										<td><input type="text" name="salary" id="salary" placeholder="Fathers Income/ Pension" maxlength="10"
															onkeyup="fnCheckInputNumber(id)"/></td>
									</c:otherwise>
								</c:choose>
								<td width="170px"><span id = "salarySpanId"></span></td>
							</tr>
							<tr>
								<td><input type="button" value="Submit Details" id="class10" class="button" onclick="fnSubmitFatherDetail()"/></td>
								<td><input type="button" value="Reset" class="button" onclick="fnResetFatherDetail()"/></td>
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
			var something = '${flagFatherIncome}';
			if( something == "pass"){
				window.opener.location.reload();
				window.close();
			}
		}
	</script>
</body>
</html>