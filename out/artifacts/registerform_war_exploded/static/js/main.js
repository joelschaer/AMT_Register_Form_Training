
(function ($) {
    "use strict";


    /*==================================================================
    [ Focus Contact2 ]*/
    $('.input3').each(function(){
        $(this).on('blur', function(){
            if($(this).val().trim() != "") {
                $(this).addClass('has-val');
            }
            else {
                $(this).removeClass('has-val');
            }
        })    
    })


    /*==================================================================
    [ Validate ]*/

    /* we want to do this on the server size


    var first_name = $('.validate-input input[name="first-name"]');
    var last_name = $('.validate-input input[name="last-name"]');
    var email = $('.validate-input input[name="email"]');

    $('.validate-form').on('submit',function(){
        var check = true;

        if($(first_name).val().trim() == ''){
            showValidate(first_name);
            check=false;
        }

        if($(last_name).val().trim() == ''){
            showValidate(last_name);
            check=false;
        }

        if($(email).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
            showValidate(email);
            check=false;
        }

        return check;
    });


    $('.validate-form .input3').each(function(){
        $(this).focus(function(){
           hideValidate(this);
       });
    });

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }

    */
    
    

})(jQuery);