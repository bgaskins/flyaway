package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.FlyAwayDao;

@WebServlet("/PassengerServlet")
public class Passenger extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Passenger() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		try {
			FlyAwayDao dao=new FlyAwayDao();
			HashMap<String,String> user=dao.checkUser(email,password);
			HttpSession session=request.getSession();
			
				session.setAttribute("user", user);
				response.sendRedirect("index.jsp");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
