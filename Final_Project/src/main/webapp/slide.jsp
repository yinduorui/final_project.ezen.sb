<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="slide style.css">
</head>
<body>
<div class="session">
<input type="radio" name="slide" id="slide01" checked>
<input type="radio" name="slide" id="slide02" >
<input type="radio" name="slide" id="slide03" >

		<div class="slidewrap">
			<ul class="slidelist">
				<li>
					<a>
						<label for="slide03" class="left"></label>
						<img src="./img/logo.png">
						<label for="slide02" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide01" class="left"></label>
						<img src="./img/logo.png">
						<label for="slide03" class="right"></label>
					</a>
				</li>
				<li>
					<a>
						<label for="slide02" class="left"></label>
						<img src="./img/logo.png">
						<label for="slide01" class="right"></label>
					</a>
				</li>
			</ul>
		</div>


	</div>

</body>
</html>