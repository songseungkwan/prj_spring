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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

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

<!-- 								<form name="form" method="post"> -->

<!-- 									<div class="form-outline mb-4"> -->
<%-- 									    <input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id}"/>" > --%>
<!-- 										<label class="form-label" for="id">아이디</label> -->
<!-- 									</div> -->
<!-- 					                 <div class="valid-feedback"> -->
<!-- 					                    사용 가능한 아이디입니다. -->
<!-- 					                  </div> -->
<!-- 					                 <div class="invalid-feedback"> -->
<!-- 					                    사용할 수 없는 아이디입니다. -->
<!-- 					                </div> -->
									
<!-- 									<div class="form-outline mb-4"> -->
<%-- 										<input type="password" class="form-control" id="password" name="password" value="<c:out value="${item.password}"/>" >  --%>
<!-- 										<label class="form-label" for="password">비밀번호</label> -->
<!-- 									</div>				 -->
									
<!-- 									<div class="form-outline mb-4"> -->
<!-- 										<input type="password" class="form-control" id="rePassword" name="rePassword" >  -->
<!-- 										<label class="form-label" for="rePassword">비밀번호 확인</label>										 -->
<!-- 									</div>							 -->
<!-- 									<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div> -->
<!-- 									<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div> -->

<!-- 									<div class="form-outline mb-4"> -->
<%-- 										<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name}"/>" >  --%>
<!-- 										<label class="form-label" for="name">이름</label> -->
<!-- 									</div> -->
									
<!-- 									<div class="form-outline mb-4"> -->
<%-- 										<input type="text" class="form-control" id="nickname" name="nickname" value="<c:out value="${item.nickname}"/>" > --%>
<!-- 										<label class="form-label" for="nickname">닉네임</label> -->
<!-- 									</div> -->
									
<!-- 									<div class="form-outline mb-4"> -->
<%-- 										<input type="text" class="form-control" id="email" name="email" value="<c:out value="${item.email}"/>" >  --%>
<!-- 										<label class="form-label" for="email">이메일</label> -->
<!-- 									</div> -->
									
<!-- 									<div class="form-outline mb-4"> -->
<%-- 										<input type="text" class="form-control" id="address" name="address" value="<c:out value="${item.address}"/>" >  --%>
<!-- 										<label class="form-label" for="address">주소</label> -->
<!-- 									</div> -->
									
<!-- 									<div class="form-outline mb-4"> -->
<%-- 										<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone}"/>" >  --%>
<!-- 										<label class="form-label" for="phone">연락처</label> -->
<!-- 									</div> -->

<!-- 									<div class="d-flex justify-content-center"> -->
<!-- 										<button type="button" -->
<!-- 											class="btn btnAdd btn-success btn-block btn-lg gradient-custom-4 text-body">회원가입</button> -->
<!-- 									</div> -->

<!-- 									<p class="text-center text-muted mt-5 mb-0"> -->
<!-- 										이미 가입하셨나요? <a href="usrLoginForm" -->
<!-- 											class="fw-bold text-body">Login here</a> -->
<!-- 									</p> -->

<!-- 								</form> -->

				<form class="needs-validation" name="form" method="post" novalidate>
			  		<div class="form-group">
			  			<label class="form-label" for="id"></label>
		   				<div class="position-relative has-icon-right">
			  				<input type="text" id="id" name="id" class="form-control input-shadow" placeholder="아이디" required>
			  				<div class="form-control-position"><i class="icon-user"></i></div>
			  				<div class="invalid-feedback"></div>
		   				</div>
		  			</div>
			  		<div class="form-group">
			  			<label class="form-label" for="password"></label>
			   			<div class="position-relative has-icon-right">
					  		<input type="password" id="password" name="password" class="form-control input-shadow" placeholder="비밀번호" required>
					  		<div class="form-control-position"><i class="icon-lock"></i></div>
					  		<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
			  		<div class="form-group">
			   			<label class="form-label" for="passwordVerify"></label>
			   			<div class="position-relative has-icon-right">
				  			<input type="password" id="passwordVerify" name="passwordVerify" class="form-control input-shadow" placeholder="비밀번호 확인" required>
				  			<div class="form-control-position"><i class="icon-lock"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
  			  		<div class="form-group">
			   			<label class="form-label" for="name"></label>
		   				<div class="position-relative has-icon-right">
				  			<input type="text" id="name" name="name" class="form-control input-shadow" placeholder="이름" required>
				  			<div class="form-control-position"><i class="icon-user"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
  			  		<div class="form-group">
			   			<label class="form-label" for="nickname"></label>
		   				<div class="position-relative has-icon-right">
				  			<input type="text" id="nickname" name="nickname" class="form-control input-shadow" placeholder="별명" required>
				  			<div class="form-control-position"><i class="icon-user"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
		  			<div class="form-group">
			   			<label class="form-label" for="email""></label>
			   			<div class="position-relative has-icon-right">
				  			<input type="text" id="email" name="email" class="form-control input-shadow" placeholder="이메일" required>
				  			<div class="form-control-position"><i class="icon-envelope-open"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
			  		<div class="form-group">
			   			<label class="form-label" for="address"></label>
			   			<div class="position-relative has-icon-right">
				  			<input type="text" id="address" name="address" class="form-control input-shadow" placeholder="주소" required>
				  			<div class="form-control-position"><i class="icon-envelope-open"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
  			  		<div class="form-group">
			   			<label class="form-label" for="phone"></label>
		   				<div class="position-relative has-icon-right">
				  			<input type="text" id="phone" name="phone" class="form-control input-shadow" placeholder="전화번호" required>
				  			<div class="form-control-position"><i class="icon-phone"></i></div>
				  			<div class="invalid-feedback"></div>
			   			</div>
			  		</div>
			  		
  			  		<div class="form-group">
			   			<label class="form-label" for="phone"></label>
		   				<div class="position-relative has-icon-right">
				  			<input type="text" id="type" name="type" class="form-control input-shadow" placeholder="" disabled>
				  			<div class="form-control-position"><i class="icon-phone"></i></div>
			   			</div>
			  		</div>
