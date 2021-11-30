package com.helpkitchen.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpkitchen.controller.action.Action;

public class MemberPolicyFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/policy.jsp");
		dispatcher.forward(request, response);
	}
}
