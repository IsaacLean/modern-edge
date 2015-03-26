$(function() {
	var processingInstance;

	/*$(document).on("mousemove", function(event) {
  		console.log(event.pageX);
  		console.log(event.pageY);
	});*/

	$(window).resize(function() {
		$('#bg').width($(window).width());
		$('#bg').height($(window).height());
	});

	$('div.grid a').click(function() {
		processingInstance = Processing.getInstanceById('bg');
		console.log('test');
		console.log(processingInstance.changeColor());
		//$('.test').fadeOut(3000);
		$('.test').addClass('hidden');
	});
});