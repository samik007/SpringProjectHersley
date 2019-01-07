function myFunction() {
	var userNamme = document.getElementById("userId").value;
	if(userNamme == ""){
		document.getElementById("spanNameId").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter User Name";
		return;
	}else{
		document.getElementById("spanNameId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var studentPassword = document.getElementById("password").value;
	if(studentPassword == ""){
		document.getElementById("spanPasswordId").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Password";
		return;
	}else{
		document.getElementById("spanPasswordId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	document.getElementById("myForm").submit();
}

function myResetFunction(){
	document.getElementById("userId").value = "";
	document.getElementById("password").value = "";
}

function myResetFunctionSignUp(){
	document.getElementById("userIdSignUp").value = "";
	document.getElementById("passwordIdSignUp").value = "";
	document.getElementById("cnfrmPasswordIdSignUp").value = "";
	document.getElementById("mobileNoID").value = "";
	document.getElementById("emailId").value = "";
}

function myHomeFunction(){
	document.getElementById("myForm").action = "/SpringProjectHersley/Home.html";
	document.getElementById("myForm").method = "get";
	document.getElementById("myForm").submit();
}

function fnSignUp(){
	var userNamme = document.getElementById("userIdSignUp").value;
	if(userNamme == ""){
		document.getElementById("spanNameIdSignUp").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Student Name";
		return 0;
	}else{
		document.getElementById("spanNameIdSignUp").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var userPassword = document.getElementById("passwordIdSignUp").value;
	if(userPassword == ""){
		document.getElementById("spanPasswordIdSignUp").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Password";
		return 0;
	}else{
		document.getElementById("spanPasswordIdSignUp").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var userConfirmPassword = document.getElementById("cnfrmPasswordIdSignUp").value;
	if(userConfirmPassword == ""){
		document.getElementById("spanCnfrmPasswordIdSignUp").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Re-Enter Password";
		return 0;
	}else{
		document.getElementById("spanCnfrmPasswordIdSignUp").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var userMobileNumber = document.getElementById("mobileNoID").value;
	if(userMobileNumber == ""){
		document.getElementById("spanMobileNoIdSignUp").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter mobile";
		return 0;
	}else{
		document.getElementById("spanMobileNoIdSignUp").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
		
	var userEmailID = document.getElementById("emailId").value;
	if(userEmailID == ""){
		document.getElementById("spanEmailIdSignUp").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter mobile";
		return 0; 
	}else{
		document.getElementById("spanEmailIdSignUp").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}		
	
	var passwordStatus = fnConfirmPassword(userPassword, userConfirmPassword);
	if(passwordStatus == 0){
		return 0;
	}
	var mobileStatus = fnCheckMobile(userMobileNumber);
	if(mobileStatus == 0){
		return 0;
	}
	
	document.getElementById("myFormRegister").submit();		
}

function fnConfirmPassword(userPassword, userConfirmPassword){
	if(userPassword != userConfirmPassword){
		alert("Passwords should match");
		return 0;
	}
	return 1;
}

function fnCheckMobile(userMobileNumber){
	if(userMobileNumber.length != 10){
		alert("Mobile number should be of 10 digits");
		return 0;
	}
	return 1;
}