package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MEMBER;
import model.MEMBER_DAO;

@WebServlet("/MEMBER_login")
public class MEMBER_login extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		
		MEMBER vo = new MEMBER(ID, PW);
		
		MEMBER loginMember = new MEMBER_DAO().loginMember(vo);
		
		if (loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect("./loginSuccess.jsp");
		} else {
			System.out.println("로그인 실패...");
			response.sendRedirect("./login.html");
		}
	}
}
