/*var $showcase = $('#showcase');

$showcase.masonry({
    columnWidth: 190,
    itemSelector: '.item'
});*/

$(function(){
    $(window).resize(function() {
        console.log($('.container').width());
        console.log($('.container').height());
    });
    
    $('.redFilter').click(function(){
        //$('.red').fadeOut();
        $('.red').toggle('slow');
    });
});
