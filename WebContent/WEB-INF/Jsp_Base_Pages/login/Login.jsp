<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Login.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/main.js" />"></script>
<title>Login</title>
</head>
<body>
	<header class="header">
		<h1> Login-Page </h1>
	</header>
	<div class="wrapper"> 
		<div class="wrapper_login">
			<h2> Login </h2>
			<c:if test="${loginError}">
				<script type="text/javascript">
					alert("UserName/ Password combination invalid");
				</script>
			</c:if>
			<form id="myForm" action="/SpringProjectHersley/loginSubmit" method="post">
				<div class="inputs">
					<table>
						<tr>
							<td>User Name:</td>
							<td><input type="text" name="userId" id="userId" placeholder="User Name"/></td>
							<td><span id="spanNameId"></span></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" id="password" name="password" placeholder="password" ></td>
							<td><span id="spanPasswordId"></span></td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="button" value="Submit" class="button" onclick="myFunction()"/>
								<input type="button" value="Reset" class="button" onclick="myResetFunction()"/>
								<input type="button" value="Home" class="button" onclick="myHomeFunction()"/>
							</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
		<div class="wrapper_signup">
			<h2> Sign Up </h2>
			<c:choose>
				<c:when test="${registrationError}">
					<script type="text/javascript">
						alert("Error in Registration");
					</script>
				</c:when>
				<c:when test="${registrationSuccess}">
					<script type="text/javascript">
						alert("Registration Successful");
					</script>
				</c:when>
			</c:choose>
			<form id="myFormRegister" action="/SpringProjectHersley/registerSubmit" method="post">
				<div class="inputs">
					<table>
						<tr>
							<td>User Name:</td>
							<td><input type="text" name="userNameSignUp" id="userIdSignUp" placeholder="username"/></td>
							<td><span id="spanNameIdSignUp"></span></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" name="passwordSignUp" id="passwordIdSignUp" placeholder="password"/></td>
							<td><span id="spanPasswordIdSignUp"></span></td>
						</tr>
						<tr>
							<td>Confirm Password:</td>
							<td><input type="password" id="cnfrmPasswordIdSignUp" placeholder="confirm password"/></td>
							<td><span id="spanCnfrmPasswordIdSignUp"></span></td>
						</tr>
						<tr>
							<td>Mobile No:</td>
							<td><input type="text" name="mobileNo" id="mobileNoID" placeholder="mobile number" maxlength="10"/></td>
							<td><span id="spanMobileNoIdSignUp"></span></td>
						</tr>
						<tr>
							<td>Email Id:</td>
							<td><input type="email" name="email" id="emailId" placeholder="email Id"/></td>
							<td><span id="spanEmailIdSignUp"></span></td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="button" value="SignUp" class="button" onclick="fnSignUp()"/>
								<input type="button" value="Reset" class="button" onclick="myResetFunctionSignUp()"/>
							</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>