function RegisterCheck() {
	
	var imgFile = $('#bImage').val();
	var fileForm = /(.*?)\.(jpg|jpeg|png)$/;
	
	if (document.registerfrm.bTitle.value.length == 0) {
		alert("제목을 작성해 주세요.");
		registerfrm.bTitle.focus();
		return false;
	}
	if (document.registerfrm.bContent.value.length == 0) {
		alert("내용을 작성해 주세요.");
		registerfrm.bContent.focus();
		return false;
	}
	if (document.registerfrm.bTag.value == 0) {
		alert("요리의 종류를 정해주세요.");
		registerfrm.bTag.focus();
		return false;
	}
	
	if($('#bImage').val() == "") {
		alert("대표 이미지를 넣어주세요!");
	    $("#bImage").focus();
	    return false;
	}
	
	if(imgFile != "" && imgFile != null) {
		
	    if(!imgFile.match(fileForm)) {
	    	alert("이미지 파일만 업로드 가능합니다. (jpg, jpeg, png)");
	        return false;
	    }
	}
	return true;
}