<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.mycompany.app.infra.modules.code.CodeServiceImpl"/>

<!DOCTYPE html>
<html lang="ko">

  <%@include file = "../include/includeUsrHead.jsp"%>

<body>




    <%@include file = "../include/includeUsrHeaderSub.jsp"%>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero">
    <div class="container position-relative">
      <div class="row gy-5" data-aos="fade-in">
        <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center text-center text-lg-start">
            <h2> <c:out value="${sessionSeq}"/> <c:out value="${ sessionId}"/>영상 등록하기</h2> <c:out value="()sessionSeq)"/> <c:out value="$(sessionId)"/>
            
        </div>
      </div>
    </div>
  </section>
  <!-- End Hero Section -->



<form name="form" method="post"  id="form" class="needs-validation" novalidate>
    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="uploadVideo" class="uplodeVideo ">
      <div class="container" data-aos="fade-up">
		<h3> 게시물 작성</h3>

    <c:set var="listCodeWorkout" value="${CodeServiceImpl.selectListCachedCode('71')}"/>


			<div id="uploadBot">
				<div id="uploadSelect" class="mb-3">
					<select class="form-select form-control" aria-label="Default select example" id="workoutType" name="workoutType">
					  <option value="">종목</option>
					  	<c:forEach items="${listCodeWorkout }" var="list" varStatus="status">
					  		<option value="<c:out value="${list.seq }"/>"><c:out value="${list.name}"/></option>
						</c:forEach>
					</select>
					<select class="form-select form-control" aria-label="Default select example" id="type" name="type">
<!-- 						<option value="">상세 종목</option> -->
					  	<c:forEach items="${listCodeWorkout }" var="list" varStatus="status">
					  		<option value="<c:out value="${list.seq }"/>"><c:out value="${list.name}"/></option>
						</c:forEach>
					</select>
				</div>
				
				<div class="mb-3 uploadTxt form-group">
				  <label for="title" class="form-label">제목</label>
				  <input type="text" id="title" name="title" class="form-control input-shadow"   placeholder="제목을 적어주세요."></input>
				  <div class="invalid-feedback"></div>
				</div>
				
				<div class="mb-3 uploadTxt form-group">
				  <label for="descr" class="form-label">내용</label>
				  <textarea id="descr" name="descr" class="form-control input-shadow"  rows="3" placeholder="짧은 소개와 설명글을 적어주세요.(80자 이내)"></textarea>
				  <div class="invalid-feedback"></div>
				</div>
				

				<div id="uploadTxt form-group">
				  <label for="ytbLink" class="form-label">유튜브 링크</label>
				  <input type="text" name="ytbLink" id="ytbLink" class="form-control input-shadow"  placeholder="유튜브 링크를 붙여넣어 주세요.">
				  <div class="invalid-feedback"></div>
				</div>
				
				
				<div class="mb-3 notificationAccept form-group">
				  <label for="notificationAccept" class="form-label"></label>
				  <textarea class="form-control input-shadow" id="notificationAccept" rows="3" placeholder="해당 내용을 읽고 동의하시면 '동의합니다' 입력 후 등록해주세요. 
1. 해당 영상에서 기록 조작 정황이 포착될 시 검토 후 즉시 회원탈퇴 됩니다.
2. 종목을 잘못 선택 후 등록하시면 검토 후 삭제처리 되고 재등록 안내문자 발송 예정입니다. 
3.dasdasd. "></textarea>
				  <div class="invalid-feedback"></div>
				</div>
				
				<button type="button" class="btn btn-primary btn-lg btnInst">영상 등록하기</button>

				
				
				
				</div>
			</div>
			



    </section><!-- End Frequently Asked Questions Section -->
    </form>
        <!-- ======= Frequently Asked Questions Section ======= -->
<!--     <section id="" class="faq"> -->
<!--       <div class="container" data-aos=""> -->

<!--       </div> -->
<!--     </section>End Frequently Asked Questions Section -->








    <%@include file = "../include/includeUsrFooter.jsp"%>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <%@include file = "../include/includeUsrJs.jsp"%>
      <script src="resources/realProjectAssets/js/validation.js"></script>
<script>








/* 종목 select */
$("#workoutType").on("change", function() {
	// workoutDetailType 에 옵션을 만들어서 append 시킨다
	var selectedName = $("#workoutType option:selected").text();  // 선택된 옵션의 name 값을 가져옴
	
	var option = '<option value="">' + selectedName + '</option>';
	
	// workoutDetailType 하위 엘리먼트를 지운다	
	
	$("#type").empty();

    // 선택된 옵션에 따라 workoutDetailType에 동적으로 옵션을 추가한다
    if (selectedName === "calisthenics") {
        $("#type").append('<option value="37">턱걸이</option>');
        $("#type").append('<option value="38">푸쉬업</option>');
        $("#type").append('<option value="39">딥스</option>');
    } else if (selectedName === "freeweight") {
        // 다른 선택지에 따른 옵션들 추가
        $("#type").append('<option value="40">데드리프트</option>');
        $("#type").append('<option value="41">스쿼트</option>');
        $("#type").append('<option value="42">벤치프레스</option>');
    } else if (selectedName === "aerobic") {
        $("#type").append('<option value="43">수영</option>');
        $("#type").append('<option value="44">사이클</option>');
        $("#type").append('<option value="45">달리기</option>');
    }
    // 그 외의 선택지에 따른 옵션들을 추가하고 싶다면 추가적으로 else if 문을 작성하면 됩니다.

});



 
 
 /* 입력부분 validation */
	var objTitle  = $("#title");
	var objDescr  = $("#descr");
	var objYtbLink = $("#ytbLink");
	var objNotificationAccept  = $("#notificationAccept");

	validationInst = function() {
		if(validationUpdt() == false) return false;
	}
	
	validationUpdt = function() {

	    if (checkTitle(objTitle, "제목을 입력해주세요.") === false) return false;
	    if (checkDescr(objDescr, "영상에 대한 간단한 설명을 해주세요.") === false) return false;
	    if (checkYtbLink(objYtbLink, "youtube 링크가 올바르지 않습니다.") === false) return false;
	    if (checkNotificationAccept(objNotificationAccept, "'동의합니다'만 입력해주세요.") === false) return false;

	}
	
	
	
	/* 영상 등록 */


	// 회원가입 버튼 클릭 이벤트
    $(".btnInst").on("click", function(){
    	alert("123")
    	if(validationInst() === false) return false;	
    		$("form[name=form]").attr("action","/competitionInst").submit();
    		

    });
 
 
</script>

</body>

</html>




