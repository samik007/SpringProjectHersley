function fnOpenPopup(id){
	window.open("/SpringProjectHersley/" + id, 'window', 'width=650,height=400');
}

function fnSubmitNewAdmission(){
	var firstName = document.getElementById("firstName").value;
	if(firstName == ""){
		alert("Please enter the first name");
		return;
	}
	
	var fatherName = document.getElementById("fatherName").value;
	if(fatherName == ""){
		alert("Please enter the father's Name");
		return;
	}
	
	var datepicker = document.getElementById("datepicker").value;
	if(datepicker == ""){
		alert("Please enter the DOB");
		return;
	}
	
	var gender = document.getElementById("gender").value;
	if(gender == "pleaseSelect"){
		alert("Please enter the gender");
		return;
	}
	
	var lastName = document.getElementById("lastName").value;
	if(lastName == ""){
		alert("Please enter the Last Name");
		return;
	}
	
	var diffAbled = document.getElementById("diffAbled").value;
	if(diffAbled == "differentlyAbled"){
		alert("Please enter the Differently Abled Status");
		return;
	}
	
	var course = document.getElementById("course").value;
	if(course == "courseApplied"){
		alert("Please enter the course");
		return;
	}
	
	var bloodGroup = document.getElementById("bloodGroup").value;
	if(bloodGroup == "bloodGroup"){
		alert("Please enter the Blood Group");
		return;
	}
	
	var contact = document.getElementById("contact").value;
	if(contact == ""){
		alert("Please enter the Contact Number");
		return;
	}
	
	var street1 = document.getElementById("street1").value;
	if(street1 == ""){
		alert("Please enter the street1");
		return;
	}
	
	var country = document.getElementById("country").value;
	if(country == ""){
		alert("Please enter the country");
		return;
	}
	
	var city = document.getElementById("city").value;
	if(city == ""){
		alert("Please enter the city");
		return;
	}
	
	var email = document.getElementById("email").value;
	if(email == ""){
		alert("Please enter the email");
		return;
	}
	
	var street2 = document.getElementById("street2").value;
	if(street2 == ""){
		alert("Please enter the street2");
		return;
	}
	
	var state = document.getElementById("state").value;
	if(state == ""){
		alert("Please enter the state");
		return;
	}
	
	var zipcode = document.getElementById("zipcode").value;
	if(zipcode == ""){
		alert("Please enter the zipcode");
		return;
	}
	document.getElementById("formNewAdmission").submit();
}

function fnCheckInputNumber(id){
	var data = document.getElementById(id).value
	if (isNaN(data)) {
		alert("Input must be a number");
		return false;
	}
}

function fnResetNewAdmission(){
	document.getElementById("firstName").value = "";
	document.getElementById("fatherName").value = "";
	document.getElementById("datepicker").value = "";
	document.getElementById("gender").value = "pleaseSelect";
	document.getElementById("lastName").value = "";
	document.getElementById("diffAbled").value = "differentlyAbled";
	document.getElementById("course").value = "courseApplied";
	document.getElementById("bloodGroup").value = "bloodGroup";
	document.getElementById("contact").value = "";
	document.getElementById("street1").value = "";
	document.getElementById("country").value = "";
	document.getElementById("city").value = "";
	document.getElementById("email").value = "";
	document.getElementById("street2").value = "";
	document.getElementById("state").value = "";
	document.getElementById("zipcode").value = "";
}








