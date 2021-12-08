<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/nav.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href='${contextRoot}/css/Rankingdesign.css'>
<meta charset="UTF-8">
<title>메인, 랭킹</title>
</head>
<body>

<div class="container">
  <section class="align-items-center">
 
<!-- <br>
<div id=Ranking_calendar align="right">
<input class="Ranking_btn" type="submit" value="일간">
<input class="Ranking_btn" type="submit" value="주간">
<input class="Ranking_btn" type="submit" value="월간">
</div>
<input class="Ranking_btn" type="submit" value="레시피">
<input class="Ranking_btn" type="submit" value="검색어">
<input class="Ranking_btn" type="submit" value="쉐프"> -->
<br>
<input class="Ranking_btn" type="submit" value="오늘의 랭킹">


<br><br><br>
<div class="Ranking_box">
    <div class="Ranking_minibox">
       <p class="Ranking_number">
        <b>1st</b>
       </p>
       <a href="??">
       <img src="../img/Recipeimage1.png"></a>
       <p class="Ranking_title">[마늘종볶음]<br>단짠단짠 자꾸만 손이가요~</p>
       <p class="Ranking_text1">닉네임</p>
       <p class="Ranking_text2">★★★★★ 조회수:??</p>
    </div>
</div>
</section>
</div>

<%@ include file="../include/footer.jsp"%>
</body>
</html>