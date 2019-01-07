function myEditSubmit() {
	document.getElementById("min_curve").disabled = false;
	document.getElementById("speed").disabled = false;
	document.getElementById("btnSubmit").disabled = false;
}

function myDisplaySubmit() {
	var curve = document.getElementById("min_curve").value;
	if(curve == ""){
		alert("Curve field cannot be blank");
		return;
	}
	var speed = document.getElementById("speed").value;
	if(speed == ""){
		alert("Speed field cannot be blank");
		return;
	}
	var eqp_id = document.getElementById("eqp_id").value;
	if(eqp_id == ""){
		alert("Eqp ID field cannot be blank");
		return;
	}
	document.getElementById("displayForm").submit();
}

function toggleTable() {
	if (document.getElementById("div1").style.display == "block") {
		document.getElementById("div1").style.display = "none";
	} else {
		document.getElementById("div1").style.display = "block";
	}
}