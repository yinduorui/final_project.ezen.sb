<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/style.css">
<style>
.img-thumbnail {border: 1px solid #fff;}
.bg-light {background-color: #fff !important;}
</style>
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-light bg-light">
  <div class="container">
  <img src="../img/logo.png" class="img-thumbnail" alt="logo">
    <form class="d-flex">
      <input class="form-control me-4" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
      
      	<div class="main_btn">
		<button type="submit" value="로그인" onclick="location.href=">로그인</button>
		<button type="submit" value="회원가입" onclick="location.href=">레시피 작성</button>
		</div>
  </div>
</nav>

