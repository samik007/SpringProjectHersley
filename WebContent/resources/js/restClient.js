function myFunction() {
	var userNamme = document.getElementById("userName").value;
	if(userNamme == ""){
		document.getElementById("spanNameId").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter User Name";
		return;
	}else{
		document.getElementById("spanNameId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var dob = document.getElementById("dob").value;
	if(dob == ""){
		document.getElementById("spanDateOfBirth").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter DoB";
		return;
	}else{
		document.getElementById("spanDateOfBirth").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var description = document.getElementById("description").value;
	if(description == ""){
		document.getElementById("spanDescription").innerHTML = 
				"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Description";
		return;
	}else{
		document.getElementById("spanDescription").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	document.getElementById("myForm").submit();
}