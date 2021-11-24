<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script type="text/javascript" src="../js/member.js"></script>
</head>
<jsp:include page="../include/login_header.jsp"/>

<div class="login-form">
	<h1>로그인</h1>
	<form action="" method="post" name="">
		<div class="int-area">
			<input type="text" name="userid" value="${userid }" placeholder="아이디">
		</div>
		<div class="int-area">
			<input type="password" name="pwd" placeholder="비밀번호">
		</div>
	<div class="btn-area">
		<button type="submit" value="로그인" onclick="return loginCheck()">로그인</button>
		<button type="submit" value="회원가입" onclick="location.href=">회원가입</button>
		<button type="submit" value="비밀번호 찾기" onclick="location.href=">비밀번호 찾기</button>
	</div>
	</form>
	
</div>
</body>
</html>