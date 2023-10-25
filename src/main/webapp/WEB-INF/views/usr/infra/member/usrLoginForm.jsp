<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="resources/logRegAssets/css/style.css">

<!-- bs css -->
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
								<h2 class="text-uppercase text-center mb-5">로그인</h2>

								<form name="form" method="post">

									<div class="form-outline mb-4">
										<input type="text" class="form-control" id="id" name="id" value="managerSong" >
										<label class="form-label" for="id">Your Id</label>
									</div>
									
									<div class="form-outline mb-4">
										<input type="password" class="form-control" id="password" name="password" value="managerSong" > 
										<label class="form-label" for="password">Password</label>
									</div>

									

									<div class="d-flex justify-content-center">
										<button type="button"
											class="btn btnLogin btn-success btn-block btn-lg gradient-custom-4 text-body">로그인</button>
									</div>
									
									<!-- kakao 로그인 버튼 -->
									<ul>
										<li onclick="kakaoLogin();">
									      <a href="javascript:void(0)">
									          <span>카카오 로그인</span>
									      </a>
										</li>
										<li onclick="kakaoLogout();">
									      <a href="javascript:void(0)">
									          <span>카카오 로그아웃</span>
									      </a>
										</li>
									</ul>
									
									<!-- naver 로그인 버튼 -->
									<ul>
										<li>
									      <!-- 아래와같이 아이디를 꼭 써준다. -->
									      <a id="naverIdLogin_loginButton" href="javascript:void(0)">
									          <span>네이버 로그인</span>
									      </a>
										</li>
										<li onclick="naverLogout(); return false;">
									      <a href="javascript:void(0)">
									          <span>네이버 로그아웃</span>
									      </a>
										</li>
									</ul>


									

									<p class="text-center text-muted mt-5 mb-0">
										계정이 없으신가요? <a href="usrRegisterForm"
											class="fw-bold text-body"><u>Register here</u></a>
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
	
	<!-- kakao 로그인 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
	<!-- naver 로그인 -->
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>	
    <script src="resources/logRegAssets/js/validation.js"></script>

	
<!--  kakao 로그인 스크립트 start-->
	<script>
	Kakao.init('881f6f927d6d8561947492af35f746f5'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }
	//카카오로그아웃  
	function kakaoLogout() {
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	  }  
	</script>
<!-- kakao 로그인 스크립트 end -->

<!-- 네이버 로그인 스크립트 start -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<script>

var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "80mdf88flkWWJT1f93Tz", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8181/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
	
	
}
</script>
<!-- 네이버 로그인 스크립트 end -->


<script>
	

	var objId = $("#id");

	var objPassword = $("#password");

	
	validationInst = function() {
		if(validationUpdt() == false) return false;
	}
	
	validationUpdt = function() {

		if(checkId(objId) == false) return false;

		if(checkPassword(objPassword) == false) return false;


	}
	

/* 	
	$(".btnLogin").on("click", function(){
		
		if(validationInst() == false) return false;	
		$("form[name=form]").attr("action","/indexUsrView").submit();
		
	}); */
	
	
	
	$(".btnLogin").on("click", function(){
		
		if(validation() == false) return false;
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/loginUsrProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(),
				"password" : $("#password").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/indexUsrView";
				} else {
					alert("존재하지 않는 회원입니다.");
					$("#password").val("");
					$("#password").focus();
					
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});


	validation = function() {
		// if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
		// if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
	}
	

	
	</script>
		
</body>

</html>