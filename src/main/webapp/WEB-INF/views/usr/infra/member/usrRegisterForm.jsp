<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="resources/logRegAssets/css/style.css">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.css"
	rel="stylesheet" />
</head>

<body>
	<section class="vh-100 bg-image" style="background-color : black;" >
		<div class="mask d-flex align-items-center h-100 gradient-custom-3">
			<div class="container h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col-12 col-md-9 col-lg-7 col-xl-6">
						<div class="card" style="border-radius: 15px;">
							<div class="card-body p-5">
								<h2 class="text-uppercase text-center mb-5">계정 만들기</h2>

								<form name="form" method="post">

									<div class="form-outline mb-4">
									    <input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id}"/>" >
										<label class="form-label" for="id">아이디</label>
									</div>
					                 <div class="valid-feedback">
					                    사용 가능한 아이디입니다.
					                  </div>
					                 <div class="invalid-feedback">
					                    사용할 수 없는 아이디입니다.
					                </div>
									
									<div class="form-outline mb-4">
										<input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password}"/>" > 
										<label class="form-label" for="password">비밀번호</label>
									</div>				
									
									<div class="form-outline mb-4">
										<input type="password" class="form-control" id="rePassword" name="rePassword" > 
										<label class="form-label" for="rePassword">비밀번호 확인</label>										
									</div>							
									<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
									<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>

									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name}"/>" > 
										<label class="form-label" for="name">이름</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="nickname" name="nickname" value="<c:out value="${item.nickname}"/>" >
										<label class="form-label" for="nickname">닉네임</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="email" name="email" value="<c:out value="${item.email}"/>" > 
										<label class="form-label" for="email">이메일</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="address" name="address" value="<c:out value="${item.address}"/>" > 
										<label class="form-label" for="address">주소</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone}"/>" > 
										<label class="form-label" for="phone">연락처</label>
									</div>

									<div class="d-flex justify-content-center">
										<button type="button"
											class="btn btnAdd btn-success btn-block btn-lg gradient-custom-4 text-body">회원가입</button>
									</div>

									<p class="text-center text-muted mt-5 mb-0">
										이미 가입하셨나요? <a href="usrLoginForm"
											class="fw-bold text-body">Login here</a>
									</p>

								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>		
    <script src="resources/logRegAssets/js/validation.js"></script>
	<script>
	
	var objId = $("#id");
	var objPassword = $("#password");
	var objPasswordValue = $("#passwordValue");
	var objName = $("#name");
	var objNickname = $("#nickname");
	var objEmail = $("#email");
	var objAddress = $("#address");
	var objPhone = $("#phone");
	
	
	
// 	var idSuccess = 0;
	
	validationInst = function() {
		if(validationUpdt() == false) return false;
	}
	
	validationUpdt = function() {
		if(checkId(objId) === false) return false;
		if(checkPassword(objPassword) === false) return false;
		if(checkName(objName) === false) return false;
		if(checkNickname(objNickname) === false) return false;
		if(checkEmail(objEmail) === false) return false;
		if(checkAddress(objAddress) === false) return false;
		if(checkPhone(objPhone) === false) return false;

	}
	

	


	
	


//     if (!checkId(objId)) {
//         return false;
//     }

    
    // AJAX 요청 수행
//     $.ajax({
//         async: true,
//         cache: false,
//         type: "post",
//         url: "/checkIdProc",
//         data: { "id": obj.val().trim() },
//         success: function(response) {
//             if (response.rt === "available") {

//                 $("#id").removeClass("border-danger");
//                 $("#id").siblings(".validation").remove();
//                 $("#id").parent().append("<div class='p-2 text-success validation'>사용 가능한 아이디입니다.</div>");
// //                 idajaxck = 0;
//             } else {

//                 $("#id").addClass("border-danger");
//                 $("#id").siblings(".validation").remove();
//                 $("#id").parent().append("<div class='p-2 text-danger validation'>사용 불가능한 아이디입니다.</div>");
//                 $("#id").focus();
// //                 idajaxck = 1;
//             }
//         },
//         error: function(jqXHR, textStatus, errorThrown) {
//             alert("ajaxUpdate " + textStatus + " : " + errorThrown);
//         }
//     });
// });
	$("#id").on("blur", function() {
    	var obj = $(this).val();
	
    $.ajax({
        async: true,
        cache: false,
        type: "post",
        url: "/checkIdProc",
        data: { "id": obj.val() },
        success: function(response) {
            if (response.rt === "available") {
            	if (!checkId(obj.val())) {
 		        	return false;
 		    	} else {
                    $("#valid").show();
                    $("#invalid").hide();
//                 idajaxck = 0;
 		    	}
            } else {
                $("#invalid").show();
                $("#valid").hide();

//                 idajaxck = 1;
            }
        },
        error: function(jqXHR, textStatus, errorThrown) {
            alert("ajaxUpdate " + textStatus + " : " + errorThrown);
        }
    });
});


// function test() {
//     var p1 = $("#password").val();
//     var p2 = $("#passwordCheck").val();
    
//     if(p1.length < 6) {
//             alert('입력한 글자가 8~16자 내여야 합니다.');
//             return false;
//         }
        
//         if( p1 != p2 ) {
//           alert("비밀번호불일치");
//           return false;
//         } else{
//           alert("비밀번호가 일치합니다");
// ;
//         }
//   }
  
  
// function test() {
//     var p1 = $("#password").val();
//     var p2 = $("#passwordCheck").val();
    
//     if (p1.length < 8 || p1.length > 16) {
//         alert('입력한 글자가 8~16자 내여야 합니다.'); // 글자 수 조건에 맞지 않을 때 알림 표시
//         return false;
//     }
        
//     if (p1 != p2) {
//         alert("비밀번호 불일치"); // 비밀번호 불일치 시 알림 표시
//         return false;
//     } else {
//         alert("비밀번호가 일치합니다"); // 비밀번호 일치 시 알림 표시
//     }
// }

  
  
  
  $("#password").on("blur", function(){
        $("#alert-success").hide();
        $("#alert-danger").hide();
        
            var pwd1=$("#password").val();
            var pwd2=$("#rePassword").val();
            if(pwd1 != "" || pwd2 != "") {
                if(pwd1 == pwd2){
                    $("#alert-success").show();
                    $("#alert-danger").hide();

                } else {
                    $("#alert-success").hide();
                    $("#alert-danger").show();

                }    
            }

    });
  
  
  
  
  
  
  
  

$(".btnAdd").on("click", function(){
	if(validationInst() === false) return false;	

//		if(idSuccess == 0) {
		$("form[name=form]").attr("action","/memberAdd").submit();
//		} else {
//			alert("중복 혹은 영대소문자, 숫자, 특수문자(-_.)를 포함한 4~15자리 이내가 아닙니다.")
//		}

});

	 
	
	
	</script>
		
</body>

</html>