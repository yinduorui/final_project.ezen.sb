package com.helpkitchen.controller.action.board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpkitchen.controller.action.Action;
import com.helpkitchen.dao.HelpkitchenDAO;
import com.helpkitchen.dto.BoardVO;
import com.helpkitchen.dto.MemberVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		response.setContentType("text/html; charset=UTF-8");
		
		ServletContext context = request.getSession().getServletContext();
		String realpath = context.getRealPath("upload");
		int maxSize = 10 * 1024 * 1024; //10MB
		MultipartRequest multi = new MultipartRequest(request, realpath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		MemberVO mVo = (MemberVO) session.getAttribute("mVo");
		String id = mVo.getmId();
		String nickName = mVo.getmNickName();
		String title = multi.getParameter("bTitle");
		String content = multi.getParameter("bContent");
		String bTag = multi.getParameter("bTag");
		String bImageUrl = multi.getFilesystemName("bImage");
		
		BoardVO bVo = new BoardVO();
		bVo.setbId(id);
		bVo.setbNickName(nickName);
		bVo.setbTitle(title);
		bVo.setbContent(content);
		bVo.setbTag(bTag);
		bVo.setbImageUrl(bImageUrl);
		
		HelpkitchenDAO hDao = HelpkitchenDAO.getInstance();
		int result = hDao.insertBoard(bVo);
		System.out.println(result);
		if(result == 1) {
			out.println("<script>alert('게시글이 등록되었습니다.'); location.href='/HelpkitchenServlet?command=help_categories';</script>");
			out.flush();
		} else {
			out.println("<script>alert('게시글 등록을 실패하였습니다.'); location.href='/HelpkitchenServlet?command=help_categories';</script>");
			out.flush();
		}
	}
}
