<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Home.css" />" rel="stylesheet">
<link href="<c:url value="/resources/styleSheet/Login.css" />" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="<c:url value="/resources/js/restClient.js" />"></script>
<script type="text/javascript">

$( function(){
	$( "#dob" ).datepicker();
});

</script>
<title>Rest Client Page</title>
</head>
<body>
  	<div class="container">
		<header class="header_class">
			<h2>Rest Client Page</h2>
			<div class="top_nav">
				<ul>
					<li style="float: right"><a href="/SpringProjectHersley/Home.html">Home</a></li>
				</ul>
			</div>	
			<div class="clear"></div>
		</header>                      
		<div class="body_background">
			<section class="left_side">
				<ul>
					<li><a href="/SpringProjectHersley/getStudents">Get Student Details</a></li>
				</ul>
				<ul>
					<li><a href="/SpringProjectHersley/getStudent">Get Student Data</a></li>
				</ul>
				<ul>
					<li><a href="/SpringProjectHersley/updateStudent">update Student Data</a></li>
				</ul>
				<ul>
					<li><a href="/SpringProjectHersley/deleteStudent">delete Student Data</a></li>
				</ul>
				<ul>
					<li><a href="/SpringProjectHersley/insertStudent">insert Student Data</a></li>
				</ul>	
				<form id="myForm" action="/SpringProjectHersley/userDetailsSubmit" method="post">
				<div class="inputs">
					<table>
						<tr>
							<td>User Name:</td>
							<td><input type="text" name="userName" id="userName" placeholder="User Name"/></td>
							<td><span id="spanNameId"></span></td>
						</tr>
						<tr>
							<td>DoB:</td>
							<td><input type="text" id="dob" name="birthDate" placeholder="Date Of Birth" ></td>
							<td><span id="spanDateOfBirth"></span></td>
						</tr>
						<tr>
							<td>Description:</td>
							<td><input type="text" id="description" name="description" placeholder="Description" ></td>
							<td><span id="spanDescription"></span></td>
						</tr>
						<tr>
							<td>Hobby List:</td>
							<td>
								<select name="hobbyList" multiple="multiple">
									<option value="hockey">hockey</option>
									<option value="cricket">cricket</option>
									<option value="football">football</option>
									<option value="tennis">tennis</option>
								</select>
							</td>
							<td><span id="spanhobbyList"></span></td>
						</tr>
						<tr>
							<td>City:</td>
							<td><input type="text" id="city" name="city" placeholder="City" ></td>
							<td><span id="spanCity"></span></td>
						</tr>
						<tr>
							<td>State:</td>
							<td><input type="text" id="state" name="state" placeholder="State" ></td>
							<td><span id="spanState"></span></td>
						</tr>
						<tr>
							<td>Pin Code:</td>
							<td><input type="text" id="pincode" name="pincode" placeholder="Pincode" ></td>
							<td><span id="spanPincode"></span></td>
						</tr>
						<tr>
							<td colspan="3">
								<input type="button" value="Submit" class="button" onclick="myFunction()"/>
							</td>
						</tr>
					</table>
				</div>
			</form>
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