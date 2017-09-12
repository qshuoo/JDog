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
			$("#name_tip").text("用户名不能为空");
			$("#name_tip").fadeIn();
		} else {
			$.ajax({
				url : "RegCheckServlet",
				type : "post",
				data : {
					name : $("#name").val()
				},
				success : function(data) {
					if ("success" != data) {
						$("#div_name").addClass("has-error");
						$("#name_tip").text("用户名已存在");
						$("#name_tip").fadeIn();
					} else {
						$("#succ1").fadeIn();
					}
				}

			});
		}
	});
	$("#name").focus(function() {
		$("#div_name").removeClass("has-error");
		$("#name_tip").hide();
	});

	$("#pwd").blur(function() {
		if ($("#pwd").val() == "") {
			$("#div_pwd").addClass("has-error");
			$("#pwd_tip").fadeIn();
		} else {
			$("#succ2").fadeIn();
		}
	});
	$("#pwd").focus(function() {
		$("#div_pwd").removeClass("has-error");
		$("#pwd_tip").hide();
	});

	$("#confirm").blur(function() {
		if ($("#confirm").val() != $("#pwd").val()) {
			$("#div_confirm").addClass("has-error");
			$("#confirm_tip").fadeIn();
		} else {
			if($("#confirm").val() != ""){
				$("#succ3").fadeIn();
			}
		}
	});
	$("#confirm").focus(function() {
		$("#div_confirm").removeClass("has-error");
		$("#confirm_tip").hide();
	});

	$("#phone").blur(function() {
		var regEx = new RegExp(/^1[0-9]{10}$/);
		if (!regEx.test($("#phone").val())) {
			$("#div_phone").addClass("has-error");
			$("#phone_tip").fadeIn();
		} else {
			$("#succ4").fadeIn();
		}
	});
	$("#phone").focus(function() {
		$("#div_phone").removeClass("has-error");
		$("#phone_tip").hide();
	});

	$("#reg").click(function() {

		if ($("#name").val() == "") {
			$("#div_name").addClass("has-error");
			$("#name_tip").text("用户名不能为空");
			$("#name_tip").fadeIn();
		}
		if ($("#pwd").val() == "") {
			$("#div_pwd").addClass("has-error");
			$("#pwd_tip").fadeIn();
		}
		if ($("#phone").val() == "") {
			$("#div_phone").addClass("has-error");
			$("#phone_tip").fadeIn();
		}
		if ($("#confirm").val() != $("#pwd").val()) {
			$("#div_confirm").addClass("has-error");
			$("#confirm_tip").fadeIn();
		}
		if ($("div.has-error").length == 0) {
			$.ajax({
				url : "RegisterServlet",
				type : "post",
				data : {
					name : $("#name").val(),
					pwd : $("#pwd").val(),
					phone : $("#phone").val()
				},
				success : function(data) {
					if ("success" == data) {
						window.location.href = "index.jsp";
					} else {
						alert("注册失败");
					}
				}
			});
		}

	});
});