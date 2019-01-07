function fnSubmit(){
	var post = document.getElementById("post").value;
	if(post == ""){
		alert("Please enter a post to search");
		return;
	}
	if(!(post == "director" || post == "principal" || post == "tpo" || post == "cordinator")){
		alert("Please enter a post as director OR principal OR tpo OR cordinator");
		return;
	}
    
    $.ajax({
          type : "POST",
          contentType : "application/json",
          url : "/SpringProjectHersley/ajax",
          data : post,
          dataType : 'json',
          success : function(data) {
                console.log("SUCCESS: ", data);
                fnDisplay(data);
          },
          error : function(e) {
                console.log("ERROR: ", e);
          },
          done : function(e) {
                console.log("DONE");
          }
    });
}

function fnDisplay(data){
	var json = "<h4>Response</h4><pre>"
		+ JSON.stringify(data, null, 4) + "</pre>";
   alert(json);
}