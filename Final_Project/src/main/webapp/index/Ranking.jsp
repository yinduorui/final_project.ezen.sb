<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인, 랭킹</title>
<link rel="stylesheet" type="text/css" href="../css/Rankingdesign.css">
</head>
<body>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/nav.jsp"%>
<div id=calendar align="right">
<input class="btn4" type="submit" value="일간">
<input class="btn4" type="submit" value="주간">
<input class="btn4" type="submit" value="월간">
</div>


<input class="btn1" type="submit" value="레시피">
<input class="btn2" type="submit" value="검색어">
<input class="btn3" type="submit" value="쉐프">


<div id="Rankingimage">
<!-- 슬라이드사진 -->
</div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>