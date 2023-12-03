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

@WebServlet("/PARKING_map")
public class PARKING_map extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String P_PLACE = request.getParameter("P_PLACE");
		String P_TYPE = request.getParameter("P_TYPE");
		String P_ADDRESS = request.getParameter("P_ADDRESS");
		String P_PRICE = request.getParameter("P_PRICE");
		String P_TIME = request.getParameter("P_TIME");
		String P_ABLE = request.getParameter("P_ABLE");
		String P_INFO = request.getParameter("P_INFO");
		
		PARKING vo = new PARKING(P_PLACE, P_TYPE, P_ADDRESS, P_PRICE, P_TIME, P_ABLE, P_INFO);
		PARKING mapParking = new PARKING_DAO().mapParking(vo);
		
		if (mapParking != null) {
			System.out.println(mapParking.getP_ADDRESS());
			System.out.println("주차장 정보 불러오기 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("mapParking", mapParking);
			response.sendRedirect("./main2.jsp");
			
		} else { 
			System.out.println("주차장 정보 불러오기 실패");
		}
		
	}

}
