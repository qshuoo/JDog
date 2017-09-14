package com.jdog.control;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.dsna.util.images.ValidateCode;

/**
 * Servlet implementation class VaildateCodeServlet
 */
public class VaildateCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VaildateCodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ValidateCode validateCode =new ValidateCode(200, 46, 4, 50);
		HttpSession session = request.getSession();
		session.setAttribute("code", validateCode.getCode());
		
		BufferedImage bufferedImage = validateCode.getBuffImg();
		Graphics  graphics = bufferedImage.getGraphics();
		graphics.setColor(Color.lightGray);
		graphics.drawRect(0, 0, 199, 45);
		
		OutputStream outputStream = response.getOutputStream();
	    validateCode.write(outputStream);
	    outputStream.flush();
	    outputStream.close();    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
