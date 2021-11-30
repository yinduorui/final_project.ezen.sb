package com.helpkitchen.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpkitchen.controller.action.Action;
import com.helpkitchen.dao.HelpkitchenDAO;

import util.mail.Mail;
import util.mail.RandomPassword;

public class MemberFindPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		String email = request.getParameter("mEmail");
		HelpkitchenDAO hDao = HelpkitchenDAO.getInstance();
		int result = hDao.emailCheck(email);
		if(result == -1) {
			Mail.sendMail(email);
			String password = RandomPassword.getRamdomPassword();
			hDao.newPassword(password, email);
			request.setAttribute("key", "success");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/member/checkemail.jsp");
			dispatcher.forward(request, response);
		}
		if(result == 1) {
			request.setAttribute("key", "fail");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/member/checkemail.jsp");
			dispatcher.forward(request, response);
		}
	}

}
