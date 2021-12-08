package com.helpkitchen.controller.action.member;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpkitchen.controller.action.Action;
import com.helpkitchen.dao.HelpkitchenDAO;
import com.helpkitchen.dto.MemberVO;

public class MemberJoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("mId");
		String password = request.getParameter("mPassword");
		String checkPassword = request.getParameter("checkPassword");
		String nickName = request.getParameter("mNickName");
		String email = request.getParameter("mEmail");
		String pattern = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$";
		boolean idCheck = id.length() <= 5;
		boolean passCheck = password.length() <= 5;
		boolean nickNameCheck = nickName.length() <= 1;
		boolean regex = Pattern.matches(pattern, email);
		MemberVO mVo = new MemberVO();
		mVo.setmId(id);
		mVo.setmPassword(password);
		mVo.setmNickName(nickName);
		mVo.setmEmail(email);
		
		HelpkitchenDAO hDao = HelpkitchenDAO.getInstance();
		int resultId = hDao.idCheck(id);
		int resultEmail = hDao.emailCheck(email);
		
		if(resultId == 1 && resultEmail == 1 && password.equals(checkPassword) && !idCheck
		&& !passCheck && !nickNameCheck &&	regex) {
			hDao.insertMember(mVo);
			new MemberLoginFormAction().execute(request, response);
		}else if(resultId < 0) {
			request.setAttribute("idMessage", "이미 사용중인 아이디입니다");
			request.setAttribute("mPassword", password);
			request.setAttribute("checkPassword", checkPassword);
			request.setAttribute("mNickName", nickName);
			request.setAttribute("mEmail", email);
			new MemberJoinFormAction().execute(request, response);
		} else if(idCheck) {
			request.setAttribute("idMessage", "아이디는 6자이상 입력해야합니다.");
			request.setAttribute("mPassword", password);
			request.setAttribute("checkPassword", checkPassword);
			request.setAttribute("mNickName", nickName);
			request.setAttribute("mEmail", email);
			new MemberJoinFormAction().execute(request, response);
		} else if(passCheck) {
			request.setAttribute("passwordMessage", "비밀번호는 6자이상 입력해야합니다.");
			request.setAttribute("mId", id);
			request.setAttribute("mNickName", nickName);
			request.setAttribute("mEmail", email);
			new MemberJoinFormAction().execute(request, response);
		} else if(!password.equals(checkPassword)){
			request.setAttribute("passwordMessage", "비밀번호가 일치하지 않습니다.");
			request.setAttribute("mId", id);
			request.setAttribute("mPassword", password);
			request.setAttribute("mNickName", nickName);
			request.setAttribute("mEmail", email);
			new MemberJoinFormAction().execute(request, response);
		} else if(nickNameCheck){
			request.setAttribute("nickNameMessage", "닉네임은 2자이상 입력해야합니다.");
			request.setAttribute("mId", id);
			request.setAttribute("mPassword", password);
			request.setAttribute("checkPassword", checkPassword);
			request.setAttribute("mEmail", email);
			new MemberJoinFormAction().execute(request, response);
		} else if(!regex) {
			request.setAttribute("emailMessage", "올바르지 않은 이메일 형식입니다.");
			request.setAttribute("mId", id);
			request.setAttribute("mPassword", password);
			request.setAttribute("checkPassword", checkPassword);
			request.setAttribute("mNickName", nickName);
			new MemberJoinFormAction().execute(request, response);
		} else if(resultEmail < 0) {
			request.setAttribute("emailMessage", "이미 사용중인 이메일입니다.");
			request.setAttribute("mId", id);
			request.setAttribute("mPassword", password);
			request.setAttribute("checkPassword", checkPassword);
			request.setAttribute("mNickName", nickName);
			new MemberJoinFormAction().execute(request, response);
		} 
		
		
		
	}
}