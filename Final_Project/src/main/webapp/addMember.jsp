<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection conn = null;
	PreparedStatement pstmt = null;

	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "getdon";
	String pass = "12345";

	String sql = "insert into member values(?, ?, ?, ?, ?, ?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String userid = request.getParameter("userid");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String pwd_chk = request.getParameter("pwd_chk");
String email = request.getParameter("email");
String admin = request.getParameter("admin");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, uid, pass);
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userid);
	pstmt.setString(2, name);
	pstmt.setString(3, pwd);
	pstmt.setString(4, pwd_chk);
	pstmt.setString(5, email);
	pstmt.setInt(6, Integer.parseInt(admin));
	pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>

<!-- 
<script>
function myFunction() {
	String name = request.getParameter("name");
	alert("name" + " 님, 반갑습니다!");
}
</script>
-->
</body>
</html>