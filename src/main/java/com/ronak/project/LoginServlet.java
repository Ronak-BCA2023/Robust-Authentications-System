package com.ronak.project;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		session.setAttribute("email", email);
		session.setAttribute("password", password);

		// Checking details in database (database Name => firstwebapp______table name =>
		// userregister)
		Connection con = null;
		try {
			/** first step is used for load and register the driver class **/
			Class.forName("com.mysql.cj.jdbc.Driver");

			/**
			 * second step is used for created the connection b/w database and java
			 * application.
			 **/
			String url = "jdbc:mysql://localhost:3306/firstwebapp";
			String user = "root";
			String pass = "ronak";
			con = DriverManager.getConnection(url, user, pass);

			/**
			 * Third step is used for created the statement object to send the sql statement
			 * to the dabase and bring some result to the java application.
			 **/

			String checkQuery = "select * from userregister where useremail = ? and password = ?";
			PreparedStatement ps = con.prepareStatement(checkQuery);

			/** Fourth step is used for execute the sql query **/

			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				RequestDispatcher rd = request.getRequestDispatcher("./Welcome.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("error_msg", "Email and Password Wrong.......");
				RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp");
				rd.forward(request, response);
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {

				/** Fifth step is used to close the connection. **/
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}