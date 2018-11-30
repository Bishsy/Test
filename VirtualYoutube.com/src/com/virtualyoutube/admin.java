package com.virtualyoutube;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String link= request.getParameter("link");
		String title= request.getParameter("title");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection mycon=DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube","root","Bishal@96");
			
			System.out.println("Connection Successful");
			
			Statement mystmt=mycon.createStatement();
			System.out.println("Connection Successful");
			mystmt.executeUpdate("insert into videos(title, link) values('"+title+"', '"+link+"');");
			System.out.println("Connection Successful");
			
			System.out.println("Hi");
			
			response.sendRedirect("Admin.jsp");
		}
		catch(Exception e) {
			System.out.println("Connection failed");
			e.printStackTrace();
		}
		
	}

}
