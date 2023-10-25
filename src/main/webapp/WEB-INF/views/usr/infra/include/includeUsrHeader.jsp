<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>



<%-- <%
String id = (String) request.getSession().getAttribute("id");
%> --%>


<!-- ======= Header ======= -->
<section id="topbar" class="topbar d-flex align-items-center">

</section>
<!-- End Top Bar -->

<header id="header" class="header d-flex align-items-center">

	<div
		class="container-fluid container-xl d-flex align-items-center justify-content-between">
		<a href="/indexUsrView" class="logo d-flex align-items-center"> <!-- Uncomment the line below if you also wish to use an image logo -->
			<!-- <img src="assets/img/logo.png" alt=""> -->
			<h1>
				King-petetion<span>.</span>
			</h1>
		</a>
		<nav id="navbar" class="navbar">
			<ul>
				<li><a href="#hero">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#services">Services</a></li>
				<li><a href="#portfolio">Workouts</a></li>
				<li><a href="#team">Recruit</a></li>
				<li><a href="blog.html">Blog</a></li>
<!-- 				<li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a> -->
<!-- 					<ul> -->
<!-- 						<li><a href="#">Drop Down 1</a></li> -->
<!-- 						<li class="dropdown"><a href="#"><span>Deep Drop -->
<!-- 									Down</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a> -->
<!-- 							<ul> -->
<!-- 								<li><a href="#">Deep Drop Down 1</a></li> -->
<!-- 								<li><a href="#">Deep Drop Down 2</a></li> -->
<!-- 								<li><a href="#">Deep Drop Down 3</a></li> -->
<!-- 								<li><a href="#">Deep Drop Down 4</a></li> -->
<!-- 								<li><a href="#">Deep Drop Down 5</a></li> -->
<!-- 							</ul></li> -->
<!-- 						<li><a href="#">Drop Down 2</a></li> -->
<!-- 						<li><a href="#">Drop Down 3</a></li> -->
<!-- 						<li><a href="#">Drop Down 4</a></li>	 -->
						
				<c:choose>
					<c:when test="${not empty sessionId }">
<%-- 						<li class="dropdown"><a href="#"><c:out value="${sessionId }"/><i class="bi bi-chevron-down dropdown-indicator"></i></a>	 --%>
						<li class="dropdown"><a href="#"><c:out value="${sessionNickname }"/><i class="bi bi-chevron-down dropdown-indicator"></i></a>
							<ul>
								<li><a href="#">ㅁㅁㅁ</a></li>
								<li class="dropdown"><a href="#"><span>내 정보</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
									<ul>
										<li><a href="#">나의 기록</a></li>
										<li><a href="#">나의 ㅁㅁㅁ</a></li>
										<li><a href="#">나의 ㅁㅁㅁ</a></li>
										<li><a href="#">나의 ㅁㅁㅁ</a></li>
										<li><a href="#">나의 ㅁㅁㅁ</a></li>
									</ul>
								</li>
								<li><a href="#">ㅁㅁㅁ</a></li>
								<li><a href="#">ㅁㅁㅁ</a></li>
								<li><a href="#">ㅁㅁㅁ</a></li>	
							</ul>
						</li>
	
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
						
						
						
						
						
						
						
<!-- 					</ul> -->
<!-- 				</li> -->
					
				<li id="LoginSessionId">
					<c:choose>
						<c:when test="${not empty sessionId }">
<%-- 							 <c:out value="${sessionId }"/> --%>
							<button type="button" class="btn btnLogout" id="btnLogout" style="color: #fff;">로그아웃</button>
						</c:when>
						<c:otherwise>
							<a href="usrLoginForm">로그인</a>
							<li class="nav-item"><a href="usrRegisterForm" class="nav-link">회원가입</a></li>
						</c:otherwise>
					</c:choose>
				</li>
<%-- 				
				
				
				<li>
					<%
					if (id != null) { // 로그인 상태인 경우
					%> <span class="px-3" style="color: #fff;">반갑습니다 <%=id%>
											님
									</span> <%
					 } else { // 로그인 상태가 아닌 경우
					 %> <a href="usrLoginForm" class="px-3"> 로그인 </a> <%
					 }
					 %>
									</li>
					
									<li>
										<%
										if (id != null) { // 로그인 상태인 경우
										%> <a href="logout">로그아웃</a> <%
					 } else { // 로그인 상태가 아닌 경우

					 }
					 %> --%>


				<!--            -->


			</ul>
		</nav>
		<!-- .navbar -->

		<i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i
			class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

	</div>
</header>
<!-- End Header -->
<!-- End Header -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script>

	$("#btnLogout").on("click", function(){
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/logoutProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { }
			,success: function(response) {
					
					location.href = "/indexUsrView";
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " +  jqXHR.errorThrown);
			}
		});
	});
	
	








</script>









