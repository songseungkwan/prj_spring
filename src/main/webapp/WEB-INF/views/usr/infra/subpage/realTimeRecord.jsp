<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
    />
    <title>역대 기록</title>

    

    <link rel="stylesheet" href="resources/ash_assets/css/reset.css" />
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/ash_assets/img/favicon.png" />

    <!-- All CSS Files -->
    <!-- Icon Font -->
    <link rel="stylesheet" href="resources/ash_assets/css/font.awesome.min.css" />
    <!-- Icon Font -->
    <link rel="stylesheet" href="resources/ash_assets/css/et-line.css" />
    <!-- Plugins css file -->
    <link rel="stylesheet" href="resources/ash_assets/css/plugins.css" />
    <!-- Main style -->
    <link rel="stylesheet" href="resources/ash_assets/css/style.css" />
    <link rel="stylesheet" href="resources/ash_assets/css/style02.css" />
    <link rel="stylesheet" href="resources/ash_assets/css/ATR.css" />
    <!-- Responsive css -->
    <link rel="stylesheet" href="resources/ash_assets/css/responsive.css" />
    <!-- Modernizr JS -->
    <script
      src="https://kit.fontawesome.com/f676149ecf.js"
      crossorigin="anonymous"
    ></script>
    <script src="resources/ash_assets/js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />

    <!-- Google Tag Manager -->
    <script>
      (function (w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
          "gtm.start": new Date().getTime(),
          event: "gtm.js",
        });
        var f = d.getElementsByTagName(s)[0],
          j = d.createElement(s),
          dl = l != "dataLayer" ? "&l=" + l : "";
        j.async = true;
        j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
        f.parentNode.insertBefore(j, f);
      })(window, document, "script", "dataLayer", "GTM-5JCTSSF");
    </script>
    <!-- End Google Tag Manager -->

    <!-- Bootstrap css -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- kross css -->
    <link rel="stylesheet" href="resources/ash_assets/css/krossStyle.css" />
  </head>
  <body>
    <div id="wrap">
      <!-- 헤더 -->
      <nav
        class="navbar navbar-expand-lg fixed-top navbar-transparent"
        color-on-scroll="300"      >
        <div class="container" id="blackFonts">
          <div class="navbar-translate">
            <a
              class="navbar-brand"
              id="bF01"
              href=""
              rel="tooltip"
              title="Coded by Creative Tim"
              data-placement="bottom"
              target="_blank"            >
              King-Petition
            </a>
            <button
              class="navbar-toggler navbar-toggler"
              type="button"
              data-toggle="collapse"
              data-target="#navigation"
              aria-controls="navigation-index"
              aria-expanded="false"
              aria-label="Toggle navigation"            >
              <span class="navbar-toggler-bar bar1"></span>
              <span class="navbar-toggler-bar bar2"></span>
              <span class="navbar-toggler-bar bar3"></span>
            </button>
          </div>
          <div
            class="collapse navbar-collapse justify-content-end"
            id="navigation"          >
            <ul class="navbar-nav">
              <li class="nav-item">
                <a
                  class="nav-link"
                  rel="tooltip"
                  title="홈"
                  data-placement="bottom"
                  href="#"
                  target="_blank"                >
                  <i class="fa-solid fa-house"></i>
                  <p class="d-lg-none">home</p>
                </a>
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  rel="tooltip"
                  title="종목"
                  data-placement="bottom"
                  href="workout.html"
                  target="_blank"                >
                  <i class="fa-solid fa-list"></i>
                  <p class="d-lg-none">종목</p>
                </a>
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  rel="tooltip"
                  title="내 정보"
                  data-placement="bottom"
                  href=""
                  target="_blank"                >
                  <i class="fa-regular fa-user"></i>
                  <p class="d-lg-none">내 정보</p>
                </a>
              </li>

              <li class="nav-item">
                <a href="" target="_blank" class="nav-link"> 회원가입</a>
              </li>

              <li class="nav-item">
                <a href="" target="_blank" class="nav-link"> 로그인</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <!-- 메인 컨테이너 -->
      <div id="mainSection">
        <div id="recordWrap">
            <div id="recordTitle">
                <h2 id="h2Black">역대 기록</h2>
                <select name="연" id="recordSelect01">
                    <option value="1">2023</option>
                    <option value="2">2024</option>

                </select>
                <select name="월" id="recordSelect02">
                    <option value="1">1월</option>
                    <option value="2">2월</option>
                    <option value="3">3월</option>
                    <option value="4">4월</option>
                    <option value="5">5월</option>
                    <option value="6">6월</option>
                    <option value="7">7월</option>
                    <option value="8">8월</option>
                    <option value="9">9월</option>
                    <option value="10">10월</option>
                    <option value="11">11월</option>
                    <option value="12">12월</option>


                </select>



            </div>



      </div>
    </div>

















    

      <!-- 푸터 -->
      <div class="footer-section section pt-65 pb-50">
        <div class="container">
          <div class="row">
            <div class="col-6">
              <p>King-Petition | T: 02-1000-1000</p>
              <p>서울시 강남구 xx동 | 사업자등록번호: 123-45-67890</p>
              <p>통신판매업신고: 2023-서울강남-12345</p>
              <p>대표: 송승관 | 개인정보책임자: 송승관</p>
              <p>이메일: ssk3235@gmail.com</p>

              <p>copyright 2023. Sskdream.All rights reserved.</p>
            </div>
          </div>
        </div>
      </div>
      <!-- End Footer Section -->
    </div>
    <!-- bootstrap js -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
      crossorigin="anonymous"
    ></script>

    <!-- Placed JS at the end of the document so the pages load faster -->
    <!-- jQuery latest version -->
    <script src="resources/ash_assets/js/vendor/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap js -->

    <!-- Plugins js -->
    <!-- shuffle -->
    <script src="resources/ash_assets/plugins/shuffle/shuffle.min.js"></script>
    <script src="resources/ash_assets/js/plugins.js"></script>
    <!-- Ajax Mail js -->
    <script src="resources/ash_assets/js/ajax-mail.js"></script>
    <!-- Main js -->
    <script src="resources/ash_assets/js/main.js"></script>
    <!-- kross js -->
    <script src="resources/ash_assets/js/krossScript.js"></script>
  </body>
</html>
