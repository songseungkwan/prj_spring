<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>King-Petition</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="resources/adminAssets/img/favicon.png" rel="icon">
  <link href="resources/adminAssets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <%@include file = "../include/includeCss.jsp"%>
  <!-- Template Main CSS File -->

</head>

<body>
  <!-- ======= Header ======= -->
  <%@include file = "../include/includeHeader.jsp"%>
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <%@include file = "../include/includeSidebar.jsp"%>
  <!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Form</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="memberXdmList">Home</a></li>
          <li class="breadcrumb-item active">Form</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

 		<div class="card">
            <div class="card-body">
            <h5 class="card-title">member</h5>
            <!-- Horizontal Form -->
              <form name="form" method="post">
                <div class="row mb-3 text-center">
                  <label for="seq" class="col-sm-2 col-form-label">seq</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" id="seq" name="seq" readonly value="<c:out value="${item.seq}"/>" ${empty item.seq ? 'disabled' : ''} >
                  </div>
                </div>
                
                <div class="row mb-3 text-center">
                  <label for="delNy" class="col-sm-2 col-form-label">delNy</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" id="delNy" name="delNy"  value="<c:out value="${item.delNy}"/>">
                  </div>
                </div>
				<div class="text-center">
                
                <div class="row mb-3 text-center">
				  <label for="name" class="col-sm-2 col-form-label">name</label>
				  <div class="col-sm-5">
				    <input type="text" class="form-control" id="name" name="name" value="${item.name}" >
				  </div>
				</div>
				
                <div class="row mb-3 text-center">
				  <label for="id" class="col-sm-2 col-form-label">id</label>
				  <div class="col-sm-5">
				    <input type="text" class="form-control" id="id" name="id" value="${item.id}" >
				  </div>
				</div>
				
                <div class="row mb-3 text-center">
				  <label for="nickname" class="col-sm-2 col-form-label">nickname</label>
				  <div class="col-sm-5">
				    <input type="text" class="form-control" id="nickname" name="nickname" value="${item.nickname}" >
				  </div>
				</div>
				
                <div class="row mb-3 text-center">
				  <label for="password" class="col-sm-2 col-form-label">password</label>
				  <div class="col-sm-5">
				    <input type="text" class="form-control" id="password" name="password" value="${item.password}" >
				  </div>
				</div>
				
                <div class="row mb-3 text-center">
				  <label for="email" class="col-sm-2 col-form-label">email</label>
				  <div class="col-sm-5">
				    <input type="text" class="form-control" id="email" name="email" value="${item.email}" >
				  </div>
				</div>
				
                <div class="row mb-3 text-center">
				  <label for="address" class="col-sm-2 col-form-label">address</label>
				  <div class="col-sm-5">
				  
				    <input type="text" class="form-control" id="address" name="address" value="${item.address}" >
				  </div>
				</div>
				
                <div class="row mb-3 text-center">
				  <label for="phone" class="col-sm-2 col-form-label">phone</label>
				  <div class="col-sm-5">
				    <input type="text" class="form-control" id="phone" name="phone" value="${item.phone}" >
				  </div>
				</div>																								
			        
			        <c:choose>
					    <c:when test="${empty item.seq}">
					        <button class="btnAdd btn btn-success" type="submit">insert</button>
					    </c:when>
					    <c:otherwise>
					        <button class="btn btn-success" id="btnUpdt" type="submit">update</button>
					        <button class="btn btn-danger" id="btnDel" type="submit">delete</button>
					        <button class="btn btn-warning" id="btnUel" type="submit">uelete</button>
					    </c:otherwise>
					</c:choose>   
			        
                </div>
              </form><!-- End Horizontal Form -->
             </div>
          </div>
		</main>

  <!-- ======= Footer ======= -->
  <%@include file = "../include/includeFooter.jsp"%>
  
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
<%@include file = "../include/includeJs.jsp"%>

  <!-- Template Main JS File -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

	<script>
	
	validationInst = function() {
		if(validationUpdt() == false) return false;
	}
	
	validationUpdt = function() {

		
		// 정규표현식 선언
		// 공백없는 숫자와 대소문자(한글 제외)
		myRe = /^[a-z0-9_-]{2,10}$/;
		/* 8. 영문자 대소문자, 숫자로만 구성 */
		myLe = /[a-zA-Z0-9]/;
		/* 최소 8자리 이상 숫자, 특수문자가 각각 1개 이상 (패스워드 체크시 활용) */
		myPe = /^(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/;
		/* 일반 이메일 주소 체크 */
		myEe = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
		/* 한글포함 특수문자와 공백 */
		myAe = [^?a-zA-Z0-9/]/;
		/* 휴대폰 번호 */
		myCe == /^\d{3}-\d{3,4}-\d{4}$/;
		
		
		
		
		
		
		
		if( myRe.test( $.trim( $("#name").val())) == false) {
			alert("공백없는 숫자와 대문자만 (한글 제외) 입력 가능합니다.")
			$("#name").focus();
			return false;
		} else {
// 			by pass 
		}
		
		
		if( myLe.test( $.trim( $("#nickname").val())) == false) {
			alert("영문자 대소문자, 숫자로만 입력 가능합니다.")
			$("#nickname").focus();
			return false;
		} else {
// 			by pass 
		}
		
		if( myPe.test( $.trim( $("#password").val())) == false) {
			alert("최소 8자리 이상 숫자, 특수문자가 각각 1개 이상 입력 가능합니다.")
			$("#password").focus();
			return false;
		} else {
// 			by pass 
		}
		
		if( myEe.test( $.trim( $("#email").val())) == false) {
			alert(" 일반 이메일 주소 입력 가능합니다.")
			$("#email").focus();
			return false;
		} else {
// 			by pass 
		}
		
		if( myAe.test( $.trim( $("#address").val())) == false) {
			alert("한글포함 특수문자와 공백 입력 가능합니다.")
			$("#address").focus();
			return false;
		} else {
// 			by pass 
		}
		
		if( myCe.test( $.trim( $("#phone").val())) == false) {
			alert("휴대폰 번호 입력 가능합니다.")
			$("#phone").focus();
			return false;
		} else {
// 			by pass 
		}
		
		
		
	
	}
	
	$("#btnUpdt").on("click", function(){
		
		if(validationUpdt() == false) return false;							/* **** */
		$("form[name=form]").attr("action","/codeGroupUpdt").submit();
		
	});
	
	$(".btnAdd").on("click", function(){
		
		if(validationInst() == false) return false;							/* **** */
		$("form[name=form]").attr("action","/codeGroupAdd").submit();
		
	});
	
	
	$("#btnDel").on("click", function(){

		$("form[name=form]").attr("action","/codeGroupDel").submit();
		
	});
	
	
	$("#btnUel").on("click", function(){
		
		$("form[name=form]").attr("action","/codeGroupUel").submit();
		
	});
	
	</script>

</body>

</html>