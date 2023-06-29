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

  <title>Tables / Data - King-Petition</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/adminAssets/img/favicon.png" rel="icon">
  <link href="/resources/adminAssets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <%@include file = "../include/includeCss.jsp"%>
  <!-- Template Main CSS File -->


  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="indexXdmView">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Data</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
              

              <!-- Table with stripped rows -->
                <form action="" method="post" name="formList">
	              <table class="table datatable table-striped table-hover">
	                <thead>
	                  <tr>
	                    <th scope="col"></th>
	                    <th scope="col">Title</th>
	                    <th scope="col">Name</th>
	                    <th scope="col">delNy</th>
	                  </tr>
	                </thead>

	                <div class="row">
		                <div class="col-4">
							<select name="shOption" class="form-select form-select-sm" aria-label="form-select-sm example" >
							  <option selected value="" >Open this select menu</option> 
							  <option value="1">One</option>
							  <option value="2">Two</option>
							  <option value="3">Three</option>
							</select>
						</div>
					
	 					<div class="col-4">
						    <input type="text" name="shKeyword" class="form-control form-control-sm"  >		
					        
					    </div>
					    <div class="col-4">
					   		 <button class="btn btn-dark" type="submit" id="btnSearch">검색</button>
					    	 <a href="/codeGroupForm"><button class="btn btn-danger addBtn" type="button" >추가</button></a>
					    </div>
				    </div>
			
					
                   <tbody>

					<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td class="text-center" colspan="9">There is no data</td>
							</tr>
						</c:when>
						<c:otherwise><%-- ${list} 자바에서 넘겨준 객체 이름 --%>
							<c:forEach items="${list}" var="list" >
								<tr>
									<td scope="col">
										<input type="checkbox" name="checked" value="">
									</td>
									<td><c:out value="${list.seq}"></c:out></td>
									<td><a href="codeGroupForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a></td>
									<td><c:out value="${list.delNy}"></c:out></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>	
					
					
					
                </tbody>
              </table>
             </form>
             
             
             
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
	 <%@include file = "../include/includeFooter.jsp"%>
  <!-- End Footer -->
  
  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
<%@include file = "../include/includeJs.jsp"%>
  <!-- Template Main JS File -->

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  <script type="text/javascript">
  		/* 검색버튼 */
		 $("#btnSearch").on("click", function() {
		 	$("form[name=formList]").attr("action", "/codeGroupHome").submit();
		 });
		 /* 추가버튼 */
	  /* $(".btnAdd").on("click", function() {
		    $("form[name=form]").attr("action", "/codeGroupForm").submit();
		 });		  */
				
 </script>
  
  
  
  
  

</body>

</html>