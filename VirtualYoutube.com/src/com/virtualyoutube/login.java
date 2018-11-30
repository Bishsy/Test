package com.virtualyoutube;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("username");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
		
		System.out.println(user+password);
		
		if(user.equalsIgnoreCase("bishal") && password.equalsIgnoreCase("12345")) {
			session.setAttribute("username", user);
			response.sendRedirect("homepage.jsp");
		}
		else {
			response.sendRedirect("Login.jsp");
		}
	}

}
