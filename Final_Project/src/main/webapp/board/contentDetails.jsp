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
.details {margin-top: 3%; margin-bottom: 3%}
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
					<img src="${contextRoot}/upload/${bVo.bImageUrl}" alt="대표사진" width="50%" height="50%">
				</div>
				<br>
				<div>
					<h1>${bVo.bTitle}</h1>
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
					<h3>조리순서
						<br><br>
						<pre>${bVo.bContent}</pre>
					</h3>
				</div>
				<br>
				<div>
					<h5>#${bVo.bTag}</h5>
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
<c:when test="${mVo == null or mVo.mId != bVo.bId }">
<!-- 로그인이 되어있지 않거나 대상이 아닌 경우 -->
   	<div class="btn-area3" align="center">
		<button onclick="location.href=document.referrer;">이전으로</button>
	</div>
 </c:when>
 <c:when test="${mVo.mId == bVo.bId}">
<!-- 로그인이 되어있는경우 나오는 화면  -->
	<div class="btn-area3" align="center">
		<button onclick="location.href=document.referrer;">이전으로</button>
		<button onclick="location.href='HelpkitchenServlet?command=board_update_form&bNum=${bVo.bNum}'">수정하기</button>
		<button onclick="return deleteCheck()">삭제하기</button>
	 </div>
 </c:when>
</c:choose>

<script>
function deleteCheck() {
	 if (confirm("정말 삭제하시겠습니까?") == true){   
		 location.href='HelpkitchenServlet?command=board_delete&bNum=${bVo.bNum}';
	 }else{   
	     return false;
	 }
}
</script>

<%@ include file="../include/footer.jsp"%>
<script id="dsq-count-scr" src="//helpkitchen.disqus.com/count.js" async></script>
</body>
</html>