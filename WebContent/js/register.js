$(document).ready(function() {
	var index = 1;
	var change = 1;
	$("#div_change").click(function() {
		$(".code").attr("src","VaildateCodeServlet?s="+(change++));
	});
	$("#div_codeimg").click(function() {
		$(".code").attr("src","VaildateCodeServlet?s="+(change++));
		
	});
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
		$("#succ1").fadeOut();
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
		$("#succ1").fadeOut();
		
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
		$("#succ1").fadeOut();
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
		$("#succ1").fadeOut();
	});

	$("#validcode").blur(function() {
		if($("#validcode").val()==""){
			$("#div_code").addClass("has-error");
			$("#code_tip").text("验证码不能为空");
			$("#code_tip").fadeIn();
		} else{
			$.ajax({
				url : "CodeCheckServlet",
				type : "post",
				data : {
					code : $("#validcode").val()
				},
				success : function(data) {
					if("success" != data){
						$("#div_code").addClass("has-error");
						$("#code_tip").text("验证码错误");
						$("#code_tip").fadeIn();
						$("#succ5").fadeOut();
					}
					else{
						$("#succ5").fadeIn();
							
					}
				}

			});
		}
	});
	$("#validcode").focus(function() {
		$("#div_codeimg").show();
		$("#div_change").show();
		$("#div_code").removeClass("has-error");
		$("#code_tip").hide();
		$("#succ5").fadeOut();
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
		if($("#validcode").val()==""){
			$("#div_code").addClass("has-error");
			$("#code_tip").text("验证码不能为空");
			$("#code_tip").fadeIn();
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
						$("#reg1").click();
					} else {
						alert("注册失败");
					}
				}
			});
		}

	});
	$("#reg1").click(function() {
		var waittime = 5;
		var wait = setInterval(function() {
			if((--waittime)==0){
				window.location.href = "index.jsp";
			}
			document.getElementById("waitlog").innerHTML = "注册成功,"+(waittime)+"秒后跳转到登陆界面";
		},1000);
		$("#wait").show();
	});
});