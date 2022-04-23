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

@WebServlet("/RegistrationServlet")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Registration() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		
		HashMap<String,String> user=new HashMap<>();
		user.put("email", email);
		user.put("password", password);
		user.put("name", name);
		user.put("phone", phone);
		
		try {
			FlyAwayDao dao=new FlyAwayDao();
			boolean result=dao.insertUser(user);
			HttpSession session=request.getSession();
			if(result) {
				session.setAttribute("message", "Passenger added.");
			}
			else {
				session.setAttribute("message","Oops! Something went wrong. Invalid.");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("payment.jsp");
	}

}
