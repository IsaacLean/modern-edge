/*var $showcase = $('#showcase');

$showcase.masonry({
    columnWidth: 190,
    itemSelector: '.item'
});

$(window).resize(function() {
    console.log($('.container').width());
    console.log($('.container').height());
});*/

$(function(){
    $('.redFilter').click(function(){
        //$('.red').fadeOut();
        $('.red').toggle('slow');
    });
});
