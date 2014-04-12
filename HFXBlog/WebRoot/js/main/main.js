
$(document).ready(function(){
	$("#center").fadeOut(4000);
});

$(function() {
	$('.tooltip-demo').tooltip({
		selector: "[data-toggle=tooltip]",   container: "body" 
	});
});

$(function() {
	var w=$('.col-md-10').width();
	$('.col-md-10 img').each(function() {
		var img_w=$(this).width();
		var img_h=$(this).height();
		if(img_w>w) {
			var height=(img_h*w)/img_w;
			$(this).css({"width":w,"height":height});
		}
	});
});
