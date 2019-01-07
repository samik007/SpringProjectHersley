<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/styleSheet/Admission.css" />" rel="stylesheet">
<title>Search Page</title>
<script type="text/javascript">
	function mySearchFnctn() {
		var unit = document.getElementById("unit").value;
		if(unit == ""){
			document.getElementById("spanUnit").innerHTML = 
					"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Unit";
			return;
		}else{
			document.getElementById("spanUnit").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
		}
		document.getElementById("searchForm").submit();
	}
</script>
</head>
<body>
	<div class="container">
		<header class="header_class">
			<h2>Search Page</h2>
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
					<p>
						<form action="/SpringProjectHersley/searchSubmit" id="searchForm" method="post">
							<div class="inputs">
								<table>
									<tr>
										<td>Search By Unit: </td>
										<td><input type="text" name="unit" id="unit" placeholder="Unit" maxlength="4"/></td>
										<td><span id="spanUnit"></span></td>
									</tr>
									<tr>
										<td>
											<input type="button" value="Search" class="button" onclick="mySearchFnctn()"/>
										</td>
										<td colspan="2"></td>
									</tr>
								</table>
							</div>
						</form>
					</p>
				</article>
			</section>
			<aside class="right_side">
				<div>
					<h2> Social Links</h2>
					<hr>
					<ul>
						<li><a href="/SpringProjectHersley/ServletController"> MyServlet </a></li>
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