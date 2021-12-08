package com.helpkitchen.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpkitchen.controller.action.Action;
import com.helpkitchen.dao.HelpkitchenDAO;

public class MemberEditPasswordAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mId = request.getParameter("getId");
		String nowPassword = request.getParameter("nowPassword");
		String editPassword = request.getParameter("editPassword");
		HelpkitchenDAO hDao = HelpkitchenDAO.getInstance();
		
		int result = hDao.checkPasswordById(mId, nowPassword);
		

		if(result == 1) {
			request.setAttribute("key", "success");
			System.out.println("비밀번호 변경 성공");
			hDao.updatePassword(editPassword, mId);
			request.removeAttribute("mVo");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/member/check_edit_pwd.jsp");
			dispatcher.forward(request, response);

		} else if (result == -1){
			System.out.println("비밀번호 변경 실패");
			request.setAttribute("key", "fail");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/member/check_edit_pwd.jsp");
			dispatcher.forward(request, response);
			//메시지 > 다시 
		} 
		

	}

}
