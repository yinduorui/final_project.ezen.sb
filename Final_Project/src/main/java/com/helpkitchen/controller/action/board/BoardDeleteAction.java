package com.helpkitchen.controller.action.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpkitchen.controller.action.Action;
import com.helpkitchen.dao.HelpkitchenDAO;

public class BoardDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		String bNum = request.getParameter("bNum");
		HelpkitchenDAO hDao = HelpkitchenDAO.getInstance();
		int result = hDao.deleteBoard(bNum);
		System.out.println(result);
		if(result == 1) {
			out.println("<script>alert('게시글이 삭제되었습니다.'); location.href='/HelpkitchenServlet?command=help_categories';</script>");
			out.flush();
		} else {
			out.println("<script>alert('게시글 삭제를 실패하였습니다.'); location.href='/HelpkitchenServlet?command=help_categories';</script>");
			out.flush();
		}
	}

	}


