<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
</head>
<body>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/nav.jsp"%>

	<div class="swiper mySwiper" style="border: solid 1px red; margin: 30px auto;">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<li style="width: 100%;">
						<div>
							<img src="" alt="사진">
						</div>
						<div>타이틀 끌어오기</div>
				</li>
			</div>
			<div class="swiper-slide">
				<li style="width: 100%;">
						<div>
						<img src="" alt="사진">
						</div>
						<div>
							<div>타이틀 끌어오기</div>
						</div>
				</li>
			</div>
			<div class="swiper-slide">
				<li style="width: 100%;">
						<div>
							<img src="" alt="사진">
						</div>
						<div>
							<div>타이틀 끌어오기</div>
						</div>
					</a>
				</li>
			</div>
			<div class="swiper-slide">Slide 3</div>
			<div class="swiper-slide">Slide 4</div>
			<div class="swiper-slide">Slide 5</div>
			<div class="swiper-slide">Slide 6</div>
			<div class="swiper-slide">Slide 7</div>
			<div class="swiper-slide">Slide 8</div>
			<div class="swiper-slide">Slide 9</div>
		</div>
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>
	</div>

	<div class="swiper mySwiper" style="border: solid 1px red; margin: 30px auto;">
      <div class="swiper-wrapper">
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 3</div>
        <div class="swiper-slide">Slide 4</div>
        <div class="swiper-slide">Slide 5</div>
        <div class="swiper-slide">Slide 6</div>
        <div class="swiper-slide">Slide 7</div>
        <div class="swiper-slide">Slide 8</div>
        <div class="swiper-slide">Slide 9</div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
    
<div class="swiper mySwiper" style="border: solid 1px red; margin: 30px auto;">
      <div class="swiper-wrapper">
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 3</div>
        <div class="swiper-slide">Slide 4</div>
        <div class="swiper-slide">Slide 5</div>
        <div class="swiper-slide">Slide 6</div>
        <div class="swiper-slide">Slide 7</div>
        <div class="swiper-slide">Slide 8</div>
        <div class="swiper-slide">Slide 9</div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
    
<div class="swiper mySwiper" style="border: solid 1px red; margin: 30px auto;">
      <div class="swiper-wrapper">
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 3</div>
        <div class="swiper-slide">Slide 4</div>
        <div class="swiper-slide">Slide 5</div>
        <div class="swiper-slide">Slide 6</div>
        <div class="swiper-slide">Slide 7</div>
        <div class="swiper-slide">Slide 8</div>
        <div class="swiper-slide">Slide 9</div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>


	<%@ include file="../include/footer.jsp"%>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="../js/main_swiper.js"></script>
</body>
</html>