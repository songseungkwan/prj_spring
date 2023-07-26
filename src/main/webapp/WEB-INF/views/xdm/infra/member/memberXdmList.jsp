<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.mycompany.app.infra.modules.code.CodeServiceImpl"/>

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
      <h1>Member</h1>
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
	            
	            	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
					<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					
	              <div class="row">
	                <div class="col-4">
	                  <select name="shOption" class="form-select form-select-sm" aria-label="form-select-sm example">
	                    <option selected value="">Open this select menu</option>
	                    <option value="1">One</option>
	                    <option value="2">Two</option>
	                    <option value="3">Three</option>
	                  </select>
	                </div>
	
		<!-- 검색창에 입력하면 내용값 그대로 검색창에 띄우기 -->
	                <div class="col-4">														
	                  <input type="text" name="shKeyword" class="form-control form-control-sm" value="<c:out value="${vo.shKeyword}"/>" >
	                </div>
	                <div class="col-4">
	                  <button class="btn btn-dark" type="submit" id="btnSearch">검색</button>
	                  <a href="/memberXdmForm"><button class="btn btn-danger addBtn" type="button">추가</button></a>
	                  
	                  <a href="/memberXdmList"><button class="btn btn-warning btnInit " type="button">Init</button></a>
	                </div>
	              </div>
	
	              <table class="table datatable table-striped table-hover">
	                <thead>
	                  <tr>
	                    <th scope="col"><input type="checkbox" name="checked" value=""></th>
						<th scope="col">Seq</th>
	                    <th scope="col">Name</th>
	                    <th scope="col">Id</th> 
	                    <th scope="col">Nickname</th>	 
	                    <th scope="col">Password</th>
   	                    <th scope="col">Email</th>
	                    <th scope="col">Address</th>
	                    <th scope="col">Phone</th>	         	    
	                    <th scope="col">Type</th>	   	  
	                    <th scope="col">DelNy</th>		                    	                                                  	                    	 

                 	                    		                    
	                                       

	                    
	                    
	                    
	                  </tr>
	                </thead>
	
	                <tbody>
		                <c:set var="listCodeType" value="${CodeServiceImpl.selectListCachedCode('70')}"/>

	
	                  <c:choose>
	                    <c:when test="${fn:length(list) eq 0}">
	                      <tr>
	                        <td class="text-center" colspan="10">There is no data</td>
	                      </tr>
	                      
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${list}" var="item">
	                        <tr>
	                          <td scope="col">
	                            <input type="checkbox" name="checked" value="">
	                          </td>
	                          <td><c:out value="${item.seq}" /></td>
<%-- 	                          <td><a href="memberXdmForm?seq=<c:out value="${item.seq}" />"><c:out value="${item.name}" /></a></td> --%>
							  <td><a href="memberXdmForm?seq=<c:out value="${item.seq}" />"><c:out value="${item.name}" /></a></td>
	                          <%-- <td><c:out value="${item.nameFull}}" /></td>	 --%>						  
	                          <td><c:out value="${item.id}" /></td>		
	                          <td><c:out value="${item.nickname}" /></td>	
	                          <td><c:out value="${item.password}" /></td>
	                          <td><c:out value="${item.email}" /></td>							  
	                          <td><c:out value="${item.address}" /></td>		
	                          <td><c:out value="${item.phone}" /></td>
	                          <!-- 0719 -->
	                          <td><c:forEach items="${listCodeType }" var="listType" varStatus="statusType">
									<c:if test="${item.type eq listType.codeNum }"> <c:out value="${listType.name}"/></c:if>
								</c:forEach>
							  </td>
	                          <td><c:out value="${item.delNy}" /></td>
	                        </tr>
	                      </c:forEach>
	                    </c:otherwise>
	                  </c:choose>
	                </tbody>
	                
	                
	                
	                
	                
	              </table>
		              	<div class="container-fluid px-0 mt-2">
						    <div class="row">
						        <div class="col">
						            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
						            <ul class="pagination justify-content-center mb-0">
						                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
						<c:if test="${vo.startPage gt vo.pageNumToShow}">
						                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
						</c:if>
						<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
							<c:choose>
								<c:when test="${i.index eq vo.thisPage}">
						                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
								</c:when>
								<c:otherwise>             
						                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>                
						<c:if test="${vo.endPage ne vo.totalPages}">                
						                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li></c:if> 
						       			<!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
						            </ul>
						        </div>
						    </div>
						</div>
		            </form>
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
		 	$("form[name=formList]").attr("action", "/memberXdmList").submit();
		 });
		 /* 추가버튼 */
	  /* $(".btnAdd").on("click", function() {
		    $("form[name=form]").attr("action", "/codeGroupForm").submit();
		 });		  */
		 goList = function(thisPage) {
				$("input:hidden[name=thisPage]").val(thisPage);
				$("form[name=formList]").attr("action", "/memberXdmList").submit();
			}
 		</script>
	</body>
</html>