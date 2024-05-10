package com.ronak.project;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// Insert details into database (database Name => firstwebapp______table name =>
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

			// First we check that if user is already login or not if yes then in this case
			// registration is failed otherwise after some validation registration is
			// successful.
			String checkQuery = "select * from userregister where useremail = ? and password = ?";
			PreparedStatement ps1 = con.prepareStatement(checkQuery);
			ps1.setString(1, email);
			ps1.setString(2, password);
			ResultSet rs = ps1.executeQuery();
			if (rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("not_inserted",
						"Your data is already register...<a href = './Login.jsp'>Click</a>");
				RequestDispatcher rd = request.getRequestDispatcher("./Register.jsp");
				rd.forward(request, response);
				return;
			} else {
				String insertQuery = "insert into userregister (username, useremail, password) values (?, ?, ?)";
				PreparedStatement ps2 = con.prepareStatement(insertQuery);
				ps2.setString(1, name);
				ps2.setString(2, email);
				ps2.setString(3, password);
				int dbres = ps2.executeUpdate();
				if (dbres != 0) {
					HttpSession session = request.getSession();
					session.setAttribute("inserted", "Successfully Register.......");
					RequestDispatcher rd = request.getRequestDispatcher("./Register.jsp");
					rd.forward(request, response);
				}
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
