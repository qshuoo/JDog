$(document).ready(function() {
	$(".pagelist").click(function() {
		$(".active").removeClass("active");
		$(this).addClass("active");
	});
	

	$("#pagego").click(function() {
		var index = $(".active").val();
		var list = $(".pagelist");
		var length = list.length;
		if(index < length - 1) {
			$(".active").removeClass("active");
			$(list.get(index+1)).addClass("active");

		}
	});
	$("#pageback").click(function() {
		var index = $(".active").val();
		var list = $(".pagelist");
		var length = list.length;
		if(index > 0) {
			$(".active").removeClass("active");
			$(list.get(index-1)).addClass("active");

		}
	});
});