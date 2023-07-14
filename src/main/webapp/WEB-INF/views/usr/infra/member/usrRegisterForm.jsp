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
										<label class="form-label" for="id">Your Id</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password}"/>" > 
										<label class="form-label" for="password">Password</label>
									</div>									

									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name}"/>" > 
										<label class="form-label" for="name">Your Name</label>
									</div>
									
									
									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="nickname" name="nickname" value="<c:out value="${item.nickname}"/>" >
										<label class="form-label" for="nickname">Your Nickname</label>
									</div>
									


									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="email" name="email" value="<c:out value="${item.email}"/>" > 
										<label class="form-label" for="email">Your Email</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="address" name="address" value="<c:out value="${item.address}"/>" > 
										<label class="form-label" for="address">Your Address</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone}"/>" > 
										<label class="form-label" for="phone">Your Phone</label>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>		
    <script src="resources/logRegAssets/js/validation.js"></script>
	<script>
	
	var objId = $("#id");
	var objPassword = $("#password");
	var objName = $("#name");

	var objNickname = $("#nickname");

	var objEmail = $("#email");
	var objAddress = $("#address");
	var objPhone = $("#phone");
	
	
	
	var idSuccess = 0;
	
	validationInst = function() {
		if(validationUpdt() == false) return false;
	}
	
	validationUpdt = function() {
		if(checkId(objId) == false) return false;
		if(checkPassword(objPassword) == false) return false;
		if(checkName(objName) == false) return false;

		if(checkNickname(objNickname) == false) return false;

		if(checkEmail(objEmail) == false) return false;
		if(checkAddress(objAddress) == false) return false;
		if(checkPhone(objPhone) == false) return false;

	}
	
	$(".btnAdd").on("click", function(){
		
		
		if(idSuccess == 1) {
			$("form[name=form]").attr("action","/memberAdd").submit();
		} else {
			alert("333")
		}
		
		
		
		if(validationInst() == false) return false;	

		

		

		
	});
	

/* 	$('#id').on("blur",function() {
	    var id = $(this).val();
	    checkDuplicateId(id);
	});

	function checkDuplicateId(id) {
	    $.ajax({
	        async: true,
	        cache: false,
	        type: "post",
	        url: "/checkDuplicateId", // 중복 체크를 수행하는 서버의 URL로 변경
	        data: { "id": id
	        },
	        success: function(response) {
	            if (response.isDuplicate) {
	                $('#idCheckMessage').text('이미 사용 중인 아이디입니다.');
	            } else {
	                $('#idCheckMessage').text('사용 가능한 아이디입니다.');
	            }
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            $('#idCheckMessage').text('중복 체크에 실패했습니다.');
	        }
	    });
	} */
		 
// /* 	$("#id").on("blur", function(){

		
// 		$.ajax({
// 			async: true 
// 			,cache: false
// 			,type: "post"
// 			/* ,dataType:"json" */
// 			,url: "/checkIdProc"
// 			/* ,data : $("#formLogin").serialize() */
// 			,data : { "id" : $("#id").val()				}
// 			,success: function(response) {
// 				if($("#id").val()== null || $("#id").val()==""){
//     				alert("아이디를 입력하세요");
// 				}	${"#id"}.focus();l
//     			}
//     			else if(response.rt == "available") {
//     				alert("사용가능")
//     			} else {
//     				alert("중복");
//     			}
//     		}

// 			// 고정문구
// 			,error : function(jqXHR, textStatus, errorThrown){
// 				alert("ajaxUpdate " + jqXHR.textStatus + jqXHR.errorThrown);
// 			}
// 		});
// 	}); */
	
	
	$("#id").on("blur", function() {
	    var obj = $(this);

	    if (checkId(objId) == false) {
	        return false;
	    }
	    
	    // AJAX 요청 수행
	    $.ajax({
	        async: true,
	        cache: false,
	        type: "post",
	        url: "/checkIdProc",
	        data: { "id": obj.val() },
	        success: function(response) {
	            if (response.rt === "available") {
	            	
//  		    		alert("123")
	                obj.removeClass("is-invalid");
	                obj.addClass("is-valid");
	                obj.siblings(".validation").remove();
	                obj.parent().append("<div class='p-2 text-success validation'>사용 가능한 아이디입니다.</div>");
	                idSuccess = 1;
	            } else {
// 	            	alert("456")
	                obj.removeClass("is-valid");
	                obj.addClass("is-invalid");
	                obj.focus();
	                obj.siblings(".validation").remove();
	                obj.parent().append("<div class='p-2 text-danger validation'>사용 불가능한 아이디입니다.</div>");
	                idSuccess = 0;
	            }
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            alert("ajaxUpdate " + textStatus + " : " + errorThrown);
	        }
	    });
	});

	 
	
	
	</script>
		
</body>

</html>