$(document).ready(function() {
	$("#card1,#card2,#card3,#card4").mouseenter(function() {
		$(this).css("background-color", "black");
	});
	$("#card1").mouseleave(function() {
		$("#card1").css("background-color", "#17A2B8");
	});
	$("#card2").mouseleave(function() {
		$("#card2").css("background-color", "#28A745");
	});
	$("#card3").mouseleave(function() {
		$("#card3").css("background-color", "#BD4147");
	});
	$("#card4").mouseleave(function() {
		$("#card4").css("background-color", "#FFC107");
	});
	
});