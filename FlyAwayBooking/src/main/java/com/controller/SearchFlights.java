package com.controller;


import java.io.IOException;


import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.FlyAwayDao;

@WebServlet("/SearchFlight")
public class SearchFlights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public SearchFlights() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String airline = request.getParameter("airline");
		
		try {
			FlyAwayDao dao = new FlyAwayDao();
			List<String[]> flights= dao.getAvailableFlights(from, to, airline);			
			HttpSession session=request.getSession();
			session.setAttribute("flights", flights);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("pickflight.jsp");
	}
}
