$(document).ready(function() {
    $('.minus').click(function () {
        var $input = $(this).parent().find('input');
        var count = parseInt($input.val()) - 1;
        count = count < 1 ? 1 : count;
        $input.val(count);
        $input.change();
        return false;
    });
    $('.plus').click(function () {
        var $input = $(this).parent().find('input');
        $input.val(parseInt($input.val()) + 1);
        $input.change();
        return false;
    });
});
// about company read more 	
$(document).ready(function() {
var height = $('.read-more').css('height'); 
 $('.about-company a').click(function(){
    var height = $('.read-more').css('height');
    if (height == "108px"){ $('.read-more').animate({'height':'220px'},1000);
        $('.about-company a').text("свернуть...");
    };
    // var height = $('.read-more').css('height');
    if(height != "108px"){
        $('.read-more').animate({'height':'108px'},1000);   
    
    $('.about-company a').text("читать далее...");
};
 });

});

// слайдер
$(document).ready(function() {
var slideWidth=659;
var sliderTimer;
function prevSlide(){
    var currentSlide=parseInt($('.slider-elem').data('current'));
    currentSlide--;
    if(currentSlide<0)
    {
        currentSlide=$('.slider-elem').children().size()-1;   
    }
    $('.slider-elem').animate({left: -currentSlide*slideWidth},659).data('current',currentSlide);
}
$(function(){
$('.slider-elem').width($('.slider-elem').children().size()*slideWidth);
    sliderTimer=setInterval(nextSlide,5000);
    $('#slider').hover(function(){
        clearInterval(sliderTimer);
    },function(){
        sliderTimer=setInterval(nextSlide,5000);
    });
    $('#next').click(function(){
        clearInterval(sliderTimer);
        nextSlide();
        sliderTimer=setInterval(nextSlide,5000);
    });
    $('#pre').click(function(){
        clearInterval(sliderTimer);
        prevSlide();
        sliderTimer=setInterval(nextSlide,5000);
    });
});

function nextSlide(){
    var currentSlide=parseInt($('.slider-elem').data('current'));
    currentSlide++;
    if(currentSlide>=$('.slider-elem').children().size())
    {
        currentSlide=0;   
    }
    $('.slider-elem').animate({left: -currentSlide*slideWidth},659).data('current',currentSlide);
}
});
/*конец слайдера*/
/*оформление заказа */
$(document).ready(function(){
    // alert($('#select_order :selected').val());
    $('#select_order').change(function(){
           if ($('#select_order :selected').val() == 0) {
                 $('#address').slideUp(2000);
            };
    if ($('#select_order :selected').val() == 1) {
        $('#address').slideDown(2000);
    };
    });
  
})
/*конец оформление заказа */