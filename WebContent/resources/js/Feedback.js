function myFeedbackFnctn(){
	var userNamme = document.getElementById("name").value;
	if(userNamme == ""){
		document.getElementById("spanNameId").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter User Name";
		return;
	}else{
		document.getElementById("spanNameId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	var email = document.getElementById("email").value;
	if(email == ""){
		document.getElementById("spanEmailId").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Email";
		return;
	}else{
		document.getElementById("spanEmailId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	var star = document.getElementById("star").value;
	if(star == 0){
		document.getElementById("spanStarId").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Ratings";
		return;
	}else{
		document.getElementById("spanStarId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	var comments = document.getElementById("comments").value;
	if(comments == ""){
		document.getElementById("spanCommentsId").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Ratings";
		return;
	}else{
		document.getElementById("spanCommentsId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	document.getElementById("feedbackForm").submit();
}

function myHomeFunction(){
	document.getElementById("feedbackForm").action = "/SpringProjectHersley/Home.html";
	document.getElementById("feedbackForm").method = "get";
	document.getElementById("feedbackForm").submit();
}








