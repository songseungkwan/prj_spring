<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>




	<nav class="navbar navbar-expand-lg fixed-top navbar-transparent"
		color-on-scroll="300">
		<div class="container" id="blackFonts">
			<div class="navbar-translate">
				<a class="navbar-brand" id="bF01" href="" rel="tooltip"
					title="Coded by Creative Tim" data-placement="bottom"
					target="_blank"> King-Petition </a>
				<button class="navbar-toggler navbar-toggler" type="button"
					data-toggle="collapse" data-target="#navigation"
					aria-controls="navigation-index" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-bar bar1"></span> <span
						class="navbar-toggler-bar bar2"></span> <span
						class="navbar-toggler-bar bar3"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse justify-content-end"
				id="navigation">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" rel="tooltip"
						title="홈" data-placement="bottom" href="#" target="_blank"> <i
							class="fa-solid fa-house"></i>
							<p class="d-lg-none">home</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" rel="tooltip"
						title="종목" data-placement="bottom" href="workout" target="_blank">
							<i class="fa-solid fa-list"></i>
							<p class="d-lg-none">종목</p>
					</a></li>
					<li class="nav-item"><a class="nav-link" rel="tooltip"
						title="내 정보" data-placement="bottom" href="" target="_blank">
							<i class="fa-regular fa-user"></i>
							<p class="d-lg-none">내 정보</p>
					</a></li>

					<li class="nav-item"><a href="usrLoginForm" class="nav-link">
							회원가입 & 로그인</a></li>

				</ul>
			</div>
		</div>
	</nav>






