package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html");
		String name = request.getParameter("user_name");
		String password = request.getParameter("user_password");
		String email = request.getParameter("user_email");

		PrintWriter out = response.getWriter();
		 
		
		// jdbc connectivity
		try {
			Thread.sleep(2000);
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/RegistrationForm", "root", "4462Jes@r");
//			query
			String q= "insert into UserData(name,password,email) values(?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1,name);
			pstmt.setString(2,password);
			pstmt.setString(3,email);
			
			pstmt.executeUpdate();
			out.println("Done");

			 
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}

}
