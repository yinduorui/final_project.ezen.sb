package com.helpkitchen.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberFindPassFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/find_pwd.jsp");
		dispatcher.forward(request, response);
	}
}
