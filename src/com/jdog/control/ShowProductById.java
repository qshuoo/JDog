package com.jdog.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jdog.domain.Product;
import com.jdog.service.ProductService;
import com.jdog.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class ShowProductById
 */
@WebServlet("/ShowProductById")
public class ShowProductById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShowProductById() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("pid");
		ProductService ps = new ProductServiceImpl();
		Product product = ps.getProductById(id);
		request.setAttribute("product", product);
		request.getRequestDispatcher("singleproduct.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
