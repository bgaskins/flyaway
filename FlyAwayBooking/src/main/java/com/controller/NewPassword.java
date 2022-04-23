package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.FlyAwayDao;

@WebServlet("/NewPasswordServlet")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public NewPassword() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		try {
			FlyAwayDao dao=new FlyAwayDao();
			HttpSession session=request.getSession();
			if(dao.changePassword(email,password)) {
				session.setAttribute("message", "Password has been changed.");
			}
			else {
				session.setAttribute("message", "Oops! Something went wrong. Please try again.");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("index.jsp");
		
	}

}
