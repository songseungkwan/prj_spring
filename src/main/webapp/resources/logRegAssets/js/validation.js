//	ttest = function() {
//		alert("asdasdf");
//	}
//
//	check = function(param) {
//		// 		공백없는 숫자와 대소문자
//		xyy = /^[a-z0-9_-]{2,10}$/;
// 		myRe = /^[a-z0-9]{2,10}$/;
//		myRe = /^[a-z0-9]$/; 
//
//		if(xyy.test($.trim(param)) == false) {
//			alert("공백없는 숫자와 대소문자만 입력 가능합니다.");
//			$("#name").focus();
//			return false;
//		} else {
//// 			by pass
//		}
//	}
	
$("#id").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

$("#password").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

$("#name").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});
	
$("#nickname").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});	

$("#email").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

$("#address").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

$("#phone").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});


    checkId = function(obj, message) {
        var regExp = /^[A-Za-z0-9,_-]{4,15}$/;

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


// password
    checkPassword = function(obj, message) {
        var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*]).{8,20}$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }

// 비밀번호 확인
	checkPasswordVerify = function(obj, message) {
	    var objPw = $("#password");
	    var objPasswordVerify = objPw.val().trim();
	
	    if (objPw.val().trim() === objPasswordVerify) {
	        obj.removeClass("is-invalid");
	        return true;
	    } else {
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message);
	        return false;
	    }
	}
	
//	 name
	    checkName = function(obj, message) {
        var regExp = /^[a-zA-Zㄱ-힣][a-zA-Zㄱ-힣 ]*$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            
        }
    }

// nickname
	    checkNickname = function(obj, message) {
        var regExp = /^[a-zA-Zㄱ-힣][a-zA-Zㄱ-힣 ]*$/;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            
        }
    }

// email
    checkEmail = function(obj, message) {
        var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }

// address
   checkAddress = function(obj, message) {
        var regExp = /[^?a-zA-Z0-9/]/;		

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
            
        }
    }

// phone
   checkPhone = function(obj, message) {
        var regExp = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;;

        if (regExp.test($.trim(obj.val())) == false) {
            obj.addClass("is-invalid");
            obj.focus();
            $(".invalid-feedback").text(message);
            return false;
        } else {
            obj.removeClass("is-invalid");
        }
    }

    checkNull = function(obj, message) {
	    if ($.trim(obj.val()) === '') { // 공백 체크
	        obj.addClass("is-invalid");
	        obj.focus();
	        $(".invalid-feedback").text(message); // 공백 메시지
	        return false;
	    } else {
	        obj.removeClass("is-invalid");
	    }
	}






	