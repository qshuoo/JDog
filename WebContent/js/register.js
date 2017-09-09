$(document).ready(function(){
	
	$("#name").blur(function() {
		if($("#name").val() == "") {
			$("#div_name").addClass("has-error");
			$("#name_tip").fadeIn();
		}
	});
	$("#name").focus(function() {
		$("#div_name").removeClass("has-error");
		$("#name_tip").hide();
	});
	
	$("#pwd").blur(function() {
		if($("#pwd").val() == "") {
			$("#div_pwd").addClass("has-error");
			$("#pwd_tip").fadeIn();
		}
	});
	$("#pwd").focus(function() {
		$("#div_pwd").removeClass("has-error");
		$("#pwd_tip").hide();
	});
	
	$("#confirm").blur(function() {
		if($("#confirm").val() != $("#pwd").val()) {
			$("#div_confirm").addClass("has-error");
			$("#confirm_tip").fadeIn();
		}
	});
	$("#confirm").focus(function() {
		$("#div_confirm").removeClass("has-error");
		$("#confirm_tip").hide();
	});
	
	$("#phone").blur(function() {
		var regEx = new RegExp(/^1[0-9]{10}$/);
		if(!regEx.test($("#phone").val())) {
			$("#div_phone").addClass("has-error");
			$("#phone_tip").fadeIn();
		}
	});
	$("#phone").focus(function() {
		$("#div_phone").removeClass("has-error");
		$("#phone_tip").hide();
	});
	

});