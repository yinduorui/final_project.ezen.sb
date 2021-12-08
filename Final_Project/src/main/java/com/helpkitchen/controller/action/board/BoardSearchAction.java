package com.helpkitchen.controller.action.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpkitchen.controller.action.Action;
import com.helpkitchen.dao.HelpkitchenDAO;
import com.helpkitchen.dto.BoardVO;

public class BoardSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search = request.getParameter("search");
		HelpkitchenDAO hDao = HelpkitchenDAO.getInstance();
		List<BoardVO> boardList = hDao.selectSearchBoards(search);
		request.setAttribute("boardList", boardList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index/Categories.jsp");
		dispatcher.forward(request, response);

	}

}
