$(document).ready(function() {
	$("#card1").mouseenter(function() {
		$("#card1").css("background-color", "black");
	});
	$("#card2").mouseenter(function() {
		$("#card2").css("background-color", "black");
	});
	$("#card3").mouseenter(function() {
		$("#card3").css("background-color", "black");
	});
	$("#card4").mouseenter(function() {
		$("#card4").css("background-color", "black");
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
	$("#li1").mouseenter(function() {
		$("#li1").addClass("active");
	});
	$("#li1").mouseleave(function() {
		$("#li1").removeClass("active");
	});
	$("#li2").mouseenter(function() {
		$("#li2").addClass("active");
	});
	$("#li2").mouseleave(function() {
		$("#li2").removeClass("active");
	});
	$("#li3").mouseenter(function() {
		$("#li3").addClass("active");
	});
	$("#li3").mouseleave(function() {
		$("#li3").removeClass("active");
	});
	$("#li4").mouseenter(function() {
		$("#li4").addClass("active");
	});
	$("#li4").mouseleave(function() {
		$("#li4").removeClass("active");
	});
});