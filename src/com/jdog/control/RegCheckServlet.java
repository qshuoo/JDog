package com.jdog.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jdog.service.UserService;
import com.jdog.service.UserServiceImpl;


public class RegCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RegCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(request.getParameter("name"));
		UserService us = new UserServiceImpl();
		if(!us.getUserByName(request.getParameter("name"))) {
			response.getWriter().write("success");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
