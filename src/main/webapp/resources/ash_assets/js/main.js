(function($) {
    "use strict";
/*--
    Menu Sticky
-----------------------------------*/
var $window = $(window);
$window.on('scroll', function() {
	var scroll = $window.scrollTop();
	if (scroll < 300) {
		$(".sticker").removeClass("stick");
	}else{
		$(".sticker").addClass("stick");
	}
});


  /**
   * Preloader
   */
  const preloader = document.querySelector('#preloader');
  if (preloader) {
    window.addEventListener('load', () => {
      setTimeout(() => {
        preloader.classList.add('loaded');
      }, 1000);
      setTimeout(() => {
        preloader.remove();
      }, 2000);
    });
  }





    
$('a[href*="#"]:not([href="#"])').click(function() {
if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
  var target = $(this.hash);
  target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
  if (target.length) {
	$('html, body').animate({
	  scrollTop: target.offset().top - 75
	}, 1000);
	return false;
  }
}
});
    
/*--
	Counter UP
-----------------------------------*/
$('.counter').counterUp({
    delay: 20,
    time: 3000
});




$('.menu-toggle-btn').click(function () {
    $('.menu-toggle-btn').toggleClass("effect");
    $('.menu-list').toggleClass("effect");
  });




















  
});

// carousel image

const carousel = document.querySelector('.carousel');
    const slides = carousel.querySelector('.slides');
    const slideWidth = carousel.clientWidth;
    const indicatorsContainer = carousel.querySelector('.indicators');
    let currentIndex = 0;
    let slideInterval;

    function createIndicators() {
      for (let i = 0; i < slides.children.length; i++) {
        const indicator = document.createElement('button');
        indicator.addEventListener('click', function () {
          currentIndex = i;
          updateSlidePosition();
          restartSlideInterval();
          updateIndicators();
        });
        indicatorsContainer.appendChild(indicator);
      }
      updateIndicators();
    }

    function updateIndicators() {
      const indicators = indicatorsContainer.querySelectorAll('button');
      indicators.forEach((indicator, index) => {
        if (index === currentIndex) {
          indicator.classList.add('active');
        } else {
          indicator.classList.remove('active');
        }
      });
    }

    function nextSlide() {
      currentIndex++;
      if (currentIndex >= slides.children.length) {
        currentIndex = 0;
      }
      updateSlidePosition();
      updateIndicators();
    }

    function prevSlide() {
      currentIndex--;
      if (currentIndex < 0) {
        currentIndex = slides.children.length - 1;
      }
      updateSlidePosition();
      updateIndicators();
    }

    function updateSlidePosition() {
      slides.style.transform = `translateX(-${currentIndex * slideWidth}px)`;
    }

    function startSlideInterval() {
      slideInterval = setInterval(nextSlide, 3000);
    }

    function restartSlideInterval() {
      clearInterval(slideInterval);
      startSlideInterval();
    }

    createIndicators();
    startSlideInterval();





// n초 후에 동영상 영역을 숨기는 함수
function hideVideoContainer() {
  var videoContainer = document.getElementById("video-container");
  videoContainer.style.display = "none";
}

// 동영상이 로드된 후에 실행될 함수
function startVideo() {
  var myVideo = document.getElementById("my_video01");
  myVideo.addEventListener("loadedmetadata", function() {
    // 동영상이 재생되는 시간을 기다린 후에 동영상 영역을 숨김 처리
    setTimeout(hideVideoContainer, myVideo.duration * 1000);
  });
}

// 페이지가 로드된 후에 실행될 함수
window.addEventListener("load", function() {
  startVideo();
});







    
