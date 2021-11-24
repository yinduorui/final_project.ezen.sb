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
.col-xl-10 {background-color: red; text-align:center;}
.previous {display: flex; justify-content: center;}
</style>
<body>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/nav.jsp"%>

<div class="details">
  <div class="row">
    <div class="col-sm-1"></div>
    <div class="col-xl-10">
      디<br>테<br>일<br>넣<br>기<br>
      <br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br>
      
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
		<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
  	</div>
	</div>
    </div>
    <div class="col-sm-1"></div>
	</div>
	
<div class="previous">
	<button type="submit" value="이전으로" onclick="location.href=">이전으로</button>
</div>

<%@ include file="../include/footer.jsp"%>
<script id="dsq-count-scr" src="//helpkitchen.disqus.com/count.js" async></script>
</body>
</html>