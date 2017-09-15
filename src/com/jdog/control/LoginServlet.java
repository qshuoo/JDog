package com.jdog.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdog.service.UserService;
import com.jdog.service.UserServiceImpl;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserService us = new UserServiceImpl();
		PrintWriter out = response.getWriter();
		String name = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		HttpSession session = request.getSession();
		if (us.login(name, pwd)) {
			session.setAttribute("UserName", us.getRnameByUname(name));
			session.setAttribute("UserId", us.getIdByName(name));
			out.write("success");
			out.flush();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
