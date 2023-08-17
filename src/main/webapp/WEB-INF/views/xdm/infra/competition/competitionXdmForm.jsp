<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

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
<link href="resources/adminAssets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<%@include file="../include/includeCss.jsp"%>
<!-- Template Main CSS File -->

<style type="text/css">
.addScroll {
	overflow-y: auto;
	height: 200px;
	background-color: #E9ECEF;
	padding-top: 5px;
	padding-left: 5px;
}

.input-file-button {
	padding: 4px 25px;
	background-color: #FF6600;
	border-radius: 4px;
	color: white;
	cursor: pointer;
}
</style>

</head>

<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/includeHeader.jsp"%>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<%@include file="../include/includeSidebar.jsp"%>
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
		</div>
		<!-- End Page Title -->

		<div class="card">
			<div class="card-body">
				<h5 class="card-title">competition</h5>
				<!-- Horizontal Form -->
				<form name="form" method="post" id="form" autocomplete="off"
					enctype="multipart/form-data">

					<div class="container-fluid px-0 px-sm-5 mt-2">
						<div class="row mt-sm-4 ">
							<div class="col-sm-12 text-center">

								<!-- profile image -->
								<c:set var="type" value="1" />
								<!-- #-> -->
								<c:set var="name" value="uploadImgProfile" />
								<!-- #-> -->
								<c:choose>
									<c:when test="${seq eq 0 }">
										<img id="<c:out value="${name }"/>Preview"
											src="/resources/adminAssets/img/news-5.jpg"
											class="rounded-circle mx-auto d-block" width="100"
											height="100">
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${fn:length(listUploaded) eq 0 }">
												<img id="<c:out value="${name }"/>Preview"
													src="/resources/adminAssets/img/news-5.jpg"
													class="rounded-circle mx-auto d-block" width="100"
													height="100">
											</c:when>
											<c:otherwise>
												<c:set var="GetNy" value="0" />
												<c:forEach items="${listUploaded}" var="listUploaded"
													varStatus="statusUploaded">
													<c:if test="${listUploaded.type eq type }">
														<input type="hidden"
															id="<c:out value="${name }"/>DeleteSeq"
															name="<c:out value="${name }"/>DeleteSeq"
															value="<c:out value="${listUploaded.seq }"/>" />
														<input type="hidden"
															id="<c:out value="${name }"/>DeletePathFile"
															name="<c:out value="${name }"/>DeletePathFile"
															value="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" />
														<img id="<c:out value="${name }"/>Preview"
															src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"
															class="rounded-circle mx-auto d-block" width="100"
															height="100">
														<c:set var="GetNy" value="1" />
													</c:if>
												</c:forEach>
												<c:if test="${GetNy eq 0 }">
													<img id="<c:out value="${name }"/>Preview"
														src="/resources/" class="rounded-circle mx-auto d-block"
														width="100" height="100">
												</c:if>
											</c:otherwise>
										</c:choose>
									</c:otherwise>
								</c:choose>

								<input type="hidden" id="<c:out value="${name }"/>Type"
									name="<c:out value="${name }"/>Type"
									value="<c:out value="${type }"/>" /> <input type="hidden"
									id="<c:out value="${name }"/>MaxNumber"
									name="<c:out value="${name }"/>MaxNumber" value="0" /> 
									<label
									for="<c:out value="${name }"/>"
									class="form-label input-file-button"><b>+</b></label> 
									<input
									class="form-control form-control-sm"
									id="<c:out value="${name }"/>" name="<c:out value="${name }"/>"
									type="file" multiple="multiple" style="display: none;"
									onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 3);">
							</div>
						</div>
					</div>

					<div class="row mb-3 text-center">
						<label for="seq" class="col-sm-2 col-form-label">seq</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="seq" name="seq"
								readonly value="<c:out value="${item.seq}"/>"
								${empty item.seq ? 'disabled' : ''}>
						</div>
					</div>

					<div class="row mb-3 text-center">
						<label for="delNy" class="col-sm-2 col-form-label">delNy</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="delNy" name="delNy"
								value="<c:out value="${item.delNy}"/>">
						</div>
					</div>


					<div class="text-center">
						<div class="row mb-3 text-center">
							<label for="type" class="col-sm-2 col-form-label">type</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="type" name="type"
									value="${item.type}">
							</div>
						</div>


						<div class="row mb-3 text-center">
							<label for="title" class="col-sm-2 col-form-label">title</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="title" name="title"
									value="${item.title}">
							</div>
						</div>

						<div class="row mb-3 text-center">
							<label for="descr" class="col-sm-2 col-form-label">descr</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="descr" name="descr"
									value="${item.descr}">
							</div>
						</div>

						<div class="row mb-3 text-center">
							<label for="ytbLink" class="col-sm-2 col-form-label">ytbLink</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="ytbLink"
									name="ytbLink" value="${item.ytbLink}">
							</div>
						</div>

						<div class="row mb-3 text-center">
							<label for="contents" class="col-sm-2 col-form-label">contents</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" id="contents"
									name="contents" value="${item.contents}">
							</div>
						</div>




						<%-- <div class="row mt-sm-4">
							
							<!-- file upload -->
							<div class="col-sm-6 mt-3 mt-sm-0">
								<c:set var="type" value="3" />
								<!-- #-> -->
								<c:set var="name" value="uploadFile" />
								<!-- #-> -->
								<input type="hidden" id="<c:out value="${name }"/>Type"
									name="<c:out value="${name }"/>Type"
									value="<c:out value="${type }"/>" /> <input type="hidden"
									id="<c:out value="${name }"/>MaxNumber"
									name="<c:out value="${name }"/>MaxNumber" value="0" /> <input
									type="hidden" id="<c:out value="${name }"/>DeleteSeq"
									name="<c:out value="${name }"/>DeleteSeq" /> <input
									type="hidden" id="<c:out value="${name }"/>DeletePathFile"
									name="<c:out value="${name }"/>DeletePathFile" /> <label
									for="uploadFile" class="form-label input-file-button">파일첨부</label>
								<input class="form-control form-control-sm"
									id="<c:out value="${name }"/>" name="<c:out value="${name }"/>"
									type="file" multiple="multiple" style="display: none;"
									onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);">
								<div class="addScroll">
									<ul id="<c:out value="${name }"/>Preview" class="list-group">
										<c:forEach items="${listUploaded}" var="listUploaded"
											varStatus="statusUploaded">
											<c:if test="${listUploaded.type eq type }">
												<li
													id="li_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>"
													class="list-group-item d-flex justify-content-between align-items-center">
													<a
													href="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"
													download="<c:out value="${listUploaded.originalName }"/>"
													class="text-decoration-none"><c:out
															value="${listUploaded.originalName }" /></a> <span
													class="badge bg-danger rounded-pill"
													onClick="delLi('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')"><i
														class="fa-solid fa-x" style="cursor: pointer;"></i></span>
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div> --%>



						<c:choose>
							<c:when test="${empty item.seq}">
								<button class="btnInst btn btn-success" type="submit">insert</button>
							</c:when>
							<c:otherwise>
								<button class="btn btn-success" id="btnUpdt" type="submit">update</button>
								<button class="btn btn-danger" id="btnDele" type="submit">delete</button>
								<button class="btn btn-warning" id="btnUele" type="submit">uelete</button>
							</c:otherwise>
						</c:choose>

					</div>
				</form>
				<!-- End Horizontal Form -->
			</div>
		</div>
	</main>

	<!-- ======= Footer ======= -->
	<%@include file="../include/includeFooter.jsp"%>

	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<%@include file="../include/includeJs.jsp"%>

	<!-- Template Main JS File -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<script src="resources/adminAssets/js/validation.js"></script>
	<!--     <script src="resources/realProjectAssets/js/validation.js"></script> -->
	<script>
	
	
	
