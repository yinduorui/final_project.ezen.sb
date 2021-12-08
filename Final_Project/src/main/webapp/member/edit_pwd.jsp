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
		<h2>비밀번호 수정</h2>
		<form action="HelpkitchenServlet" method="post" name="frm">
		<input type="hidden" name="command" value="member_edit_password">
		<input type="hidden" name="getId" value="${mVo.mId}">
			<div class="int-area">
				<input type="password" name="nowPassword" placeholder="현재 비밀번호" required />
				<input type="password" name="editPassword" placeholder="변경 비밀번호" required />
			</div>
			<div class="btn-area">
			<button type="submit">비밀번호 변경</button>
			</div>
		</form>
	</div>
</body>
</html>