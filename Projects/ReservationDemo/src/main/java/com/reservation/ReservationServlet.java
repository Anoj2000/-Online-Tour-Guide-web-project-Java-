package com.reservation;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String num_person = request.getParameter("num_person");
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");

		int cus_id = 1;
		
		boolean isTure;
		
	   isTure = ReservationDBUtil.insertcustomer(cus_id,name,email,phone,num_person,start_date,end_date);//call the dbutil insertcustomer method
	   

	   if(isTure == true) {
		   RequestDispatcher dis = request.getRequestDispatcher("Bookingdetails");// if the insertion susscess dispatcher will navigate to user to confrom.jsp page 
		   dis.forward(request, response);
		   
	   }else {
		   RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
		   dis2.forward(request, response);
	   }
		
	
	}

}
