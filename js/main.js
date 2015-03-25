$(function() {
	/*$(document).on("mousemove", function(event) {
  		console.log(event.pageX);
  		console.log(event.pageY);
	});*/

	$(window).resize(function() {
		$('#bg').width($(window).width());
		$('#bg').height($(window).height());
	});
});