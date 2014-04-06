
$(document).ready(function(){
	$("#center").hide(3000);
});

$(function() {
	$('.tooltip-demo').tooltip({
		selector: "[data-toggle=tooltip]",   container: "body"  
	});
});
