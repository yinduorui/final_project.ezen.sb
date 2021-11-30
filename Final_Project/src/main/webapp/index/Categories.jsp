<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인, 분류</title>
<link rel="stylesheet" type="text/css" href="../css/Categoriedesign.css">
</head>
<body>

<%@ include file="../include/header.jsp"%>
<%@ include file="../include/nav.jsp"%>
 
 <div id="Kategorietable">
 <div class="row1">
   <span class="cell col1">종류별</span>
   <span class="cell col2">전체</span>
   <span class="cell col4">국/찌개류</span>
   <span class="cell col5">밥/죽/떡류</span>
   <span class="cell col6">양념/소스류</span>
   <span class="cell col7">양식/중식/일식류</span>
 </div>
 <div class="row2">
   <span class="cell col8">상황별</span>
   <span class="cell col9">전체</span>
   <span class="cell col10">일상</span>
   <span class="cell col11">간식</span>
   <span class="cell col12">야식</span>
   <span class="cell col13">다이어트</span>
   <span class="cell col14">손님초대</span>
 </div>
 <div class="row3">
   <span class="cell col15">재료별</span>
   <span class="cell col16">전체</span>
   <span class="cell col17">고기류/해물류</span>
   <span class="cell col18">채소류/가공식품류</span>
   <span class="cell col19">쌀/밀가루</span>
   <span class="cell col20">건어물류/견과류</span>
 </div>
 <div class="row4">
   <span class="cell col21">방법별</span>
   <span class="cell col22">전체</span>
   <span class="cell col23">볶음/조리</span>
   <span class="cell col24">무침/부침/비빔</span>
   <span class="cell col25">굽기/튀김</span>
   <span class="cell col26">삶기/데침/찜</span>
 </div>
 <div class="row5">
   <span class="cell col27">테마별</span>
   <span class="cell col28">여성/뷰티</span>
   <span class="cell col29">엄마/아기</span>
   <span class="cell col30">건강/질병</span>
   <span class="cell col31">제철요리</span>
   <span class="cell col32">추천</span>
</div>
</div>

<br>
<p>총<p1 class="text">111,111</p1>개의 맛있는 레시피가 있습니다.</p>
<br>

<div id="Recipeimage">
<!-- 슬라이드사진 -->
</div>

<%@ include file="../include/footer.jsp"%>
</body>
</html>