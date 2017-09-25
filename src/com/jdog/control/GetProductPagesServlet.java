package com.jdog.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdog.service.ProductService;
import com.jdog.service.impl.ProductServiceImpl;

public class GetProductPagesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetProductPagesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService us = new ProductServiceImpl();
		HttpSession session = request.getSession();
 		if(session.getAttribute("Pages") == null) {
 			session.setAttribute("Pages", us.getPageNum());
 		}
 		response.sendRedirect("product.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
