package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MEMBER_DAO;

@WebServlet("/MEMBER_IDcheckservice")
public class MEMBER_IDcheckservice extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String inputE = request.getParameter("inputE");
			
		boolean checkE = new MEMBER_DAO().IDcheck(inputE);

		PrintWriter out;
		try {
			out = response.getWriter();
			out.print(checkE);
		} catch (IOException e) {

			e.printStackTrace();
		}
		return;
	}
}
