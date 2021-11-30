package com.helpkitchen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpkitchen.dao.HelpkitchenDAO;
import com.helpkitchen.dto.MemberVO;

public class MemberJoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("mId");
		String password = request.getParameter("mPassword");
		String nickName = request.getParameter("mNickName");
		String email = request.getParameter("mEmail");
		System.out.println(id + password + nickName + email);
		MemberVO mVo = new MemberVO();
		
		mVo.setmId(id);
		mVo.setmPassword(password);
		mVo.setmNickName(nickName);
		mVo.setmEmail(email);
		
		HelpkitchenDAO hDao = HelpkitchenDAO.getInstance();
		int resultId = hDao.idCheck(id);
		int resultEmail = hDao.emailCheck(email);
		
		if(resultId == 1 && resultEmail == 1) {
			hDao.insertMember(mVo);
			new MemberLoginFormAction().execute(request, response);
		}else if(resultId < 0) {
			request.setAttribute("idMessage", "이미 사용중인 아이디입니다");
			request.setAttribute("mPassword", password);
			request.setAttribute("mNickName", nickName);
			request.setAttribute("mEmail", email);
			System.out.println("id영역" + resultId);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/member/join.jsp");
			dispatcher.forward(request, response);
		}else if(resultEmail < 0) {
			request.setAttribute("emailMessage", "이미 사용중인 이메일입니다.");
			request.setAttribute("mId", id);
			request.setAttribute("mPassword", password);
			request.setAttribute("mNickName", nickName);
			System.out.println("email영역" + resultEmail);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/member/join.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}
}