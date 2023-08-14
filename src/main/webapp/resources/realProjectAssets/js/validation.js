






$("#videoTitle").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

$("#ytb").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

$("#notificationAccept").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});


    checkVideoTitle = function(obj, message) {
        var regExp = /^[가-힣a-zA-Z]{1,30}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            obj.addClass("is-valid");
        }
    }
    
        checkDescription = function(obj, message) {
        var regExp = /^[가-힣a-zA-Z]{1,85}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            obj.addClass("is-valid");
        }
    }

        checkYtb = function(obj, message) {
        var regExp = /^(((http(s?))\:\/\/)?)([0-9a-zA-Z\-]+\.)+[a-zA-Z]{2,6}(\:[0-9]+)?(\/\S*)?$/

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            obj.addClass("is-valid");
        }
    }
    
        checkNotificationAccept = function(obj, message) {
        var regExp = /^[동의합니다]+$/

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            obj.addClass("is-valid");
        }
    }    