<br><br>

			 		<div class="d-flex justify-content-center">
						<button type="button" class="btn btnAdd btn-success btn-block btn-lg gradient-custom-4 text-body">회원가입</button>
					</div>


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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="resources/logRegAssets/js/validation.js"></script>
	<script>
	
	validationInst = function() {
		if(validationUpdt() == false) return false;
	}
	
	validationUpdt = function() {
	
			var objId = $("#id");
			var objPassword = $("#password");
			var objPasswordVerify = $("#passwordVerify");
			var objName = $("#name");
			var objNickname = $("#nickname");
			var objEmail = $("#email");
			var objAddress = $("#address");
			var objPhone = $("#phone");
		
	    if (checkId(objId, "아이디는 영대소문자, 숫자, 특수문자(-_.)를 포함한 4~15자리만 입력해주세요.") === false) return false;
	    if (checkPassword(objPassword, "비밀번호는 영대소문자,숫자,특수문자(!@#$%^&*),8~16자리 조합만 입력 가능합니다.") === false) return false;
	    if (checkPasswordVerify(objPasswordVerify, "비밀번호가 일치하지 않습니다.") === false) return false;
	    if (checkName(objName, "이름은 한글만 입력 가능합니다.") === false) return false;
	    if (checkEmail(objEmail, "유효한 이메일 주소를 입력해주세요.") === false) return false;
	    if (checkPhone(objPhone, "전화번호는 숫자만 입력해주세요.") === false) return false;
	}
	
// 회원가입시 아이디 중복체크
	$("#id").on("blur", function() {
	    var obj = $(this);
	    
	    if (checkId(obj, "아이디는 영대소문자, 숫자, 특수문자(-_.)를 포함한 4~15자리만 입력해주세요.") === false) {
			return false;
	    } else {
		    // AJAX 요청 수행
		    $.ajax({
		        async: true,
		        cache: false,
		        type: "post",
		        url: "/checkIdProc",
		        data: { "id": obj.val().trim() },
		        success: function(response) {
		            if (response.rt === "available") {
			            obj.removeClass("is-invalid");
			            obj.addClass("is-valid");
	            		obj.siblings(".invalid-feedback").text("사용 가능합니다.");
		            } else {
		                obj.removeClass("is-valid");
		                obj.addClass("is-invalid");
		                obj.focus();
		                obj.siblings(".invalid-feedback").text("사용 불가능합니다.");
		            }
		        },
		        error: function(jqXHR, textStatus, errorThrown) {
		            alert("ajaxUpdate " + textStatus + " : " + errorThrown);
		        }
		    });
    	}
	});
  
  
	$("#password").on("blur", function() {
	    var obj = $(this);
	    
	    if (checkId(obj, "비밀번호는 영대소문자,숫자,특수문자(!@#$%^&*),8~16자리 조합만 입력 가능합니다.") === false) {
			return false;
	    } else {
		    // AJAX 요청 수행
		    $.ajax({
		        async: true,
		        cache: false,
		        type: "post",
		        url: "/checkIdProc",
		        data: { "id": obj.val().trim() },
		        success: function(response) {
		            if (response.rt === "available") {
			            obj.removeClass("is-invalid");
			            obj.addClass("is-valid");
	            		obj.siblings(".invalid-feedback").text("사용 가능합니다.");
		            } else {
		                obj.removeClass("is-valid");
		                obj.addClass("is-invalid");
		                obj.focus();
		                obj.siblings(".invalid-feedback").text("사용 불가능합니다.");
		            }
		        },
		        error: function(jqXHR, textStatus, errorThrown) {
		            alert("ajaxUpdate " + textStatus + " : " + errorThrown);
		        }
		    });
    	}
	});
  

	// 회원가입 버튼 클릭 이벤트
$(".btnAdd").on("click", function(){
	if(validationInst() === false) return false;	
		$("form[name=form]").attr("action","/memberAdd").submit();

});
	 
	
	
	</script>
		
</body>

</html>