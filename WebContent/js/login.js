$(document).ready(function() {
	$("#login").click(function() {
		if ($("#uname").val() == "") {
			$(".nameinf").fadeIn();
		} else if ($("#pwd").val() == "") {
			$(".pwdinf").fadeIn();
		} else {
			$.ajax({
				url:"LoginServlet",
				type:"post",
				data:{uname:$("#uname").val(),pwd:$("#pwd").val()},
				success:function(data){
					if("success" == data){
						window.open("index.jsp");
					} else {
						$(".errinf").fadeIn();
					}
				}
			});
		}
	});
	$(".nameinf_close,.pwdinf_close,.errinf_close").mouseover(function() {
		this.style.color = "red";
	});
	$(".nameinf_close,.pwdinf_close,.errinf_close").mouseout(function() {
		this.style.color = "black";
	});
	$(".nameinf_close").click(function() {
		$(".nameinf").fadeOut();
	});
	$(".pwdinf_close").click(function() {
		$(".pwdinf").fadeOut();
	});
	$(".errinf_close").click(function() {
		$(".errinf").fadeOut();
	});
	$("#uname,#pwd").click(function() {
		$(".errinf").fadeOut();
		$(".pwdinf").fadeOut();
		$(".nameinf").fadeOut();
	});
});
