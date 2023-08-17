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
	          <h2>영상 조회</h2>
	      </div>
	    </div>
	  </div>
	</section>


<!-- main -->
<main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="sectionYtbMain" class="about">

		<div id="sectionYtb">
			<iframe class="position-absolute top-50 start-50 translate-middle" width="800" height="500" src="https://www.youtube.com/embed/hTddMlQKup8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
		</div>
		
			<!-- SNS버튼 시작 --> 
			<div style="width: 100%; text-align: center; margin-bottom: 64px;">
			  <!-- 페이스북 공유 버튼 --> <a href="" onclick="window.open(url_combine_fb, '', 'scrollbars=no, width=600, height=600'); return false;"><img src="https://storage.googleapis.com/storage.chris-chris.ai/images/facebook.gif" title="페이스북으로 공유하기" class="sharebtn_custom" style="width: 32px;"></a> 
			  <!-- 트위터 공유 버튼 --> <a href="" onclick="window.open(url_combine_tw, '', 'scrollbars=no, width=600, height=600'); return false;"><img src="https://storage.googleapis.com/storage.chris-chris.ai/images/twitter.gif" title="트위터로 공유하기" class="sharebtn_custom" style="width: 32px;"></a> 
			  <!-- 카카오 스토리 공유 버튼 --> <a href="" onclick="window.open(url_combine_ks, '', 'scrollbars=no, width=600, height=600'); return false;"><img src="https://storage.googleapis.com/storage.chris-chris.ai/images/story.gif" title="카카오스토리로 공유하기" class="sharebtn_custom" style="width: 32px;"></a> 
			  <!-- 네이버 공유 버튼 --> <a href="" onclick="window.open(url_combine_naver, '', 'scrollbars=no, width=600, height=600'); return false;"><img src="https://storage.googleapis.com/storage.chris-chris.ai/images/naver.gif" title="네이버로 공유하기" class="sharebtn_custom" style="width: 32px;"></a> 
			  <!-- 밴드 공유 버튼 --> <a href="" onclick="window.open(url_combine_band, '', 'scrollbars=no, width=584, height=635'); return false;"><img src="https://storage.googleapis.com/storage.chris-chris.ai/images/band.gif" title="밴드로 공유하기" class="sharebtn_custom" style="width: 32px;"></a> 
			</div> 
<!-- SNS버튼 끝 -->



    </section><!-- End About Us Section -->

    <!-- ======= Clients Section ======= -->
    <section id="commentInput" class="clients">
		<div class="form-floating">
		  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
		  <label for="floatingTextarea2">Comments</label>
		</div>
    </section><!-- End Clients Section -->


    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="comments" class="faq">

    </section><!-- End Frequently Asked Questions Section -->



    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">

    </section><!-- End Contact Section -->

  </main><!-- End #main -->






    <%@include file = "../include/includeUsrFooter.jsp"%>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <%@include file = "../include/includeUsrJs.jsp"%>
      <script src="resources/realProjectAssets/js/validation.js"></script>



<!-- SNS 공유용 주소 연결 용 --> 
<script type="text/javascript" async> 
var url_default_ks = "https://story.kakao.com/share?url="; 
var url_default_fb = "https://www.facebook.com/sharer/sharer.php?u="; 
var url_default_tw_txt = "https://twitter.com/intent/tweet?text="; 
var url_default_tw_url = "&url="; 
var url_default_band = "http://band.us/plugin/share?body="; 
var url_route_band = "&route="; 
var url_default_naver = "http://share.naver.com/web/shareView.nhn?url="; 
var title_default_naver = "&title="; 
var url_this_page = location.href; 
var title_this_page = document.title; 
var url_combine_ks = url_default_ks + url_this_page; 
var url_combine_fb = url_default_fb + url_this_page; 
var url_combine_tw = url_default_tw_txt + document.title + url_default_tw_url + url_this_page; 
var url_combine_band = url_default_band + encodeURI(url_this_page)+ '%0A' + encodeURI(title_this_page)+'%0A' + '&route=tistory.com'; 
var url_combine_naver = url_default_naver + encodeURI(url_this_page) + title_default_naver + encodeURI(title_this_page); 
</script>









 
 

	
 
 


</body>

</html>




