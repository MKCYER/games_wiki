$( document ).ready(function() {
    $('#cssmenu > ul > li > a').click(function() {
        $('#cssmenu li').removeClass('active');
        $(this).closest('li').addClass('active');
        var checkElement = $(this).next();
        if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
            $(this).closest('li').removeClass('active');
            checkElement.slideUp('normal');
        }
        if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
            $('#cssmenu ul ul:visible').slideUp('normal');
            checkElement.slideDown('normal');
        }
        if($(this).closest('li').find('ul').children().length == 0) {
            return true;
        } else {
            return false;
        }
    });
});


// Login Form
$(function() {
    var button = $('#loginButton');
    var box = $('#loginBox');
    var form = $('#loginForm');
    button.removeAttr('href');
    button.mouseup(function(lot) {
        box.toggle();
        button.toggleClass('active');
    });
    form.mouseup(function() {
        return false;
    });
    $(this).mouseup(function(lot) {
        if(!($(lot.target).parent('#loginButton').length > 0)) {
            button.removeClass('active');
            box.hide();
        }
    });
});

