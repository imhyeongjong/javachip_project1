package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BOOKING;
import model.BOOKING_DAO;
import model.PAY;
import model.PAY_DAO;

@WebServlet("/PAY_service")
public class PAY_service extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//post 방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		System.out.println(">>>Pay Service<<<");
		
		// 요청데이터 받기
		String A_YN = request.getParameter("A_YN"); //결제구분

		String A_PRICE = request.getParameter("A_PRICE");
		
		PAY vo = new PAY(0, 0, null, A_YN, A_PRICE);
		System.out.println (vo.toString());
		
		int cnt = new PAY_DAO().insertPay(vo);
		
		if (cnt > 0) {
			System.out.println("페이 DB 저장 성공");
			response.sendRedirect("./bookingSuccess.jsp");
	
		} else {
			System.out.println("페이 DB 저장 실패");
			response.sendRedirect("./payFail.jsp");
		} 
		
	}

}
