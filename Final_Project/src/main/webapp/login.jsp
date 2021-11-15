<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%@ include file="header.jsp"%>

	<div class="login-form">
	<h1>로그인</h1>
	<form action="login.do" method="post" name="frm">
		<div class="int-area">
			<input type="text" name="userid" value="${userid }" placeholder="아이디" required>
		</div>
		<div class="int-area">
			<input type="password" name="pwd" placeholder="비밀번호" required> 
		</div>
	</form>
		<div class="btn-area">
			<button type="submit" value="로그인" onclick="return loginCheck()" >로그인</button>
			<button type="submit" value="회원가입" onclick="location.href='join.do'">회원가입</button>
			<button type="submit" value="비밀번호 찾기" onclick="#">비밀번호 찾기</button>
		</div>
	</div>

<%@ include file="footer.jsp"%>
</body>
</html>