// 	CRUD
	$("#btnUpdt").on("click", function(){
		
		$("form[name=form]").attr("action","/competitionUpdt").submit();
		
	});
	
	$(".btnInst").on("click", function(){
		
		$("form[name=form]").attr("action","/competitionInst").submit();
		
	});
	
	$("#btnDele").on("click", function(){

		$("form[name=form]").attr("action","/competitionDele").submit();
		
	});
	
	$("#btnUele").on("click", function(){
		
		$("form[name=form]").attr("action","/competitionUele").submit();
		
	});
	
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
		
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3

//		uiType: 1 => 이미지형
//		uiType: 2 => 파일형
//		uiType: 3 => 프로필형

		var files = $("#" + objName +"")[0].files;
		var filePreview = $("#" + objName +"Preview");
		var numbering = [];
		var maxNumber = 0;
		
		if(uiType == 1) {
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
			
			for(var i=0; i<tagIds.length; i++){
// 				alert(i);
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
//			alert(numbering.length);
			
			for(let i=0; i < numbering.length; i++){
//  				alert(i);
			}
			
			
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else if(uiType == 2){
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else {
			// by pass
		}
		
		$("#" + objName + "MaxNumber").val(maxNumber);

		var totalFileSize = 5;
		var filesCount = files.length;
		var filesArray = [];
		
		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
		if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
		
		for (var i=0; i<filesCount; i++) {
			if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

			totalFileSize += files[i].size;
			
			filesArray.push(files[i]);
		}

		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {
			for (var i=0; i<filesArray.length; i++) {
				var file = filesArray[i];

				var picReader = new FileReader();
			    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
			    picReader.readAsDataURL(file);
			}			
		} else if(uiType == 2) {
			for (var i = 0 ; i < filesCount ; i++) {
				addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.onload = function () {
				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
			 }	
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
		} else {
			return false;
		}
		return false;
	}
	
	
	addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
		return function(event) {
			var imageFile = event.target;
			var sort = parseInt(maxNumber) + i;

			var divImage = "";
			divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
			divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
			divImage += '</div> ';
			
			filePreview.append(divImage);
	    };
	}
	
	
	delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#imgDiv_"+type+"_"+sort).remove();
		
		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	
	addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

		var sort = parseInt(maxNumber) + i;
		
		var li ="";
		li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
		li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
		li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
		li += name;
		li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li +='</li>';
		
		filePreview.append(li);
	}
	
	
	delLi = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#li_"+type+"_"+sort).remove();

		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	openViewer = function (type, sort) {
		var str = '<c:set var="tmp" value="'+ type +'"/>';
		$("#modalImgViewer").append(str);
		$("#modalImgViewer").modal("show");
	}
	
	
	</script>

</body>

</html>