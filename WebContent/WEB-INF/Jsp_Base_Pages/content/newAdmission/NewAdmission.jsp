<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="<c:url value="/resources/js/newAdmission.js" />"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="<c:url value="/resources/styleSheet/Admission.css" />" rel="stylesheet">
<title>New Admission</title>
<script>
$( function() {
    $( "#datepicker" ).datepicker();
});
 </script>
</head>
<body>
	<div class="container">
		<header class="header_class">
			<h2>Admission Information</h2>
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
					<form action="/SpringProjectHersley/NewAdmissionSubmit" method="post" id="formNewAdmission" modelAttribute="newAdmissionData">
						<table>
							<tr>
								<td>First Name</td>
								<td>Father's Name</td>
								<td>Date of Birth</td>
								<td>Gender</td>
							</tr>
							<tr>
								<td><input type="text" name="firstName" id="firstName" placeholder="First Name"/></td>
								<td><input type="text" name="fatherName" id="fatherName" placeholder="Father's Name"/></td>
								<td><input type="text" name="datepicker" id="datepicker" placeholder="Date Of Birth"/></td>
								<td>
									<select name="gender" id="gender">
										<option value="pleaseSelect">Please Select Gender</option>
										<option value="male">Male</option>
										<option value="female">Female</option>
										<option value="other">Other</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>Last Name</td>
								<td>Differently Abled</td>
								<td>Course Applied</td>
								<td>Blood Group</td>
							</tr>
							<tr>
								<td><input type="text" name="lastName" id="lastName" placeholder="Last Name"/></td>
								<td>
									<select name="diffAbled" id="diffAbled">
										<option value="differentlyAbled">Differently Abled</option>
										<option value="yes">Yes</option>
										<option value="no">No</option>
									</select>
								</td>
								<td>
									<select name="course" id="course">
										<option value="courseApplied">Course Applied</option>
										<option value="btech">B.Tech</option>
										<option value="mtech">M.Tech</option>
										<option value="mca">MCA</option>
										<option value="bca">BCA</option>
										<option value="llb">Law</option>
										<option value="mbbs">MBBS</option>
									</select>
								</td>
								<td>
									<select name="bloodGroup" id="bloodGroup">
										<option value="bloodGroup">Blood Group</option>
										<option value="A+">A+</option>
										<option value="B+">B+</option>
										<option value="AB+">AB+</option>
										<option value="O+">O+</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>Contact Number</td>
								<td>Address Line1</td>
								<td>Country</td>
								<td>City</td>
							</tr>
							<tr>
								<td><input type="text" name="contact" id="contact" placeholder="Contact Number" onkeyup="fnCheckInputNumber(id)"
																			maxlength="10"	/></td>
								<td><input type="text" name="street1" id="street1" placeholder="Address Line1"/></td>
								<td><input type="text" name="country" id="country" placeholder="Country"/></td>
								<td><input type="text" name="city" id="city" placeholder="City"/></td>
							</tr>
							<tr>
								<td>Email ID</td>
								<td>Address Line2</td>
								<td>State</td>
								<td>Zip Code</td>
							</tr>
							<tr>
								<td><input type="email" name="email" id="email" placeholder="Email ID"/></td>
								<td><input type="text" name="street2" id="street2" placeholder="Address Line2"/></td>
								<td><input type="text" name="state" id="state" placeholder="State"/></td>
								<td><input type="text" name="zipcode" id="zipcode" placeholder="Zip Code" onkeyup="fnCheckInputNumber(id)"
															maxlength="6"	/></td>
							</tr>
							<tr>
								<td colspan="4">
									<input type="button" style="width: 120px;" value="Submit Details" id="class10" class="button" onclick="fnSubmitNewAdmission()"/>
									<input type="button" style="width: 120px;" value="Reset" class="button" onclick="fnResetNewAdmission()"/>
								</td>
							</tr>
						</table>
					</form>
				</article>
				<article>
					<header> <u> Details </u> </header>
					<c:choose>
						<c:when test = "${not empty flagExamDetails }">
							<p> 
								Exam Details: 
								{ Exam Name - <c:out value = "${ examDetails.examName }" ></c:out> }, 
								{ Exam Rank - <c:out value = "${ examDetails.examRank }" ></c:out> }
							</p>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test = "${not empty flagClass10 }">
							<p> 
								Class 10 Details: 
								{ Year - <c:out value = "${ classTenDetails.year }" ></c:out> }, 
								{ School - <c:out value = "${ classTenDetails.school }" ></c:out> },
								{ Marks - <c:out value = "${ classTenDetails.marks }" ></c:out> }
							</p>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test = "${not empty flagClass12 }">
							<p> 
								Class 12 Details: 
								{ Year - <c:out value = "${ classTwelveDetails.year }" ></c:out> }, 
								{ School - <c:out value = "${ classTwelveDetails.school }" ></c:out> },
								{ Marks - <c:out value = "${ classTwelveDetails.marks }" ></c:out> }
							</p>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test = "${not empty flagFatherIncome }">
							<p> 
								Father Income Details: 
								{ Name - <c:out value = "${ fatherIncomeDetail.name }" ></c:out> }, 
								{ Age - <c:out value = "${ fatherIncomeDetail.age }" ></c:out> },
								{ Salary - <c:out value = "${ fatherIncomeDetail.salary }" ></c:out> }
							</p>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test = "${not empty flagScholarship }">
							<p> 
								Scholarship Details: 
								{ Scholarship Details - <c:out value = "${ scholarship.scholarshipName }" ></c:out> }, 
								{ Scholarship Percentage - <c:out value = "${ scholarship.scholarshipPercentage }" ></c:out> }
							</p>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test = "${not empty flagStudentExchange }">
							<p> 
								Student Exchange Details: 
								{ Student Exchange Name - <c:out value = "${ studentExchangeDetail.studentExchangeName }" ></c:out> }, 
								{ Student Exchange Fees - <c:out value = "${ studentExchangeDetail.studentExchangeFees }" ></c:out> }
							</p>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
				</article>
			</section>
			<aside class="right_side">
				<div>
					<h2> Links</h2>
					<hr>
					<ul>
						<li><a href="" onclick="fnOpenPopup(id)" id="ExamDetails"> Exam Details </a></li>
						<li><a href="" onclick="fnOpenPopup(id)" id="Class10Details"> class 10 Marks </a></li>
						<li><a href="" onclick="fnOpenPopup(id)" id="Class12Details"> class 12 Marks </a></li>
						<li><a href="" onclick="fnOpenPopup(id)" id="FatherIncome"> Father's Income </a></li>
						<li><a href="" onclick="fnOpenPopup(id)" id="Scholarship"> Scholarship  </a></li>
						<li><a href="" onclick="fnOpenPopup(id)" id="StudentExchange"> Student Exchange </a></li>
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