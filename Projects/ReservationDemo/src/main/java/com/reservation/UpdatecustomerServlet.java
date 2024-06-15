package com.reservation;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatecustomerServlet")
public class UpdatecustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//catch the data which is send from updatecustomer.jsp
		
		int tour_id = Integer.parseInt( request.getParameter("tour_id"));
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String num_person = request.getParameter("num_person");
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		boolean isTure;
		
		isTure = ReservationDBUtil.updatecustomer(tour_id, name, email, phone, num_person, start_date, end_date);
		
		
		if(isTure == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Bookingdetails");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
			
		}
	
		
	}

}
