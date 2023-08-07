<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
            <h2>상금 순위</h2>
        </div>
      </div>
    </div>
  </section>
  <!-- End Hero Section -->



    <!-- ======= About Us Section ======= -->
    <section id="board" class="board">
	    <div class="ranking d-flex justify-content-center"  id="gold"></div>
	    <div class="ranking" id="silver"></div>
	    <div class="ranking" id="bronze"></div>

		
		


    </section><!-- End About Us Section -->
    
        <section id="board" class="board">

		
		


    </section><!-- End About Us Section -->
    
        <section id="board" class="board">

		
		


    </section><!-- End About Us Section -->





    <%@include file = "../include/includeUsrFooter.jsp"%>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <%@include file = "../include/includeUsrJs.jsp"%>

</body>

</html>