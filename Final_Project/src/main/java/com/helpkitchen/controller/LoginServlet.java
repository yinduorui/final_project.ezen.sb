package com.helpkitchen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpkitchen.dao.MemberDAO;
import com.helpkitchen.dto.MemberVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		String url="login.jsp";

		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		MemberDAO mDao=MemberDAO.getInstance();
		int result=mDao.userCheck(userid, pwd);
		
		if(result==1) {
			MemberVO mVo=mDao.getMember(userid);
			HttpSession session=request.getSession();
			session.setAttribute("loginUser", mVo);
			request.setAttribute("message", "회원 가입에 성공했습니다.");
			url="index.jsp";
		}else if(result==0){
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		}else if(result==-1) {
			request.setAttribute("message", "존재하지 않는 회원입니다.");
		}
	
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
