<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<style>
.details {margin-top: 24px;}
.col-xl-10 {background-color: #F8F8FF; text-align:center;}
.previous {display: flex; justify-content: center;}
li {display: inline; margin: 0 5%;}
table {width: 50%; margin: 0 auto;}
</style>
<body>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/nav.jsp"%>

	<div class="details">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-xl-10">
				<div>
					<img src="../img/logo.png" alt="대표사진" width="60%" height="50%">
				</div>
				<br>
				<div>
					<h1>레시피 제목 가져오기</h1>
				</div>
				<br>
				<div>
					<h5>요리소개</h5>
				</div>
				<br>
				<div>
					<table>
						<tr>
							<th>인원</th>
							<th>소요시간</th>
						</tr>
						<tr>
							<td>불러오기</td>
							<td>불러오기</td>
						</tr>
					</table>
				</div>
				<br>
				<div>
					<h5>재료 및 계량정보</h5>
				</div>
				<br>
				<div>
					<h5>요리순서</h5>
				</div>
				<br>
				<div>
					<h5>요리완성사진</h5>
					<li>
						<img src="../img/logo.png" alt="완성사진" width="20%" height="20%">
					</li>
					<li>
						<img src="../img/logo.png" alt="완성사진" width="20%" height="20%">
					</li>
					<li>
						<img src="../img/logo.png" alt="완성사진" width="20%" height="20%">
					</li>
				</div>
				<br>
				<div>
					<h5>태그</h5>
				</div>
				<br>

				<div id="disqus_thread">
					<script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    /*
    var disqus_config = function () {
    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    */
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://helpkitchen.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
	</script>
					<noscript>
						Please enable JavaScript to view the
						<a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a>
					</noscript>
				</div>
			</div>
		<div class="col-sm-1"></div>
		</div>
	</div>

	<c:choose>
<c:when test="${mVo == null}">
<!-- 로그인이 되어있지 않는 경우 -->
   	<div class="btn-area2">
		<button onclick="location.href=''">이전으로</button>
	</div>
 </c:when>
 <c:when test="${mVo != null}">
<!-- 로그인이 되어있는경우 나오는 화면  -->
	<div class="btn-area2">
		<button onclick="location.href=''">이전으로</button>
		<button onclick="location.href=''">수정하기</button>
		<button onclick="location.href=''">삭제하기</button>
	 </div>
 </c:when>
</c:choose>

<%@ include file="../include/footer.jsp"%>
<script id="dsq-count-scr" src="//helpkitchen.disqus.com/count.js" async></script>
</body>
</html>