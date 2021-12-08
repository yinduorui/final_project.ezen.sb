<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/nav.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href='${contextRoot}/css/Categoriedesign.css'>
<meta charset="UTF-8">
<title>메인, 분류</title>
</head>
<body>
 
 <div class="container">
  <section class="align-items-center">
 
 <div id="Categorietable">
 <div class="Categorietable_row">
   <span class="cell col1">종류별</span>
   <span class="cell col5"><a href="HelpkitchenServlet?command=help_categories">전체</a></span>
   <span class="cell col5"><a href="HelpkitchenServlet?command=board_tag&bTag=%25ED%2595%259C%25EC%258B%259D">한식</a></span>
   <span class="cell col5"><a href="HelpkitchenServlet?command=board_tag&bTag=%25EC%259D%25BC%25EC%258B%259D">일식</a></span>
   <span class="cell col6"><a href="HelpkitchenServlet?command=board_tag&bTag=%25EC%25A4%2591%25EC%258B%259D">중식</a></span>
   <span class="cell col7"><a href="HelpkitchenServlet?command=board_tag&bTag=%25EC%2596%2591%25EC%258B%259D">양식</a></span>
 </div>
 </div>
 <div class="Categorietable_row2">
   <span class="cell col7">상황별</span>
   <span class="cell col8">전체</span>
   <span class="cell col9">일상</span>
   <span class="cell col10">간식</span>
   <span class="cell col11">야식</span>
   <span class="cell col12">다이어트</span>
 </div>
 <div class="Categorietable_row3">
   <span class="cell col13">재료별</span>
   <span class="cell col14">전체</span>
   <span class="cell col15">고기류/해물류</span>
   <span class="cell col16">채소류/가공식품류</span>
   <span class="cell col17">쌀/밀가루</span>
   <span class="cell col18">건어물류/견과류</span>
 </div>
 <div class="Categorietable_row4">
   <span class="cell col19">방법별</span>
   <span class="cell col20">전체</span>
   <span class="cell col21">볶음/조리</span>
   <span class="cell col22">무침/부침/비빔</span>
   <span class="cell col23">굽기/튀김</span>
   <span class="cell col24">삶기/데침/찜</span>
 </div>
 <div class="Categorietable_row5">
   <span class="cell col25">테마별</span>
   <span class="cell col26">여성/뷰티</span>
   <span class="cell col27">엄마/아기</span>
   <span class="cell col28">건강/질병</span>
   <span class="cell col29">제철요리</span>
   <span class="cell col30">추천</span>
</div>
</div>

<br><br><br>

<!-- 틀만 잡아주면 끝 -->
	<div class="Categorie_box" style="display: flex; justify-content: center; gap: 30px; margin-bottom: 30px; flex-wrap: wrap;">
<c:forEach var="board" items="${boardList}">
		<div class="Categore_minibox">
			<a href="HelpkitchenServlet?command=board_view&bNum=${board.bNum}">
				<input type="hidden" name="bNum" value="${board.bNum}">
				<img src="${contextRoot}/upload/${board.bImageUrl}" width="300px" height="300px">
			</a>
		<p class="Categorie_title" style="width:300px">[${board.bTitle}]<br></p>
		<p class="Categorie_text1">닉네임 : ${board.bNickName}</p>
		<p class="Categorie_text2">추천수 : ${board.bVote}<br>조회수 : ${board.bViews}</p>
		</div>
</c:forEach>
	</div>

</section>
</div>

<%@ include file="../include/footer.jsp"%>
</body>
</html>