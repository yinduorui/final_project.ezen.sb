<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요리레시피등록하기</title>
<link rel="stylesheet" type="text/css" href="../css/Recipedesign.css">
<script type="text/javascript" src="jquery-3.6.0.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../script/image.js"></script>
</head>
<body>
<h2>레시피 등록</h2>
<form name="frm" action="HelpkitchenServlet" method="post">
	<input type="hidden" name="command" value="board_write">
	제목 : <input type="text" name="bTitle" size=30><br>
	내용 : <input type="text" name="bContent" size=30><br>
	해시태그 : <input type="text" name="bHashTag" size=30><br>
	<input class="btn2" type="submit" value="저장">
	<input class="btn4" type="reset" value="취소">
</form>
<form name="register" action="" method="post" enctype="multipart/form-data">
	<input type="hidden" name="command" value="member_login">
   <table class="table">
        <tr>
            <td>레시피 제목</td>
            <td style="border: 0;">
            <input type="text" name="cname" size=30>
            </td>
        </tr>
        <tr>
            <td>요리소개</td>
            <td><textarea name="crecipe"></textarea></td>
        </tr>
        <tr>
            <div class="filebox">
            <td>요리대표사진</td>
            <td><input class="filebox" type="file" id="file"></td>
            <img id="mainPhotoHolder" onclick="browseMainFile()" 
            src="https://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer">
            </div>
        </tr>
        <tr>
            <td>카테고리</td>
            <td><select>
               <option value="1">종류별</option>
               <option value="2">반찬류</option>
               <option value="3">국/찌개류</option>
               <option value="4">밥/죽/떡류</option>
               <option value="5">양념/소스류</option>
               <option value="6">양식/중식/일식류</option>
            </select></td>
            <td><select>
               <option value="1">상황별</option>
               <option value="2">일상</option>
               <option value="3">간식</option>
               <option value="4">야식</option>
               <option value="5">다이어트</option>
               <option value="6">손님초대</option>
            </select></td>
            <td><select>
               <option value="1">방법별</option>
               <option value="2">볶음/조림</option>
               <option value="3">무침/부침/비빔</option>
               <option value="4">굽기/튀김</option>
               <option value="5">삶기/데침/찜</option>
            </select></td>
            <td><select>
               <option value="1">재료별</option>
               <option value="2">고기류/해물류</option>
               <option value="3">채소류/가공식품류</option>
               <option value="4">쌀/밀가루</option>
               <option value="5">건어물류/견과류</option>
            </select></td>
        </tr>
        <tr>
            <td>요리정보</td>
            <td><select name="people">
               <option value="1">인원</option>
               <option value="2">1~2인분</option>
               <option value="3">2~3인분</option>
               <option value="4">4~5인분</option>
               <option value="5">기타</option>
            </select></td>
            <td><select name="hour">
               <option value="1">5분이내</option>
               <option value="2">10분이내</option>
               <option value="3">30분이내</option>
               <option value="4">1~10시간이상</option>
               <option value="5">기타</option>
            </select></td>
         </tr>
     </table>
</form>


<h4>↓ 재료 및 계량정보를 적어주세요.</h4>
<textarea class="tbox" name="tbox"></textarea>



<h4>↓ 요리순서(요리의 맛이 좌우될 수있는 중요한부분은 빠짐없이적어주세요.)<br>
    &nbsp; &nbsp;예) 10분간 익혀주세요 등.</h4>
<form name="register" action="" method="post" enctype="multipart/form-data">
   <table class="step1">
        <tr>
            <td>Step1</td>
            <td><textarea class="tbox2" name="tbox2"></textarea>
            </td>
        </tr>
   </table>
</form>


<h4>↓ 요리완성사진</h4>
  <li class="photo">  <!-- 이런식으로 넣어주기 밑에사진 예제 -->
     <img id="imgArea" src="img/" alt="사진을 넣어주세요" width="200" height="200">
     <img src="img/" alt="사진을 넣어주세요" width="200" height="200">
     <img src="img/" alt="사진을 넣어주세요" width="200" height="200">
  </li>
  <input type="file" id="u_file" name="u_file" accept="image/*">
  <div id="imgViewArea" style="margin-top:10px; display:none;">
	<img id="imgArea" style="width:200px; height:100px;" onerror="imgAreaError()"/>
</div>

<h4>↓ 요리팁</h4>
<td><textarea class="tbox3" name="tbox3"></textarea>
</td>

<h4>↓ 태그</h4>
  <div class="checks">
     <input type="radio" id="tag1">
        <label for="tag1">???</label>
     <input type="radio" id="tag2">
        <label for="tag2">???</label>
     <input type="radio" id="tag3">
        <label for="tag3">???</label>
  </div>
  
<br><br>
<div align="center">
<input class="btn2" type="submit" value="저장">
<input class="btn4" type="reset" value="취소">
</div>
</body>
</html>