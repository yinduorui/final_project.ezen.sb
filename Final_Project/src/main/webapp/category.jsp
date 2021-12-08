<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/header.jsp"%>
<%@ include file="../include/nav.jsp"%>

	<div class="accordion" id="accordionExample">
		<div class="accordion-item">
			<h2 class="accordion-header" id="headingOne">
				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">카테고리</button>
			</h2>
			<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<div id="Kategorietable">
						<div class="row1">
							<span class="cell col1">종류별</span>
							<span class="cell col2">한식</span>
							<span class="cell col4">양식</span>
							<span class="cell col5">중식</span>
							<span class="cell col6">일식</span>
							<span class="cell col7">기타</span>
						</div>
						<div class="row2">
							<span class="cell col1">상황별</span>
							<span class="cell col9">전체</span>
							<span class="cell col10">일상</span>
							<span class="cell col11">간식</span>
							<span class="cell col12">야식</span>
							<span class="cell col13">다이어트</span>
							<span class="cell col14">손님초대</span>
						</div>
						<div class="row3">
							<span class="cell col1">재료별</span>
							<span class="cell col16">전체</span>
							<span class="cell col17">고기류/해물류</span>
							<span class="cell col18">채소류/가공식품류</span>
							<span class="cell col19">쌀/밀가루</span>
							<span class="cell col20">건어물류/견과류</span>
						</div>
						<div class="row4">
							<span class="cell col1">방법별</span>
							<span class="cell col22">전체</span>
							<span class="cell col23">볶음/조리</span>
							<span class="cell col24">무침/부침/비빔</span>
							<span class="cell col25">굽기/튀김</span>
							<span class="cell col26">삶기/데침/찜</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="../include/footer.jsp"%>
</body>
</html>