<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/login_header.jsp"/>

	<div class="login-form">
		<h2>비밀번호 찾기</h2>
		<form action="HelpkitchenServlet" method="post" name="">
		<input type="hidden" name="command" value="member_find_password">
			<div class="int-area">
				<input type="text" name="mEmail" placeholder="이메일" required />
			</div>
		<div class="btn-area">
			<button type="submit">안내 메일 발송</button>
		</div>
		</form>
		<div>
			<p>* 비밀번호 재설정 안내를 회원 가입시 입력했던 메일로 발송합니다.</p>
		</div>
	</div>
</body>
</html>
</body>
</html>