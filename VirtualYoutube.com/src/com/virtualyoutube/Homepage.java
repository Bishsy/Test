package com.virtualyoutube;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Homepage
 */
@WebServlet("/Homepage")
public class Homepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection mycon=DriverManager.getConnection("jdbc:mysql://localhost:3306/4youtube", "root", "Bishal@96");
			Statement mystmt=mycon.createStatement();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
