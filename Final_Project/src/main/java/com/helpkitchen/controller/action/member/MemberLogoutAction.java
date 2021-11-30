package com.helpkitchen.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpkitchen.controller.action.Action;

public class MemberLogoutAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		HttpSession session = request.getSession();
		session.removeAttribute("mVo");
		RequestDispatcher dispatcher = request.getRequestDispatcher("index/main.jsp");
		dispatcher.forward(request, response);
		
	}
}
