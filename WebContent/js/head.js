$(document).ready(function() {
	if(username == "null"){
		$(".dropdown").hide();
		$(".tologin").show();
	}
	else{
		$(".tologin").hide();
		$(".dropdown").show();
		
	}
});