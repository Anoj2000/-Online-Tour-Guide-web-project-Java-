package com.reservation;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/BookingDetailsServlet")
public class BookingDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   int cus_id = 1;
		   
		   //this selectbooking method used to data retrieval part
		   ArrayList<Booking> Booklist = ReservationDBUtil.selectbooking(cus_id);
			
		    request.setAttribute("Booklist",Booklist);
		    
		    RequestDispatcher dis = request.getRequestDispatcher("conformation.jsp");
			dis.forward(request, response);
 
	}

}
