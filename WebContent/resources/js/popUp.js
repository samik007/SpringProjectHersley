function fnSubmit(){
	var year = document.getElementById('year').value;
	if(year == ""){
		document.getElementById("yearSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Pass Year";
	return;
	}else{
		document.getElementById("yearSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var school = document.getElementById("school").value;
	if(school == ""){
		document.getElementById("schoolSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter School";
	return;
	}else{
		document.getElementById("schoolSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var marks = document.getElementById("marks").value;
	if(marks == ""){
		document.getElementById("marksSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Marks";
	return;
	}else{
		document.getElementById("marksSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}	
	document.getElementById("formClass10").submit();
}

function fnResetClass(){
	document.getElementById("year").value = "";
	document.getElementById("school").value = "";
	document.getElementById("marks").value = "";
} 

function fnSubmitClass12(){
	var year = document.getElementById('year').value;
	if(year == ""){
		document.getElementById("yearSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Pass Year";
	return;
	}else{
		document.getElementById("yearSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var school = document.getElementById("school").value;
	if(school == ""){
		document.getElementById("schoolSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter School";
	return;
	}else{
		document.getElementById("schoolSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var marks = document.getElementById("marks").value;
	if(marks == ""){
		document.getElementById("marksSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Marks";
	return;
	}else{
		document.getElementById("marksSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}	
	document.getElementById("formClass12").submit();
}

function fnCheckInputNumber(id){
	var data = document.getElementById(id).value
	if (isNaN(data)) {
		alert("Input must be a number");
		return false;
	}
}

function fnResetFatherDetail(){
	document.getElementById("name").value = "";
	document.getElementById("age").value = "";
	document.getElementById("salary").value = "";
}

function fnSubmitFatherDetail(){
	var name = document.getElementById('name').value;
	if(name == ""){
		document.getElementById("nameSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Fathers Name";
	return;
	}else{
		document.getElementById("nameSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var age = document.getElementById("age").value;
	if(age == ""){
		document.getElementById("ageSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Age";
	return;
	}else{
		document.getElementById("ageSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var salary = document.getElementById("salary").value;
	if(salary == ""){
		document.getElementById("salarySpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Salary";
	return;
	}else{
		document.getElementById("salarySpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	document.getElementById("formFatherIncomeSubmit").submit();	
}

function fnResetScholarship(){
	document.getElementById("scholarshipName").value = "";
	document.getElementById("scholarshipPercentage").value = "";
}

function fnSubmitScholarship(){
	var scholarshipName = document.getElementById('scholarshipName').value;
	if(scholarshipName == ""){
		document.getElementById("scholarshipNameSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Scholarship Name";
	return;
	}else{
		document.getElementById("scholarshipNameSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var scholarshipPercentage = document.getElementById("scholarshipPercentage").value;
	if(scholarshipPercentage == ""){
		document.getElementById("scholarshipPercentageSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Scholarship Percentage";
	return;
	}else{
		document.getElementById("scholarshipPercentageSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	document.getElementById("formScholarshipSubmit").submit();	
}

function fnResetStudentExchange(){
	document.getElementById("StudentExchangeName").value = "";
	document.getElementById("StudentExchangeFees").value = "";
}

function fnSubmitStudentExchange(){
	var StudentExchangeName = document.getElementById('StudentExchangeName').value;
	if(StudentExchangeName == ""){
		document.getElementById("StudentExchangeNameSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter StudentExchange Name";
	return;
	}else{
		document.getElementById("StudentExchangeNameSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var StudentExchangeFees = document.getElementById("StudentExchangeFees").value;
	if(StudentExchangeFees == ""){
		document.getElementById("StudentExchangeFeesSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Scholarship Percentage";
	return;
	}else{
		document.getElementById("StudentExchangeFeesSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	document.getElementById("formStudentExchangeSubmit").submit();
}

function fnResetExamDetails(){
	document.getElementById("examName").value = "";
	document.getElementById("examRank").value = "";
}

function fnSubmitExamDetails(){
	var examName = document.getElementById('examName').value;
	if(examName == ""){
		document.getElementById("examNameSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Exam Name";
	return;
	}else{
		document.getElementById("examNameSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	
	var examRank = document.getElementById("examRank").value;
	if(examRank == ""){
		document.getElementById("examRankSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/unchecked.gif'/> Enter Exam Rank";
	return;
	}else{
		document.getElementById("examRankSpanId").innerHTML = 
			"<img src='http://www.javatpoint.com/javascriptpages/images/checked.gif'/> ";
	}
	document.getElementById("formExamDetailsSubmit").submit();
}
