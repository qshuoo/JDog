$(document).ready(function() {
	
	getProduct(0)
	
	$(".pagelist").click(function() {
		$(".pagelist.active").removeClass("active");
		$(this).addClass("active");
		getProduct($(".active").val());

	});

	$("#pagego").click(function() {
		var index = $(".active").val();
		var list = $(".pagelist");
		var length = list.length;
		if (index < length - 1) {
			$(".pagelist.active").removeClass("active");
			$(list.get(index + 1)).addClass("active");
			getProduct($(".active").val());
		}
	});
	$("#pageback").click(function() {
		var index = $(".active").val();
		var list = $(".pagelist");
		var length = list.length;
		if (index > 0) {
			$(".pagelist.active").removeClass("active");
			$(list.get(index - 1)).addClass("active");
			getProduct($(".active").val());
		}
	});
	
	function getProduct(start){
		$.ajax({
			url : "GetProductsServlet",
			type : "post",
			data : {
				"start" : start
				},
			success : function(data) {
				var datas =  jQuery.parseJSON(data);
				$("#showProduct").html("");
				for (var i = 0; i < datas.length; i++) {
					var text = "<div class=\"col-sm-6 col-md-3\">"
								+ "<div class=\"thumbnail\">"
								+"<a href='ShowProductById?pid="+datas[i].pid+"' target='_blank'>"
								+ "<img border=\"1px\" src= \""+datas[i].pimg+"\" alt=\"加载失败\">"
								+"</a>"
								+ "<div class=\"caption\">"
								+ "<h5><strong>"
								+ datas[i].pname
								+ "</strong></h5>"
								+ "<h6>"
								+ datas[i].price
								+ "</h6>"
								+ "<a href=\"#\" class=\"btn btn-default\" role=\"button\">"
								+ "加入购物车"
								+ "</a>"
								+ "</div>"
								+ "</div>"
								+ "</div>";
					$("#showProduct").append(text);
				}
			}
		});
	}
});