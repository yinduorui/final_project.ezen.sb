<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script>
/* policy 전체동의 */
function selectAll(selectAll){
	const checkboxes
	=document.getElementsByName('content');
	
	checkboxes.forEach((checkbox)=>{
		checkbox.checked = selectAll.checked;
	})
}
</script>
</head>
<body>
<div class="login_header">
<a href="HelpkitchenServlet?command=help_main"><img src="../img/logo.png" alt="logo" style="width: 20%; margin: 2vh 40%;"></a>
</div>