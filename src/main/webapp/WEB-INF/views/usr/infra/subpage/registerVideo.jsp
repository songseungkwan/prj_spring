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




    <%@include file = "../include/includeUsrHeader.jsp"%>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero">
    <div class="container position-relative">
      <div class="row gy-5" data-aos="fade-in">
        <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center text-center text-lg-start">
            <h2>영상 등록하기</h2>
        </div>
      </div>
    </div>
  </section>
  <!-- End Hero Section -->




    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="uploadVideo" class="uplodeVideo ">
      <div class="container" data-aos="fade-up">
		<h3> 게시물 작성</h3>
		<div id="uploadWrap"> 
<!-- 			<ul id="uploadBtnNav"> -->
<!-- 				<a href="#none"><li class="uploadBtn">영상</li></a> -->
<!-- 				<a href="#none"><li class="uploadBtn">링크</li></a> -->
<!-- 				<a href="#none"><li class="uploadBtn">ㅁㅁㅁ</li></a> -->
<!-- 				<a href="#none"><li class="uploadBtn">ㅁㅁㅁ</li></a> -->
<!-- 			</ul> -->

    <c:set var="listCodeWorkout" value="${CodeServiceImpl.selectListCachedCode('71')}"/>

			<div id="uploadBot">
				<div id=" uploadSelect">
					<select class="form-select form-control" aria-label="Default select example" id="workoutType">
					  <option value="">분류</option>
					  	<c:forEach items="${listCodeWorkout }" var="list" varStatus="status">
					  		<option value="<c:out value="${list.seq }"/>"><c:out value="${list.name}"/></option>
						</c:forEach>
					</select>
					<select class="form-select form-control" aria-label="Default select example" id="workoutDetailType">
						<option value="">상세 종목</option>
					  	<c:forEach items="${listCodeWorkout }" var="list" varStatus="status">
					  		<option value="<c:out value="${list.seq }"/>"><c:out value="${list.name}"/></option>
						</c:forEach>
					</select>
					


					
<!-- 					<select class="form-select" aria-label="Default select example" id="subCategory01"> -->
<!-- 					  <option selected>맨몸</option> -->
<!-- 					  <option value="1">풀업</option> -->
<!-- 					  <option value="2">푸쉬업</option> -->
<!-- 					  <option value="3">딥스</option> -->
<!-- 					</select> -->
					
<!-- 					<select class="form-select" aria-label="Default select example" id="subCategory02"> -->
<!-- 					  <option selected>기구</option> -->
<!-- 					  <option value="1">데드리프트</option> -->
<!-- 					  <option value="2">스쿼트</option> -->
<!-- 					  <option value="3">벤치프레스</option> -->
<!-- 					</select> -->
					
<!-- 					<select class="form-select" aria-label="Default select example" id="subCategory03"> -->
<!-- 					  <option selected>유산소</option> -->
<!-- 					  <option value="1">수영</option> -->
<!-- 					  <option value="2">사이클</option> -->
<!-- 					  <option value="3">러닝</option> -->
<!-- 					</select> -->
				</div>
				

				
				<div class="mb-3 uploadTxt">
				  <label for="txt" class="form-label"></label>
				  <textarea class="form-control" id="txt" rows="3" placeholder="짧은 소개와 설명글을 적어주세요."></textarea>
				</div>
				

				<div id="ytbLink">
				  <label for="ytb" class="form-label">유튜브 링크</label>
				  <input type="text" class="form-control" id="ytb" placeholder="유튜브 링크를 붙여넣어 주세요.">
				</div>
				

				
				<div class="mb-3 notificationAccept">
				  <label for="notificationAccept" class="form-label"></label>
				  <textarea class="form-control" id="notificationAccept" rows="3" placeholder="해당 내용을 읽고 동의하시면 '동의합니다' 입력 후 등록해주세요. 
1. 해당 영상에서 기록 조작 정황이 포착될 시 검토 후 즉시 회원탈퇴 됩니다.
2. 종목을 잘못 선택 후 등록하시면 검토 후 삭제처리 되고 재등록 안내문자 발송 예정입니다. 
3.dasdasd. "></textarea>
				</div>
				
				<button type="button" class="btn btn-primary btn-lg btn_regVideo">영상 등록하기</button>
				<button type="button" class="btn btn-secondary btn-lg">임시 저장하기</button>
				
				
				
				</div>
			</div>
			
		</div>


    </section><!-- End Frequently Asked Questions Section -->
    
        <!-- ======= Frequently Asked Questions Section ======= -->
<!--     <section id="" class="faq"> -->
<!--       <div class="container" data-aos=""> -->

<!--       </div> -->
<!--     </section>End Frequently Asked Questions Section -->








    <%@include file = "../include/includeUsrFooter.jsp"%>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <%@include file = "../include/includeUsrJs.jsp"%>
  
<script>

$("#workoutType").on("change", function() {
	// workoutDetailType 에 옵션을 만들어서 append 시킨다
	var selectedName = $("#workoutType option:selected").text();  // 선택된 옵션의 name 값을 가져옴
	
	var option = '<option value="">' + selectedName + '</option>';
	
	
	
	

	// workoutDetailType 하위 엘리먼트를 지운다	
	
	$("#workoutDetailType").empty();

    // 선택된 옵션에 따라 workoutDetailType에 동적으로 옵션을 추가한다
    if (selectedName === "calisthenics") {
        $("#workoutDetailType").append('<option value="37">턱걸이</option>');
        $("#workoutDetailType").append('<option value="38">푸쉬업</option>');
        $("#workoutDetailType").append('<option value="39">딥스</option>');
    } else if (selectedName === "freeweight") {
        // 다른 선택지에 따른 옵션들 추가
        $("#workoutDetailType").append('<option value="40">데드리프트</option>');
        $("#workoutDetailType").append('<option value="41">스쿼트</option>');
        $("#workoutDetailType").append('<option value="42">벤치프레스</option>');
    } else if (selectedName === "aerobic") {
        $("#workoutDetailType").append('<option value="43">수영</option>');
        $("#workoutDetailType").append('<option value="44">사이클</option>');
        $("#workoutDetailType").append('<option value="45">달리기</option>');
    }
    // 그 외의 선택지에 따른 옵션들을 추가하고 싶다면 추가적으로 else if 문을 작성하면 됩니다.
	
	
	
    $(".btn_regVideo").on(click.function() {
    	
    	
    	
    	
    	.submit();
    });
    
    
    
	
 });
 
 
</script>

</body>

</html>




