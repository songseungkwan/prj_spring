<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>킹피티션</title>
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="resources/ash_assets/img/favicon.png" />

<!-- All CSS Files -->
<!-- paper-kit -->
<link rel="stylesheet" href="resources/ash_assets/css/paper-kit.min.css">
<link rel="stylesheet" href="resources/ash_assets/scss/_nav.scss">
<link rel="stylesheet" href="resources/ash_assets/scss/_root.scss">
<link rel="stylesheet" href="resources/ash_assets/scss/_reboot.scss">
<link rel="stylesheet" href="resources/ash_assets/scss/_navbar.scss">

<!-- Icon Font -->
<link rel="stylesheet"
	href="resources/ash_assets/css/font.awesome.min.css" />
<!-- Icon Font -->
<link rel="stylesheet" href="resources/ash_assets/css/et-line.css" />
<!-- Plugins css file -->
<link rel="stylesheet" href="resources/ash_assets/css/plugins.css" />
<!-- Main style -->
<link rel="stylesheet" href="resources/ash_assets/css/style.css" />
<!-- Responsive css -->
<link rel="stylesheet" href="resources/ash_assets/css/responsive.css" />

<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
	
	<!-- Bootstrap css -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
<!-- Modernizr JS -->
<script src="https://kit.fontawesome.com/f676149ecf.js"
	crossorigin="anonymous"></script>
<script src="resources/ash_assets/js/vendor/modernizr-2.8.3.min.js"></script>



<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			"gtm.start" : new Date().getTime(),
			event : "gtm.js",
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != "dataLayer" ? "&l="
				+ l
				: "";
		j.async = true;
		j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, "script", "dataLayer", "GTM-5JCTSSF");
