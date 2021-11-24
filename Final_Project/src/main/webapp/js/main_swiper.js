var swiper = new Swiper(".mySwiper", {
	slidesPerView: 3,
	spaceBetween: 30,
	slidesPerGroup: 3,
	loop: true,
	loopFillGroupWithBlank: true,
	pagination: {
		el: ".swiper-pagination",
		clickable: true,
	},
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
});
/*
$(document).ready(function() {
	$('#CarrouselBox2 .slickList2').slick({
		dots: false,
		centerMode: false,
		vertical: false,
		slidesToShow: 4,
		slidesToScroll: 4,
		prevArrow: $('#CarrouselBox2 .btn_prev_exhibit_2'),
		nextArrow: $('#CarrouselBox2 .btn_next_exhibit_2')
	});

	$('#cateList .cate_cont').slick({
		dots: false,
		centerMode: false,
		vertical: false,
		slidesToShow: 12,
		slidesToScroll: 12,
		prevArrow: $('#cateList .slick_event_prev'),
		nextArrow: $('#cateList .slick_event_next')
	});

	$('#chefsList .chefList').slick({
		dots: false,
		centerMode: false,
		vertical: false,
		slidesToShow: 10,
		slidesToScroll: 10,
		prevArrow: $('#chefsList .slick_event_prev'),
		nextArrow: $('#chefsList .slick_event_next')
	});

	$("#loading").hide();
});
*/