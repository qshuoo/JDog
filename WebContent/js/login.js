$(document).ready(function() {
	var index = 1;
	function toimg() {
		$("#img" + index).toggle();
		index++;
		if (index > 4) {
			index = 1;
		}
		$("#img" + index).show();
	}
	;
	toimg();
	var time = setInterval(toimg, 2000);
	$("#name").blur(function() {
		if ($("#name").val() == "") {
			$("#div_name").addClass("has-error");
			$("#name_tip").fadeIn();
		}
	});
	$("#name").focus(function() {
		$("#div_name").removeClass("has-error");
		$("#name_tip").hide();
		$("#myAlert").fadeOut();
	});
	$("#pwd").blur(function() {
		if ($("#pwd").val() == "") {
			$("#div_pwd").addClass("has-error");
			$("#pwd_tip").fadeIn();
		}
	});
	$("#pwd").focus(function() {
		$("#div_pwd").removeClass("has-error");
		$("#pwd_tip").hide();
		$("#myAlert").fadeOut();
	});
	$("#login").click(function() {
		if ($("#name").val() != "" && $("#pwd").val() != "") {
			$.ajax({
				url : "LoginServlet",
				tyle : "post",
				data : {
					uname : $("#name").val(),
					pwd : $("#pwd").val()
				},
				success : function(data) {
					if ("success" == data) {
						window.location.href = "index.jsp";
					} else {
						$("#myAlert").show();
					}
				}
			});
		} else {
			if ($("#name").val() == "") {
				$("#div_name").addClass("has-error");
				$("#name_tip").fadeIn();
			}
			if ($("#pwd").val() == "") {
				$("#div_pwd").addClass("has-error");
				$("#pwd_tip").fadeIn();
			}
		}
	});
});