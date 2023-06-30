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
    </div><!-- End Page Title -->
    
   <%--  <form name="form" method="post">
    <div class="row">
	 	<div class="col-3">
	 		<label for="seq" class="form-label">seq</label>
	    	<input type="text" class="form-control form-control" id="seq" name="seq" readonly value="<c:out value="${item.seq}"/>" ${empty item.seq ? 'disabled' : ''} >
	    </div>
	    
	    <div class="col-3">                			
	   	 	<label for="name" class="form-label">name</label>
	   	 	<input type="text" class="form-control form-control" id="name" name="name" value="<c:out value="${item.name}"/>" >
	    </div>
	    
	    <div class="col-3">   
	    	<label for="delNy" class="form-label">delNy</label>
	    	<input type="text" class="form-control form-control" id="delNy" name="delNy"  value="<c:out value="${item.delNy}"/>">
	    </div>
    		  

   		<c:choose>
            <c:when test="${empty item.seq}">
                <button class="btnAdd btn btn-success" type="button" style="width:10%;">insert</button>
            </c:when>
            <c:otherwise>
            	<button class="btn btn-success" id="btnUpdt" type="button" style="width:5%;">update</button>
   				<button class="btn btn-danger" id="btnDel" type="button" style="width:5%;">delete</button>    	
   				<button class="btn btn-warning" id="btnUel" type="button" style="width:5%;">uelete</button> 
            </c:otherwise>
        </c:choose>
	</div>    		
</form> --%>

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
			                <button class="btnAdd btn btn-success" type="button" style="width:10%;">insert</button>
			            </c:when>
			            <c:otherwise>
			            	<button class="btn btn-success" id="btnUpdt" type="button" style="width:5%;">update</button>
			   				<button class="btn btn-danger" id="btnDel" type="button" style="width:5%;">delete</button>    	
			   				<button class="btn btn-warning" id="btnUel" type="button" style="width:5%;">uelete</button> 
			            </c:otherwise>
			        </c:choose>
                </div>
              </form><!-- End Horizontal Form -->

</main>

<%-- <form action="" method="post" name="formList">

	<select name="shOption" class="form-select form-select-sm" aria-label="form-select-sm example" style="width: 15%; display:inline-block;">
	  <option selected value="" >Open this select menu</option> 
	  <option value="1">One</option>
	  <option value="2">Two</option>
	  <option value="3">Three</option>
	</select>
	
    <input type="text" name="shKeyword" >
    <button type="submit" id="btnSearch">검색</button>
</form>

<br>
<br>

		<c:choose>
			<c:when test="${fn:length(list) eq 0}">
				<tr>
					<td class="text-center" colspan="9">There is no data</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="list" varStatus="status">
					<c:out value="${list.seq}"></c:out>
					<a href="admin?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a>
				</c:forEach>
			</c:otherwise>
		</c:choose>	 --%>
    


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
		
		$("form[name=form]").attr("action","/codeGroupUpdt").submit();
		
	});
	
	$("#btnDel").on("click", function(){

		$("form[name=form]").attr("action","/codeGroupDel").submit();
		
	});
	
	$(".btnAdd").on("click", function(){
		
		$("form[name=form]").attr("action","/codeGroupAdd").submit();
		
	});
	
	$("#btnUel").on("click", function(){
		
		$("form[name=form]").attr("action","/codeGroupUel").submit();
		
	});
	
	</script>


</body>

</html>

<!--  -->









