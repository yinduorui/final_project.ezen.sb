<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot" value="${pageContext.servletContext.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
.container {max-width: 90%;}
.img-thumbnail {border: 1px solid #fff;}
.bg-light {background-color: #fff !important;}
.btn-area2 button {width: 100px; height: 40px;
	background: #ffc107;
	border: none;
	border-radius: 0.25rem;
}
</style>
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-light bg-light">
  <div class="container">
  <a href="/HelpkitchenServlet?command=help_main"><img src="../img/logo.png" class="img-thumbnail" alt="logo"></a>
   <form class="d-flex" style="width:400px" action="HelpkitchenServlet" method="post">
    <input type="hidden" name="command" value="board_search">
      <input class="form-control me-4" type="search" name="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
     </form>
     
<c:choose>
<c:when test="${mVo == null}">
<!-- 로그인이 되어있지 않는 경우 -->
   	<div class="btn-area2">
		<button value="로그인" onclick="location.href='HelpkitchenServlet?command=member_login_form'">로그인</button>
		<button value="레시피 작성" onclick="location.href='HelpkitchenServlet?command=member_login_form'">레시피 작성</button>
	</div>
 </c:when>
 <c:when test="${mVo != null}">
<!-- 로그인이 되어있는경우 나오는 화면  -->
<div>환영합니다! ${mVo.mNickName} 님</div>
	<div class="btn-area2">
		<button value="로그아웃" onclick="location.href='HelpkitchenServlet?command=member_logout'">로그아웃</button>
		<button value="레시피 작성" onclick="location.href='HelpkitchenServlet?command=board_write_form'">레시피 작성</button>
		<button value="비밀번호 변경" onclick="location.href='HelpkitchenServlet?command=member_edit_password_form'">비밀번호 변경</button>
	 </div>
 </c:when>
</c:choose>
	</div>
</nav>