</script>
<!-- End Google Tag Manager -->


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5JCTSSF"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- Start Header Section -->
<!-- include navbar -->
  <%@include file = "../include/includeUsrNavbar.jsp"%>

	<!-- Header Section End -->
	<!-- Start Hero Section -->
	<div class="hero-section section overlay" id="sectionContainer"
		style="background-color: #000;">
		<div id="videoWrap">

			<div id="video-container">
				<video id="my_video01" autoplay muted loop>
					<source src="resources/ash_assets/img/video/pushupVideo.mp4"
						type="video/mp4">
				</video>

				<video id="my_video02" autoplay muted loop>
					<source src="resources/ash_assets/img/video/pullupVideo.mp4"
						type="video/mp4">
				</video>

				<video id="my_video02" autoplay muted loop>
					<source src="resources/ash_assets/img/video/pullupVideo.mp4"
						type="video/mp4">
				</video>
				
				<video id="my_video02" autoplay muted loop>
					<source src="resources/ash_assets/img/video/pullupVideo.mp4"
						type="video/mp4">
				</video>								
			</div>
		</div>

	</div>
	<!-- Hero Section End  -->

	<!-- Start Demo Section -->
	<div class="demo-section section pt-120 pb-70 bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-12 mb-50">
					<div class="demo-item about_kingp">
						<a href="#about_kp" class="image"> <img
							src="resources/ash_assets/img/tilte_img.png" alt=" " /> <i
							class="fa fa-long-arrow-right"></i>
						</a>
						<h4 class="title">
							<a href="#about_kp">King-Petition이란?</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12 mb-50">
					<div class="demo-item">
						<a href="allTimeRecord" class="image" target="blank"> <img
							src="resources/ash_assets/img/ranking.png" alt="" /> <i
							class="fa fa-long-arrow-right"></i>
						</a>
						<h4 class="title">
							<a href="allTimeRecord" target="blank">All time record</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12 mb-50"></div>
				<div class="col-lg-4 col-md-6 col-12 mb-50">
					<div class="demo-item">
						<a href="#" class="image" target="blank"> <img src="" alt="" />
							<i class="fa fa-long-arrow-right"></i>
						</a>
						<h4 class="title">
							<a href="#" target="_blank">Bodyweight Exercise</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12 mb-50">
					<div class="demo-item">
						<a href="#" class="image" target="blank"> <img
							src="" alt="" /> <i class="fa fa-long-arrow-right"></i>
						</a>
						<h4 class="title">
							<a href="#" target="_blank">freeWeight</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12 mb-50">
					<div class="demo-item">
						<a href="#" class="image" target="_blank"> <img src="" alt="" />
							<i class="fa fa-long-arrow-right"></i>
						</a>
						<h4 class="title">
							<a href="#" target="_blank">Aerobic Exercise</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12 mb-50">
					<div class="demo-item"></div>
				</div>
				<div class="col-lg-4 col-md-6 col-12 mb-50">
					<div class="demo-item">
						<a href="#" class="image" target="_blank"> <img
							src="resources/ash_assets/img/insta_section.jpg" alt="" /> <i
							class="fa fa-long-arrow-right"></i>
						</a>
						<h4 class="title">
							<a href="#" target="_blank">Insta</a>
						</h4>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12 mb-50">
					<div class="demo-item">
						<a href="#" class="image" target="_blank"> <img
							src="resources/ash_assets/img/blog.svg" alt="" /> <i
							class="fa fa-long-arrow-right"></i>
						</a>
						<h4 class="title">
							<a href="#" target="_blank">Blog</a>
						</h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Demo Section -->
	<!-- Start Feature Section -->
	<div class="feature-section section pt-150 pb-100" id="about_kp">
		<div class="container">
			<div class="row">
				<div class="section-title col-12 mb-70">
					<h2>킹피티션이란?</h2>
					<p>자신있는 종목을 골라 참가비를 내고 다른 사람들과 기록을 경쟁하는 운동 프로그램입니다.</p>
				</div>

				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i
						class="icon-profile-male"></i></span>
					<div class="content fix">
						<h4>1. 계정 생성</h4>
						<p>
							계정이 없으면 먼저 회원가입을 해주세요. <br /> (일반인/선수 출신/현역 군인 중 현재 신분에 맡게
							선택해주세요.)
						</p>
					</div>
				</div>
				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i class="icon-dribbble"></i></span>
					<div class="content fix">
						<h4>2.훈련</h4>
						<p>계정을 만드신 후 자신있는 종목을 열심히 연습해보세요.</p>
					</div>
				</div>
				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i class="icon-video"></i></span>
					<div class="content fix">
						<h4>3. 영상 촬영</h4>
						<p>이제 폰으로 기록 영상을 남겨주세요. 촬영한 시간과 날짜가 정확히 나와야 해요.</p>
					</div>
				</div>
				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i class="icon-upload"></i></span>
					<div class="content fix">
						<h4>4. 영상 업로드</h4>
						<p>촬영본을 유튜브에 업로드 후 게시물에 링크를 걸어주거나, 바로 영상을 업로드해주세요. 기록도 입력해주세요.
						</p>
					</div>
				</div>
				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i class="icon-wallet"></i></span>
					<div class="content fix">
						<h4>5. 참가비</h4>
						<p>0원부터 10,000원 안에서 금액을 설정해 참가비를 내면 됩니다.(0원은 상금 수령 불가능)</p>
					</div>
				</div>
				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i class="icon-refresh"></i></span>
					<div class="content fix">
						<h4>6. 피드백</h4>
						<p>다른 형제들의 영상도 보며 댓글을 달며 소통해보세요.</p>
					</div>
				</div>
				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i class="icon-trophy"></i></span>
					<div class="content fix">
						<h4>7. 랭커</h4>
						<p>마감 후 랭킹을 확인하고 높은 순위 기록 시 상금을 받을 수 있어요!</p>
					</div>
				</div>
				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i class=""></i></span>
					<div class="content fix">
						<h4></h4>
						<p></p>
					</div>
				</div>
				<div class="single-feature col-lg-4 col-md-6 col-12 mb-50">
					<span class="icon float-left"><i class=""></i></span>
					<div class="content fix">
						<h4></h4>
						<p></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Start Feature Section -->
	<!-- Start Footer Section -->
	<div class="footer-section section pt-65 pb-50">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<p>King-Petition | T: 02-1000-1000</p>
					<p>서울시 강남구 xx동 | 사업자등록번호: 123-45-67890</p>
					<p>통신판매업신고: 2023-서울강남-12345
					<p>대표: 송승관 | 개인정보책임자: 송승관</p>
					<p>이메일: ssk3235@gmail.com</p>

					<p>copyright 2023. Sskdream.All rights reserved.</p>

				</div>
			</div>
		</div>
	</div>
	<!-- End Footer Section -->













	<!-- include navbar -->
	<%@include file="../include/includeUsrJs.jsp"%>
</body>
</html>