/*	ttest = function() {
		alert("asdasdf");
	}

	check = function(param) {
		// 		공백없는 숫자와 대소문자
		xyy = /^[a-z0-9_-]{2,10}$/;
 		myRe = /^[a-z0-9]{2,10}$/;
		myRe = /^[a-z0-9]$/; 

		if(xyy.test($.trim(param)) == false) {
			alert("공백없는 숫자와 대소문자만 입력 가능합니다.");
			$("#ifcgName").focus();
			return false;
		} else {
// 			by pass
		}

	}*/
	
	/* register */	
//	checkId = function(obj) {
//		valId = /^[a-zA-Z0-9-_\.]{4,15}$/;		// 		영대소문자, 숫자, 특수문자(-_.)를 포함한 4~15자리만 입력 가능
//			if(valId.test($.trim(obj.val())) == false) {
//
////			alert("아이디는 영대소문자, 숫자, 특수문자(-_.)를 포함한 4~15자리만 입력 가능합니다.(공백 제외)");
//
//			obj.removeClass("validation");
//	        obj.removeClass("is-valid");
//	        obj.addClass("is-invalid");
//            obj.parent().append("<div class='p-2 text-danger validation'>아이디는 영대소문자, 숫자, 특수문자(-혹은_혹은.)를 포함한 4~15자리까지 입력해주세요.(공백 제외).</div>");
//			obj.focus();
//			obj.alertShown = true; // 추가된 코드: alert가 이미 표시되었음을 표시
//				return false;
//				
//		}  else {
//
//	        obj.addClass("is-valid");
//	        obj.removeClass("is-invalid");
//		} 
//}	

	checkId = function(obj) {
		valId = /^(?=.*[a-zA-Z])[-a-zA-Z0-9_.]{4,15}$/;
			if(valId.test($.trim(obj.val())) == false) {



			obj.removeClass("validation");
	        obj.removeClass("is-valid");
	        obj.addClass("is-invalid");
            obj.parent().append("<div class='p-2 text-danger validation'>아이디는 영대소문자, 숫자, 특수문자(-혹은_혹은.)를 포함한 4~15자리까지 입력해주세요.(공백 제외).</div>");
			obj.focus();
			obj.alertShown = true; 
				return false;
				
		}  else {

	        obj.addClass("is-valid");
	        obj.removeClass("is-invalid");
		} 
}	


$("#id").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});



// password
		checkPassword = function(obj) {
	
		valPassword = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/; 	// 비밀번호 체크 (특수문자 포함) 8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합
			if(valId.test($.trim(obj.val())) == false) {
			alert("영어소문자, 숫자로 2~10자리 이내로 입력해주세요. ");
			obj.focus();
			return false;
		} else {
// 			by pass
		} 
	
}
$("#password").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});
	
//	 name
	checkName = function(obj) {
		valName = /^[a-zA-Zㄱ-힣][a-zA-Zㄱ-힣 ]*$/;			// 		한글, 영문							

		if(valName.test($.trim(obj.val())) == false) {
			alert("한글 혹은 영문만 입력해주세요.");
			obj.focus();
			return false;
		} else {
// 			by pass
		}

	}
	$("#name").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});


// nickname
	checkNickname = function(obj) {
		
		valNickname = /^[a-zA-Zㄱ-힣][a-zA-Zㄱ-힣 ]*$/;			// 		한글, 영문
		if(valNickname.test($.trim(obj.val())) == false) {
			alert("한글 혹은 영문만 입력해주세요..");
			obj.focus();
			return false;
		} else {
// 			by pass
		}
	
}
$("#nickname").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});


// email
	checkEmail = function(obj) {
	
		valEmail =  /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;	// 이메일 체크 정규식
		if(valEmail.test($.trim(obj.val())) == false) {
			alert("이메일 형식에 맞게 입력하세요.");
			obj.focus();
			return false;
		} else {
// 			by pass
		}
	
}
$("#email").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

// address
	checkAddress = function(obj) {
	
		valAddress = /[^?a-zA-Z0-9/]/;						// 한글포함 특수문자와 공백
		if(valAddress.test($.trim(obj.val())) == false) {
			alert("형식에 맞게 입력하세요.");
			obj.focus();
			return false;
		} else {
// 			by pass
		}
}

	$("#address").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});

// phone
	checkPhone = function(obj) {
	
		valPhone = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;			//  핸드폰 번호 체크
		if(valPhone.test($.trim(obj.val())) == false) {
			alert("형식에 맞게 입력하세요.");
			obj.focus();
			return false;
		} else {
// 			by pass
		}
	
}
$("#phone").on("keydown", function(event) {
    if (event.keyCode === 32) { // 스페이스바의 keyCode는 32입니다
        event.preventDefault();
    }
});






	