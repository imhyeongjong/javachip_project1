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

@WebServlet("/PARKING_check")
public class PARKING_check extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		PARKING parking = (PARKING)session.getAttribute("Parking");
		
		String P_PLACE = parking.getP_PLACE();
		String P_TYPE = parking.getP_TYPE();
		String P_ADDRESS = parking.getP_ADDRESS();
		String P_FULL = parking.getP_FULL();
		String P_PRICE = parking.getP_PRICE();
		String P_TIME = parking.getP_TIME();
		String P_ABLE = parking.getP_ABLE();
		String P_INFO = parking.getP_INFO();
		
		request.setCharacterEncoding("UTF-8");
		String P_YN = request.getParameter("P_YN");
		int P_COUNT = Integer.parseInt(request.getParameter("P_COUNT"));
		int P_POS = Integer.parseInt(request.getParameter("P_POS"));
		System.out.println(P_PLACE);
		PARKING updateParking  = new PARKING(0,P_PLACE,P_TYPE,P_ADDRESS,P_FULL,P_PRICE,P_TIME,P_ABLE,P_INFO,P_YN,P_COUNT,P_POS);
		System.out.println(updateParking.toString());
		
		int cnt = new model.PARKING_DAO().updateParking(updateParking);
		
		if (cnt > 0) {
			System.out.println("수정 성공!");
			session.setAttribute("Parking", updateParking);
			response.sendRedirect("./ParkingCheckSuccess.jsp");
		} else {
			System.out.println("수정 실패..");
			response.sendRedirect("./parkingCheck.jsp");
		}
	}
}
