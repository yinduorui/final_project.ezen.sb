<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="../include/login_header.jsp"/>

<div class="login-form">
	<h1>로그인</h1>
	<form action="HelpkitchenServlet" method="post" name="">
	<input type="hidden" name="command" value="member_login">
		<div class="int-area">
			<input type="text" name="mId" value="" placeholder="아이디">
		</div>
		<div class="int-area">
			<input type="password" name="mPassword" placeholder="비밀번호">
		</div>
		<p>${message}</p>
	<div class="btn-area">
		<button type="submit" onclick="return loginCheck()">로그인</button>
	</div>
	</form>
	<div class="btn-area">
		<button onclick="location.href='HelpkitchenServlet?command=member_policy_form'">회원가입</button>
		<button onclick="location.href='HelpkitchenServlet?command=member_find_password_form'">비밀번호 찾기</button>
	</div>
</div>
</body>
</html>