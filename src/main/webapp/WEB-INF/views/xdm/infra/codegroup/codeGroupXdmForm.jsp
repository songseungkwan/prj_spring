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
          <li class="breadcrumb-item"><a href="codeGroupXdmList">Home</a></li>
          <li class="breadcrumb-item active">Form</li>
        </ol>
      </nav>
    </div>
    <!-- End Page Title -->

	        <div class="card">
           	  <div class="card-body">
              <h5 class="card-title">Datatables</h5>
				<!-- Horizontal Form -->
              <form name="form" method="post">
                <div class="row mb-3">
                  <label for="seq" class="col-sm-2 col-form-label">seq</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" id="seq" name="seq" readonly value="<c:out value="${item.seq}"/>" ${empty item.seq ? 'disabled' : ''} >
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="name" class="col-sm-2 col-form-label">name</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name}"/>" >
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="delNy" class="col-sm-2 col-form-label">delNy</label>
                  <div class="col-sm-5">
                    <input type="text" class="form-control" id="delNy" name="delNy"  value="<c:out value="${item.delNy}"/>">
                  </div>
                </div>

                <div class="text-center">
			   		<c:choose>
			            <c:when test="${empty item.seq}">
			                <button class="btnAdd btn btn-success" type="button">insert</button>
			            </c:when>
			            <c:otherwise>
			            	<button class="btn btn-success" id="btnUpdt" type="button" >update</button>
			   				<button class="btn btn-danger" id="btnDel" type="button" >delete</button>    	
			   				<button class="btn btn-warning" id="btnUel" type="button" >uelete</button> 
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
    <script src="resources/adminAssets/js/validation.js"></script>
	<script>
	
	var objName = $("#name");
	
	validationInst = function() {
		if(validationUpdt() == false) return false;
	}
	
	validationUpdt = function() {
/* 		// 실제 체킹하는 소스가 들어가는 부분
		if($.trim($("#name").val()) ==  "" || $.trim($("#name").val()) == null) {
			alert("데이터를 입력해주세용");
			$("#name").focus();
			return false;
		} else {	
			
		} */
		
		// 정규표현식 선언
		// 공백없는 숫자와 대소문자& _ - (한글 제외)
/* 		myRe = /^[a-zA-Z0-9_-]{2,10}$/;
		
		
		if( myRe.test( $.trim( $("#name").val())) == false) {
			alert("공백없는 숫자와 대소문자만 (영문) 입력 가능합니다.")
			$("#name").focus();
			return false;
		} else {
// 			by pass 
		} */
		if(check(objName) == false) return false;
		
	
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

<!--  -->









