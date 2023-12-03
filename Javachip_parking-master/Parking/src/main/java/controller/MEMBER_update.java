package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MEMBER;

@WebServlet("/MEMBER_update")
public class MEMBER_update extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		String CAR_NUM = request.getParameter("CAR_NUM");
		String CAR_TYPE = request.getParameter("CAR_TYPE");
		
		MEMBER updateMember = new MEMBER(ID,PW,CAR_NUM,CAR_TYPE);
		
		System.out.println(updateMember.toString());
		
		int cnt = new model.MEMBER_DAO().updateMember(updateMember);

		// 5. 콘솔창에 수정 성공
		if (cnt > 0) {
			System.out.println("수정 성공!");
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", updateMember);
			response.sendRedirect("./main.jsp");
		} else {
			System.out.println("수정 실패..");
			response.sendRedirect("./UpdateMember.jsp");
		}
	}
}
