<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="login_header">
<img src="img/logo.png" alt="logo" style="width: 20%; margin: 2vh 40%;">
</div>

<div class="login-form">
	<h2>회원가입</h2>
	<form action="login.do" method="post" name="frm">
		<div class="int-area">
			<input type="text" name="userid" placeholder="아이디" required>
			</div>
		<div class="int-area">
			<input type="text" name="name" placeholder="넥네임" required>
		</div>
		<div class="int-area">
			<input type="password" name="pwd" placeholder="비밀번호" required>
		</div>
		<div class="int-area">
			<input type="password" name="pwd_check" placeholder="비밀번호 확인" required>
		</div>
		<div class="int-area">
			<input type="text" name="email" placeholder="이메일" required>
		</div>
	</form>
	
	<div class="btn-area">
		<button type="submit" value="가입하기" onclick="">가입하기</button>

	</div>
</div>
</body>
</html>