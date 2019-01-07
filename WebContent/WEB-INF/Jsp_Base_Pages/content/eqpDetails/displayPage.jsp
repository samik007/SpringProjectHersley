<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Admission.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/Search.js" />"></script>
<title>Display Page</title>
</head>   
<body>
<body>
	<div class="container">
		<header class="header_class">
			<h2>Display Page</h2>
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
						<form id="displayForm" method="post" action="/SpringProjectHersley/displaySubmit">
							<p style="padding-left: 10px; border: 1px solid white; margin-left: 20px; width: 512px;"> <a style="color: white; text-decoration: none;" href="#" onclick="toggleTable()"> General </a> </p>
							<div class="inputs" style="display: block;" id="div1">
								<table id="tblGeneral">
									<tr>   
										<td>Unit Type: </td>
										<td><input type="text" name="unit" id="unit" placeholder="Unit" maxlength="4" value="${ general.unit_type }" disabled="disabled"/></td>
										<td>Built New: </td>
										<td><input type="text" name="built" id="built" placeholder="built New" value="${ general.built_new }" disabled="disabled"/></td>
									</tr>
									<tr>
										<td>Mac ID: </td>
										<td><input type="text" name="mac_id" id="mac_id" placeholder="Mac Id" value="${ general.mac_id }" disabled="disabled"/></td>
										<td>Builder: </td>
										<td><input type="text" name="builder" id="builder" placeholder="Builder" value="${ general.builder }" disabled="disabled"/></td>
									</tr>   
									<tr>
										<td>AEI Tag: </td>
										<td><input type="text" name="aei_tag" id="aei_tag" placeholder="Aei Tag" value="${ general.aei_tag }" disabled="disabled"/></td>
										<td>Owner: </td>
										<td><input type="text" name="owner" id="owner" placeholder="Owner" value="${ general.owner }" disabled="disabled"/></td>
									</tr>
									<tr>
										<td>EQP ID: </td>
										<td><input type="text" name="eqp_id" id="eqp_id" placeholder="EQP ID" value="${ general.eqp_id }"/></td>
										<td>Min Curve: </td>
										<td><input type="text" name="mincurve" id="min_curve" placeholder="Min Curve" value="${ general.min_curve }" disabled="disabled"/></td>
									</tr>
									<tr>
										<td>Speed: </td>
										<td><input type="text" name="speed" id="speed" placeholder="Speed" value="${ general.speed }" disabled="disabled"/></td>
										<td colspan="2"></td>
									</tr>
									<tr>   
										<td><input type="button" disabled="true" id="btnSubmit" value="Submit" class="button" onclick="myDisplaySubmit()"/></td>
										<td><input type="button" value="Modify" class="button" onclick="myEditSubmit()"/></td>
										<td colspan="2"></td>
									</tr>
								</table>      
							</div>
						</form>
				</article>  
			</section>
			<footer class="page_footer">                 
				&copy; SamikBasu @ abc.com
			</footer>
		</div>
	</div>
</body>
</html>