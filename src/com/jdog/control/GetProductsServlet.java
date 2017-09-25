package com.jdog.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.jdog.domain.Product;
import com.jdog.service.ProductService;
import com.jdog.service.impl.ProductServiceImpl;


public class GetProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public GetProductsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService us = new ProductServiceImpl();
		Gson gson = new Gson();
		int start = Integer.parseInt(request.getParameter("start"));
 		List<Product> products = us.getAllProductByLimit(start);
 		response.getWriter().write(gson.toJson(products));
 		response.getWriter().flush();
 		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
