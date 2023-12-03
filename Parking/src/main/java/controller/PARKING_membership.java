package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.PARKING;
import model.PARKING_DAO;

@WebServlet("/PARKING_membership")
public class PARKING_membership extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String P_PLACE = request.getParameter("P_PLACE");
		String P_TYPE = request.getParameter("P_TYPE");
		String P_ADDRESS = request.getParameter("P_ADDRESS");
		String P_FULL = request.getParameter("P_FULL");
		String P_PRICE = request.getParameter("P_PRICE");
		String P_TIME = request.getParameter("P_TIME");
		String P_ABLE = request.getParameter("P_ABLE");
		String P_INFO = request.getParameter("P_INFO");
		
		PARKING vo = new PARKING(P_PLACE,P_TYPE,P_ADDRESS,P_FULL,P_PRICE,P_TIME,P_INFO,P_ABLE);
		System.out.println(vo.toString());
		
		int cnt = new PARKING_DAO().joinParking(vo);
		
		if(cnt>0) {
			System.out.println("주차장 정보 등록완료");
			HttpSession session = request.getSession();
			session.setAttribute("parking", vo);
			response.sendRedirect("./ParkingSuccess.jsp");
		}else {
			System.out.println("주차장 정보 등록실패");
			response.sendRedirect("./car.html");
		}
	}
}
