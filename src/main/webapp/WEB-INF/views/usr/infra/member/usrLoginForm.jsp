<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com-->
    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> 로그인 & 회원가입 </title>

        <!-- CSS -->
        <link rel="stylesheet" href="resources/usrLoginSignupFormAssets/css/style.css">
                
        <!-- Boxicons CSS -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
                        
    </head>
    <body>
        <section class="container forms">
            <div class="form login">
                <div class="form-content">
                    <header>로그인</header>
                    <form >
                        <div class="field input-field">
                            <input type="text" placeholder="아이디" class="input">
                        </div>

                        <div class="field input-field">
                            <input type="password" placeholder="비밀번호" class="password">
                            <i class='bx bx-hide eye-icon'></i>
                        </div>

<!--                         <div class="form-link">
                            <a href="#" class="forgot-pass">비밀번호가 기억나지 않으신가요??</a>
                        </div> -->

                        <div class="field button-field" >
                            <button>로그인</button>
                        </div>
                    </form>

                    <div class="form-link">
                        <span>계정이 없으신가요? <a href="#" class="link signup-link">회원가입</a></span>
                    </div>
                </div>

                <div class="line"></div>

                <div class="media-options">
                    <a href="#" class="field facebook">
                        <i class='bx bxl-facebook facebook-icon'></i>
                        <span>페이스북 계정으로 로그인</span>
                    </a>
                </div>

                <div class="media-options">
                    <a href="#" class="field google">
                        <img src="resources/usrLoginSignupFormAssets/images/google.png" alt="" class="google-img">
                        <span>구글 계정으로 로그인</span>
                    </a>
                </div>

            </div>

            <!-- Signup Form -->

            <div class="form signup">
                <div class="form-content">
                    <header>회원가입</header>
                    <form name="form" method="post">
                        <div class="field input-field">
                            <label for="name" class="col-sm-2 col-form-label">이름</label>
		                    <div class="col-sm-5">
		                      <input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name}"/>" >
		                    </div>
                        </div>
                        
                        <div class="field input-field">
                            <label for="id" class="col-sm-2 col-form-label">아이디</label>
		                    <div class="col-sm-5">
		                      <input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id}"/>" >
		                    </div>
                        </div>
                        
                        <div class="field input-field">
                            <label for="nickname" class="col-sm-2 col-form-label">별명</label>
		                    <div class="col-sm-5">
		                      <input type="text" class="form-control" id="nickname" name="nickname" value="<c:out value="${item.nickname}"/>" >
		                    </div>
                        </div>
                        
                        <div class="field input-field">
                            <label for="password" class="col-sm-2 col-form-label">비밀번호</label>
		                    <div class="col-sm-5">
		                      <input type="text" class="form-control" id="password" name="password" value="<c:out value="${item.password}"/>" >
		                    </div>
                        </div>
                        
                        <div class="field input-field">
                            <label for="email" class="col-sm-2 col-form-label">email</label>
		                    <div class="col-sm-5">
		                      <input type="text" class="form-control" id="email" name="email" value="<c:out value="${item.email}"/>" >
		                    </div>
                        </div>
                        
                        <div class="field input-field">
                            <label for="address" class="col-sm-2 col-form-label">주소</label>
		                    <div class="col-sm-5">
		                      <input type="text" class="form-control" id="address" name="address" value="<c:out value="${item.address}"/>" >
		                    </div>
                        </div>
                        
                        <div class="field input-field">
                            <label for="phone" class="col-sm-2 col-form-label">연락처</label>
		                    <div class="col-sm-5">
		                      <input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone}"/>" >
		                    </div>
                        </div>
                        


                        

                        <!-- <div class="field input-field">
                            <input type="password" placeholder="비밀번호 확인" class="password">
                            <i class='bx bx-hide eye-icon'></i>
                        </div> -->

                        <div class="field button-field ">
                            <button class="btn btnAdd btn-success"  type="button">가입하기</button>
                        </div>
                    </form>

                    <div class="form-link">
                        <span>이미 계정이 있으신가요? <a href="" class="link login-link">로그인</a></span>
                    </div>
                </div>

                <!-- <div class="line"></div>

                <div class="media-options">
                    <a href="#" class="field facebook">
                        <i class='bx bxl-facebook facebook-icon'></i>
                        <span>페이스북 계정으로 로그인</span>
                    </a>
                </div>

                <div class="media-options">
                    <a href="#" class="field google">
                        <img src="resources/usrLoginSignupFormAssets/images/google.png" alt="" class="google-img">
                        <span>구글 계정으로 로그인</span>
                    </a>
                </div> -->
cc
        </section>

        <!-- JavaScript -->
        <script src="resources/usrLoginSignupFormAssets/js/script.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
            <script src="resources/usrLoginSignupFormAssets/js/validation.js"></script>
	<script>
	
	$(".btnAdd").on("click", function(){
		
		
		
		
		
		
		$("form[name=form]").attr("action","/memberAdd").submit();
		
	});
	

	
/* 	$("#btnUpdt").on("click", function(){
		
		$("form[name=form]").attr("action","/codeGroupUpdt").submit();
		
	});
	
	$("#btnDel").on("click", function(){

		$("form[name=form]").attr("action","/codeGroupDel").submit();
		
	});
	
	$("#btnUel").on("click", function(){
		
		$("form[name=form]").attr("action","/codeGroupUel").submit();
		
	}); */
	
	</script>
        
        
        
        
    </body>
</html>