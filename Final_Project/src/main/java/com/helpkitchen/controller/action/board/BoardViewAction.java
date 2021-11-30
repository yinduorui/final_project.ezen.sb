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

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		String url = "board/boardList.jsp";
		
		HelpkitchenDAO hDao = HelpkitchenDAO.getInstance();
		
		List<BoardVO> boardList = hDao.selectAllBoards();
		
		request.setAttribute("boardList", boardList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
