package com.framework;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlerJsp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("requestname: " + request.getAttribute("request-name"));
//		System.out.println("sessionname: " + request.getSession().getAttribute("session-name"));
//		System.out.println("applicationname: " + request.getServletContext().getAttribute("application-name"));
		
//		request.setAttribute("request-name", "request-value1");
//		request.getSession().setAttribute("session-name", "session-value1");
//		request.getServletContext().setAttribute("application-name", "application-value1");
//		request.getRequestDispatcher("/a.jsp").forward(request, response);
//		response.sendRedirect("a.jsp");
		
		PrintWriter writer = response.getWriter();
		writer.print(request.getParameter("name"));
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		System.out.println("name: " + request.getParameter("name"));
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.print(request.getParameter("name"));
		
	}

}
