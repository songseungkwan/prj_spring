<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
			<div id="uploadBot">
				<div id=" uploadSelect">
					<select class="form-select" aria-label="Default select example" id="majorCategory">
					  <option selected>종목 대분류</option>
					  <option value="1">맨몸</option>
					  <option value="2">기구</option>
					  <option value="3">유산소</option>
					</select>
					
					<select class="form-select" aria-label="Default select example" id="subCategory">
					  <option selected>상세 선택</option>
					  <option value="1">001</option>
					  <option value="2">002</option>
					  <option value="3">003</option>
					</select>
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
				
				<button type="button" class="btn btn-primary btn-lg">영상 등록하기</button>
				<button type="button" class="btn btn-secondary btn-lg">임시 저장하기</button>
				
				
				
				</div>
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

</body>

</html>




