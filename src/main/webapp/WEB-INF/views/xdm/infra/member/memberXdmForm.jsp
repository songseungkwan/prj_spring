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
	
	$("#btnUpdt").on("click", function(){
		
		$("form[name=form]").attr("action","/memberUpdt").submit();
		
	});
	
	$(".btnAdd").on("click", function(){
		
		$("form[name=form]").attr("action","/memberAdd").submit();
		
	});
	
	$("#btnDel").on("click", function(){

		$("form[name=form]").attr("action","/memberDel").submit();
		
	});
	
	$("#btnUel").on("click", function(){
		
		$("form[name=form]").attr("action","/memberUel").submit();
		
	});
	
	</script>

</body>

</html>