$(document).ready(function() {
	if($("#judge").text() == ""){
		$("#name_control").hide();
		$("#login_control").show();
	} else {
		$("#name_control").show();
		$("#login_control").hide();
	}
});