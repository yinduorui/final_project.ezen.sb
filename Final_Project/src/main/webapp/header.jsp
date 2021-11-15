<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
	<header class="p-3 mb-3 border-bottom">
		<div class="container">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<svg width="300" height="150">
				<image xlink:href="img/logo.png" height="250" width="200"/></svg>
				
				<form>
					<input type="search" class="form-control" placeholder="Search..." aria-label="Search">
				</form>
				
				<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="#" class="nav_header">HOME</a></li>
					<li><a href="#" class="nav_header">분류</a></li>
					<li><a href="#" class="nav_header">랭킹</a></li>
				</ul>

				<div class="col-md-3 text-end">
					<button type="button" class="btn btn-warning">로그인</button>
					<button type="button" class="btn btn-warning">레시피 등록</button>
				</div>
			</div>
		</div>
	</header>