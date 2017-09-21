$(document).ready(function() {
	if($("#judge").text() == ""){
		$("#name_control").hide();
		$("#login_control").show();
	} else {
		$("#name_control").show();
		$("#login_control").hide();
	}
	
	$(".head-list").mouseenter(function(){
		$(".head-list.active").removeClass("active");
		$(this).addClass("active");
	});
	$(".head-list").mouseleave(function(){
		$(this).removeClass("active");
	});
	

	
});