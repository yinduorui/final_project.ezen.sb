<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
<c:when test="${key == 'success'}">
<script type="text/javascript"> alert('비밀번호가 변경되었습니다.');
location.href="HelpkitchenServlet?command=member_login_form";
</script>

</c:when>

<c:when test="${key == 'fail'}">
<script type="text/javascript">alert('기존 비밀번호가 틀렸습니다.');
location.href="HelpkitchenServlet?command=member_edit_password_form";
</script>
 </c:when>
</c:choose>
</body>
</html>