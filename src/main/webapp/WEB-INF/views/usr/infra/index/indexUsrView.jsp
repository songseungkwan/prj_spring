<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

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
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
          
<!--           <div class="d-flex justify-content-center justify-content-lg-start"> -->
<!--             <a href="#about" class="btn-get-started">Get Started</a> -->
<!--             <a href="https://youtu.be/QmXmM2Yf8sk" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Watch Video</span></a> -->
<!--           </div> -->
        </div>
        <div class="col-lg-6 order-1 order-lg-2">
          <img src="" class="img-fluid" alt="" data-aos="zoom-out" data-aos-delay="100">
        </div>
      </div>
    </div>

    <div class="icon-boxes position-relative">
      <div class="container position-relative">
        <div class="row gy-4 mt-5">

          <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-display-fill"></i></div>
              <h4 class="title"><a href="javascript:void(0);" class="stretched-link " onclick="checkLogin('realTimeRecord')">실시간 기록 & 영상</a></h4>
            </div>
          </div><!--End Icon Box -->

          <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-award-fill"></i></div>									<!-- page name 작성  -->
              <h4 class="title"><a href="javascript:void(0);" class="stretched-link" onclick="checkLogin()">역대 기록</a></h4>
            </div>
          </div><!--End Icon Box -->

          <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-youtube"></i></div>								<!-- page name 작성  -->
              <h4 class="title"><a href="javascript:void(0);" class="stretched-link" onclick="checkLogin('registerVideo')">영상 등록하기</a></h4>
            </div>
          </div><!--End Icon Box -->

          <div class="col-xl-3 col-md-6" data-aos="fade-up" data-aos-delay="500">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-coin"></i></div>								<!-- page name 작성  -->
              <h4 class="title"><a href="javascript:void(0);" class="stretched-link" onclick="checkLogin()">상금 순위</a></h4>
            </div>
          </div><!--End Icon Box -->

        </div>
      </div>
    </div>


  </section>
  <!-- End Hero Section -->

  <main id="main">

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>About Us</h2>
        </div>

        <div class="row gy-4">
          <div class="col-lg-6">
            <h3 style="line-height: 1.8;">자신있는 종목을 골라 참가비를 내고 <br> 다른 사람들과 기록을 경쟁을 통한 성장 프로그램입니다.</h3>
            <img src="resources/realProjectAssets/img/345.png" class="img-fluid rounded-4 mb-4" alt="" style="width: 600px;">
            <p></p>
            <p></p>
          </div>
          <div class="col-lg-6">
            <div class="content ps-0 ps-lg-5">
              <p class="fst-italic">
                
              </p>
              <ul>
                <li><i class="bi bi-check-circle-fill"></i> 혼자 운동하는데 내 수준이 어느 정도인지 궁금할 때!</li>
                <li><i class="bi bi-check-circle-fill"></i> 고수들의 피드백을 받고 폭풍 성장 하고 싶을 때!</li>
                <li><i class="bi bi-check-circle-fill"></i> 지루한 운동 루틴에 변화를 주고 싶을 때!</li>
              </ul>
              <p>
                
              </p>

              <div class="position-relative mt-4">
                <img src="resources/realProjectAssets/img/about-2.jpg" class="img-fluid rounded-4" alt="">
                <a href="https://youtu.be/DQrsQiqphkg" class="glightbox play-btn"></a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->

    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients">
      <div class="container" data-aos="zoom-out">

        <div class="clients-slider swiper">
          <div class="swiper-wrapper align-items-center">
            <div class="swiper-slide"><img src="resources/realProjectAssets/img/clients/adidas.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="resources/realProjectAssets/img/clients/nike.jpg" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="resources/realProjectAssets/img/clients/underArmour.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="resources/realProjectAssets/img/clients/puma.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="resources/realProjectAssets/img/clients/xexymix.jpg" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="resources/realProjectAssets/img/clients/newBalance.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="resources/realProjectAssets/img/clients/mizuno.png" class="img-fluid" alt=""></div>
            <div class="swiper-slide"><img src="resources/realProjectAssets/img/clients/vans.png" class="img-fluid" alt=""></div>
          </div>
        </div>

      </div>
    </section><!-- End Clients Section -->

    

    <!-- ======= Call To Action Section ======= -->
    <section id="call-to-action" class="call-to-action">
      <div class="container text-center" data-aos="zoom-out">
        <a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="glightbox play-btn"></a>
        <h3>Call To Action</h3>
        <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <a class="cta-btn" href="#">Call To Action</a>
      </div>
    </section><!-- End Call To Action Section -->

    <!-- ======= Our Services Section ======= -->
    <section id="services" class="services sections-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>이용 안내</h2>
          <p></p>
        </div>

        <div class="row gy-4" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-4 col-md-6">
            <div class="service-item  position-relative">
              <div class="icon">
                <i class="bi bi-activity"></i>
              </div>
              <h3>1. 계정 생성</h3>
              <p>계정이 없으면 먼저 회원가입을 해주세요.
                (일반인/선수 출신/현역 군인 중 현재 신분에 맡게 선택해주세요.)</p>
              <a href="#none" class="readmore stretched-link"></a>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-broadcast"></i>
              </div>
              <h3>2.훈련</h3>
              <p>계정을 만드신 후 자신있는 종목을 열심히 연습해보세요.</p>
              <a href="#none" class="readmore stretched-link"></a>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-easel"></i>
              </div>
              <h3>3. 영상 촬영</h3>
              <p>이제 폰으로 기록 영상을 남겨주세요. 촬영한 시간과 날짜가 정확히 나와야 해요.</p>
              <a href="#none" class="readmore stretched-link"></a>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-bounding-box-circles"></i>
              </div>
              <h3>4. 영상 업로드</h3>
              <p>촬영본을 유튜브에 업로드 후 게시물에 링크를 걸어주거나, 바로 영상을 업로드해주세요. 기록도 입력해주세요.</p>
              <a href="#none" class="readmore stretched-link"></a>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-calendar4-week"></i>
              </div>
              <h3>5. 참가비</h3>
              <p>0원부터 10,000원 안에서 금액을 설정해 참가비를 내고 높은 순위 기록하면 상금도 탈 수 있어요.(0원은 상금 수령 불가능)</p>
              <a href="#none" class="readmore stretched-link"></a>
            </div>
          </div><!-- End Service Item -->

          <div class="col-lg-4 col-md-6">
            <div class="service-item position-relative">
              <div class="icon">
                <i class="bi bi-chat-square-text"></i>
              </div>
              <h3>
                6. 피드백</h3>
              <p>다른 형제들의 영상도 보며 댓글을 달며 소통해보세요.</p>
              <a href="#none" class="readmore stretched-link"></a>
            </div>
          </div><!-- End Service Item -->

        </div>

      </div>
    </section><!-- End Our Services Section -->

   

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio sections-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Workouts</h2>
          <p></p>
        </div>

        <div class="portfolio-isotope" data-portfolio-filter="*" data-portfolio-layout="masonry" data-portfolio-sort="original-order" data-aos="fade-up" data-aos-delay="100">

          <div>
            <ul class="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-BodyweightExercise">맨몸 운동</li>
              <li data-filter=".filter-FreeweightExercise">기구 운동</li>
              <li data-filter=".filter-AerobicExercise">유산소 운동</li>
            </ul><!-- End Portfolio Filters -->
          </div>

          <div class="row gy-4 portfolio-container">

            <div class="col-xl-4 col-md-6 portfolio-item filter-BodyweightExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/pullups/pull-up.jpg" data-gallery="portfolio-gallery-BodyweightExercise" class="glightbox"><img src="resources/realProjectAssets/img/pullups/pull-up.jpg" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">턱걸이</a></h4>
                  <p>상체 운동의 꽃</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->

            <div class="col-xl-4 col-md-6 portfolio-item filter-FreeweightExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/benchpress/bench.jpg" data-gallery="portfolio-gallery-FreeweightExercise" class="glightbox"><img src="resources/realProjectAssets/img/benchpress/bench.jpg" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">벤치프레스</a></h4>
                  <p>가슴 위의 상체를 종합적으로 강화</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->

            <div class="col-xl-4 col-md-6 portfolio-item filter-AerobicExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/running/running01.jpg" data-gallery="portfolio-gallery-AerobicExercise" class="glightbox"><img src="resources/realProjectAssets/img/running/running01.jpg" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">달리기</a></h4>
                  <p>누구든지 언제 어디서나 할 수 있는 운동</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->

            <div class="col-xl-4 col-md-6 portfolio-item filter-AerobicExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/swim/swimming01.jpg" data-gallery="portfolio-gallery-app" class="glightbox"><img src="resources/realProjectAssets/img/swim/swimming01.jpg" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">수영</a></h4>
                  <p>물의 흐름과 하나가 되어 자유롭게 헤엄치는 스포츠</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->

            <div class="col-xl-4 col-md-6 portfolio-item filter-BodyweightExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/pushups/push-ups.jpg" data-gallery="portfolio-gallery-BodyweightExercise" class="glightbox"><img src="resources/realProjectAssets/img/pushups/push-ups.jpg" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">팔굽혀펴기</a></h4>
                  <p>접근성, 운동 효과, 특히 안전성 이 3마리 토끼를 <br>
                    한꺼번에 잡을 수 있는 운동</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->

            <div class="col-xl-4 col-md-6 portfolio-item filter-FreeweightExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/deadlift/Deadlift.png" data-gallery="portfolio-gallery-FreeweightExercise" class="glightbox"><img src="resources/realProjectAssets/img/deadlift/Deadlift.png" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">데드리프트</a></h4>
                  <p>전신의 근육을 활용하는 효율적, 효과적인 운동</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->

            <div class="col-xl-4 col-md-6 portfolio-item filter-AerobicExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/bikes/bikes.jpg" data-gallery="portfolio-gallery-AerobicExercise" class="glightbox"><img src="resources/realProjectAssets/img/bikes/bikes.jpg" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">자전거</a></h4>
                  <p>바람을 가르며 달리는 짜릿함을 만끽할 수 있는 스포츠</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->



            <div class="col-xl-4 col-md-6 portfolio-item filter-BodyweightExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/dips/dips.png" data-gallery="portfolio-gallery-BodyweightExercise" class="glightbox"><img src="resources/realProjectAssets/img/dips/dips.png" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">딥스</a></h4>
                  <p>대흉근, 삼두근, 전면 삼각근이 주로 발달되는 운동</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->

            <div class="col-xl-4 col-md-6 portfolio-item filter-FreeweightExercise">
              <div class="portfolio-wrap">
                <a href="resources/realProjectAssets/img/squat/squat.webp" data-gallery="portfolio-gallery-FreeweightExercise" class="glightbox"><img src="resources/realProjectAssets/img/squat/squat.webp" class="img-fluid" alt=""></a>
                <div class="portfolio-info">
                  <h4><a href="portfolio-details.html" title="More Details">스쿼트</a></h4>
                  <p>하체운동에서는 '알파이자 오메가'인 운동</p>
                </div>
              </div>
            </div><!-- End Portfolio Item -->





          </div><!-- End Portfolio Container -->

        </div>

      </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Our Team Section ======= -->
    <section id="team" class="team">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Man</h2>
          <p>Nulla dolorum nulla nesciunt rerum facere sed ut inventore quam porro nihil id ratione ea sunt quis dolorem dolore earum</p>
        </div>

        <div class="row gy-4 ">

          <div class="col-xl-3 col-md-6 d-flex text-center" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <img src="resources/realProjectAssets/img/송승관.jpg" class="img-fluid" alt="">
              <h4>Seungkwan Song</h4>
              <span>Web Development</span>
              <div class="social">
                <a href=""><i class="bi bi-twitter"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
                <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div><!-- End Team Member -->

          

          

          

        </div>

      </div>
    </section><!-- End Our Team Section -->

    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing sections-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Pricing</h2>
          <p>Aperiam dolorum et et wuia molestias qui eveniet numquam nihil porro incidunt dolores placeat sunt id nobis omnis tiledo stran delop</p>
        </div>

        <div class="row g-4 py-lg-5" data-aos="zoom-out" data-aos-delay="100">

          <div class="col-lg-4">
            <div class="pricing-item">
              <h3>Free Plan</h3>
              <div class="icon">
                <i class="bi bi-box"></i>
              </div>
              <h4><sup>$</sup>0<span> / month</span></h4>
              <ul>
                <li><i class="bi bi-check"></i> Quam adipiscing vitae proin</li>
                <li><i class="bi bi-check"></i> Nec feugiat nisl pretium</li>
                <li><i class="bi bi-check"></i> Nulla at volutpat diam uteera</li>
                <li class="na"><i class="bi bi-x"></i> <span>Pharetra massa massa ultricies</span></li>
                <li class="na"><i class="bi bi-x"></i> <span>Massa ultricies mi quis hendrerit</span></li>
              </ul>
              <div class="text-center"><a href="#" class="buy-btn">Buy Now</a></div>
            </div>
          </div><!-- End Pricing Item -->

          <div class="col-lg-4">	
            <div class="pricing-item featured">
              <h3>Business Plan</h3>
              <div class="icon">
                <i class="bi bi-airplane"></i>
              </div>

              <h4><sup>$</sup>29<span> / month</span></h4>
              <ul>
                <li><i class="bi bi-check"></i> Quam adipiscing vitae proin</li>
                <li><i class="bi bi-check"></i> Nec feugiat nisl pretium</li>
                <li><i class="bi bi-check"></i> Nulla at volutpat diam uteera</li>
                <li><i class="bi bi-check"></i> Pharetra massa massa ultricies</li>
                <li><i class="bi bi-check"></i> Massa ultricies mi quis hendrerit</li>
              </ul>
              <div class="text-center"><a href="#" class="buy-btn">Buy Now</a></div>
            </div>
          </div><!-- End Pricing Item -->

          <div class="col-lg-4">
            <div class="pricing-item">
              <h3>Developer Plan</h3>
              <div class="icon">
                <i class="bi bi-send"></i>
              </div>
              <h4><sup>$</sup>49<span> / month</span></h4>
              <ul>
                <li><i class="bi bi-check"></i> Quam adipiscing vitae proin</li>
                <li><i class="bi bi-check"></i> Nec feugiat nisl pretium</li>
                <li><i class="bi bi-check"></i> Nulla at volutpat diam uteera</li>
                <li><i class="bi bi-check"></i> Pharetra massa massa ultricies</li>
                <li><i class="bi bi-check"></i> Massa ultricies mi quis hendrerit</li>
              </ul>
              <div class="text-center"><a href="#" class="buy-btn">Buy Now</a></div>
            </div>
          </div><!-- End Pricing Item -->

        </div>

      </div>
    </section><!-- End Pricing Section -->

    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq">
      <div class="container" data-aos="fade-up">

        <div class="row gy-4">

          <div class="col-lg-4">
            <div class="content px-xl-5">
              <h3>자주 묻는 <strong>질문</strong></h3>
              <p>
              </p>
            </div>
          </div>

          <div class="col-lg-8">

            <div class="accordion accordion-flush" id="faqlist" data-aos="fade-up" data-aos-delay="100">

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1">
                    <span class="num">1.</span>
                    가나다라마바사??
                  </button>
                </h3>
                <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    아자차카타파하.
                  </div>
                </div>
              </div><!-- # Faq item-->

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2">
                    <span class="num">2.</span>
                    아자차카타파하?
                  </button>
                </h3>
                <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    가나다라마바사.
                  </div>
                </div>
              </div><!-- # Faq item-->

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-3">
                    <span class="num">3.</span>
                    가나다라마바사?
                  </button>
                </h3>
                <div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    아자차카타파하
                  </div>
                </div>
              </div><!-- # Faq item-->

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-4">
                    <span class="num">4.</span>
                    아자차카타파하?
                  </button>
                </h3>
                <div id="faq-content-4" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    가나다라마바사.
                  </div>
                </div>
              </div><!-- # Faq item-->

              <div class="accordion-item">
                <h3 class="accordion-header">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-5">
                    <span class="num">5.</span>
                    가나다라마바사?
                  </button>
                </h3>
                <div id="faq-content-5" class="accordion-collapse collapse" data-bs-parent="#faqlist">
                  <div class="accordion-body">
                    아자차카타파하
                  </div>
                </div>
              </div><!-- # Faq item-->

            </div>

          </div>
        </div>

      </div>
    </section><!-- End Frequently Asked Questions Section -->

    <!-- ======= Recent Blog Posts Section ======= -->
    <section id="recent-posts" class="recent-posts sections-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Recent Blog Posts</h2>
          <p>Consequatur libero assumenda est voluptatem est quidem illum et officia imilique qui vel architecto accusamus fugit aut qui distinctio</p>
        </div>

        <div class="row gy-4">

          <div class="col-xl-4 col-md-6">
            <article>

              <div class="post-img">
                <img src="resources/realProjectAssets/img/blog/blog-1.jpg" alt="" class="img-fluid">
              </div>

              <p class="post-category">Politics</p>

              <h2 class="title">
                <a href="blog-details.html">Dolorum optio tempore voluptas dignissimos</a>
              </h2>

              <div class="d-flex align-items-center">
                <img src="resources/realProjectAssets/img/blog/blog-author.jpg" alt="" class="img-fluid post-author-img flex-shrink-0">
                <div class="post-meta">
                  <p class="post-author">Maria Doe</p>
                  <p class="post-date">
                    <time datetime="2022-01-01">Jan 1, 2022</time>
                  </p>
                </div>
              </div>

            </article>
          </div><!-- End post list item -->

          <div class="col-xl-4 col-md-6">
            <article>

              <div class="post-img">
                <img src="resources/realProjectAssets/img/blog/blog-2.jpg" alt="" class="img-fluid">
              </div>

              <p class="post-category">Sports</p>

              <h2 class="title">
                <a href="blog-details.html">Nisi magni odit consequatur autem nulla dolorem</a>
              </h2>

              <div class="d-flex align-items-center">
                <img src="resources/realProjectAssets/img/blog/blog-author-2.jpg" alt="" class="img-fluid post-author-img flex-shrink-0">
                <div class="post-meta">
                  <p class="post-author">Allisa Mayer</p>
                  <p class="post-date">
                    <time datetime="2022-01-01">Jun 5, 2022</time>
                  </p>
                </div>
              </div>

            </article>
          </div><!-- End post list item -->

          <div class="col-xl-4 col-md-6">
            <article>

              <div class="post-img">
                <img src="resources/realProjectAssets/img/blog/blog-3.jpg" alt="" class="img-fluid">
              </div>

              <p class="post-category">Entertainment</p>

              <h2 class="title">
                <a href="blog-details.html">Possimus soluta ut id suscipit ea ut in quo quia et soluta</a>
              </h2>

              <div class="d-flex align-items-center">
                <img src="resources/realProjectAssets/img/blog/blog-author-3.jpg" alt="" class="img-fluid post-author-img flex-shrink-0">
                <div class="post-meta">
                  <p class="post-author">Mark Dower</p>
                  <p class="post-date">
                    <time datetime="2022-01-01">Jun 22, 2022</time>
                  </p>
                </div>
              </div>

            </article>
          </div><!-- End post list item -->

        </div><!-- End recent posts list -->

      </div>
    </section><!-- End Recent Blog Posts Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>불만사항 & 신고 접수</h2>
          <p></p>
        </div>

        <div class="row gx-lg-0 gy-4">

          <div class="col-lg-4">

            <div class="info-container d-flex flex-column align-items-center justify-content-center">
              <div class="info-item d-flex">
                <i class="bi bi-geo-alt flex-shrink-0"></i>
                <div>
                  <h4>Location:</h4>
                  <p>A108 Adam Street, New York, NY 535022</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-envelope flex-shrink-0"></i>
                <div>
                  <h4>Email:</h4>
                  <p>info@example.com</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-phone flex-shrink-0"></i>
                <div>
                  <h4>Call:</h4>
                  <p>+1 5589 55488 55</p>
                </div>
              </div><!-- End Info Item -->

              <div class="info-item d-flex">
                <i class="bi bi-clock flex-shrink-0"></i>
                <div>
                  <h4>Open Hours:</h4>
                  <p>Mon-Sat: 11AM - 23PM</p>
                </div>
              </div><!-- End Info Item -->
            </div>

          </div>

          <div class="col-lg-8">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="7" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div><!-- End Contact Form -->

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

    <%@include file = "../include/includeUsrFooter.jsp"%>

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <%@include file = "../include/includeUsrJs.jsp"%>
  <script>
  
<%--     function checkLogin() {
        <% if (id == null) { %>
            alert("로그인 후에 이용 가능합니다");
        <% } else { %>
            // 버튼을 클릭한 후 실행할 동작
        <% } %>
    } --%>
    
    function checkLogin(pageName) {
        <c:choose>
            <c:when test="${sessionId == null}">
                alert("<c:out value='로그인 후에 이용 가능합니다'/>");
                window.location.href = "/usrLoginForm";
            </c:when>
            <c:otherwise>
            window.location.href = pageName;
	
            </c:otherwise>
        </c:choose>
    }
    
    
    
    
    
</script>
  

</body>

</html>