package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/application")
public class Application extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String mobile = request.getParameter("mobile");
		String dateOf = request.getParameter("dateOf");
		String outTime = request.getParameter("outTime");
		String inTime = request.getParameter("inTime");
		String reason = request.getParameter("reason");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup?useSSL=false","root","Passwd@123");
			PreparedStatement pst = con.prepareStatement("insert into applicationusers(name,id,mobile,dateOf,outTime,inTime,reason) values(?,?,?,?,?,?,?) ");
			pst.setString(1, name);
			pst.setString(2, id);
			pst.setString(3, mobile);
			pst.setString(4, dateOf);
			pst.setString(5, outTime);
			pst.setString(6, inTime);
			pst.setString(7, reason);
			
			
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("index.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "sucess");
				//dispatcher = request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("status", "failed");
				//dispatcher = request.getRequestDispatcher("index.jsp");
			}
			dispatcher.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			}catch (SQLException e){
				e.printStackTrace();
			}
		}
		
	}

}
