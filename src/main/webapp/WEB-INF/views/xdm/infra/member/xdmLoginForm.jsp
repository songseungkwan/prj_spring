<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>King-Petition LOGIN</title>
    <!-- 부트스트랩 -->
	<link href="resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Template Main CSS File -->
	<link href="resources/assets/css/style.css" rel="stylesheet">
  	<!-- Google Fonts -->
  	<link href="https://fonts.gstatic.com" rel="preconnect">
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
</head>
<body>
  	<main>
		<div class="container">
      		<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        		<div class="container">
          			<div class="row justify-content-center">
            			<div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
              				<div class="d-flex justify-content-center py-4">
                				<a href="index.html" class="logo d-flex align-items-center w-auto">
                  					<!-- <img src="assets/img/logo.png" alt=""> -->
                  					<span class="d-none d-lg-block">King-Petition</span>
                				</a>
              				</div>
              				<form method="post" class="row g-3 needs-validation" novalidate>
              				<div class="card mb-3">
                				<div class="card-body">
                  					<div class="pt-4 pb-2">
                    					<h5 class="card-title text-center pb-0 fs-4">관리자 로그인</h5>
                    					<p class="text-center small">아이디와 비밀번호를 입력 후 로그인해 주세요.</p>
                  					</div>
                  				
                   						<div class="col-12">
                      						<label for="yourUsername" class="form-label">아이디</label>
                      						<input type="text" name="id" class="form-control" id="id" value="adminking" required>
                       						<div class="invalid-feedback">아이디를 입력해 주세요.</div>
                   						</div>
                    					<div class="col-12">
                      						<label for="yourPassword" class="form-label">비밀번호</label>
                      						<input type="password" name="password" class="form-control" id="password" value="abc123" required>
                      						<div class="invalid-feedback">비밀번호를 입력해 주세요.</div>
                    					</div>
                    					<div class="col-12">
                      						<div class="form-check">
                        						<input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        						<label class="form-check-label" for="rememberMe">아이디 저장</label>
                      						</div>
                    					</div>
                   						<div class="col-12 d-flex">
                   							<button class="btn btnLogin btn-outline-secondary w-50"  type="button" >로그인</button>
										<!-- onclick="location.href='indexXdmView'" -->
                   							
                   							<button class="btn btn-outline-secondary btnCancel w-50" type="button">뒤로</button>                    					
                    					</div>
                    					<div class="col-12">
                      						<p class="small mb-0">아이디가 없으신가요? <a href="xdmRegisterForm">회원가입</a></p>
                    					</div>
                  					
                				</div>
              				</div>
          				   </form>
            			</div>
          			</div>
        		</div>
   			</section>
   		</div>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<script src="resources/assets/js/main.js"></script>
	<script type="text/javascript">
	
		// 이전 버튼 스크립트
		document.querySelector('.btnCancel').addEventListener('click', function() {
	  		window.history.back();
		});
	
		$(".btnLogin").on("click", function(){
			
			if(validation() == false) return false;
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/loginXdmProc"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val(),
					"password" : $("#password").val()}
				,success: function(response) {
					if(response.rt == "success") {
						
						alert(response.rtMember.name);
						location.href = "/indexXdmView";
					} else {
						alert("그런 회원 없습니다.");
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