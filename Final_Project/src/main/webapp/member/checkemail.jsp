<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${key == 'success'}">
<script type="text/javascript"> alert('임시 비밀번호가 발급되었습니다');
location.href="HelpkitchenServlet?command=member_login_form";
</script>

</c:when>

<c:when test="${key == 'fail'}">
<script type="text/javascript">alert('존재하지 않는 이메일입니다.')
location.href="HelpkitchenServlet?command=member_find_password_form";
</script>
 </c:when>
</c:choose>
</body>
</html>