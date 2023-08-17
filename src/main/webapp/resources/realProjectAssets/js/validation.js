






$("#title").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

$("#ytbLink").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

$("#notificationAccept").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});


    checkTitle = function(obj, message) {
        var regExp = /^[a-zA-Zㄱ-ㅎ가-힣a-zA-Z0-9]{1,30}$/;

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
    
        checkDescr = function(obj, message) {
        var regExp = /^[가-힣a-zA-Z0-9]{1,85}$/;

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

        checkYtbLink = function(obj, message) {
//        var regExp = /^(((http(s?))\:\/\/)?)([0-9a-zA-Z\-]+\.)+[a-zA-Z]{2,6}(\:[0-9]+)?(\/\S*)?$/
        var regExp = /^https:\/\/youtu\.be\/[0-9a-zA-Z!@#$%^&*()-_=+[\]{}|;:'",.<>?/`~]{4,150}$/;

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










