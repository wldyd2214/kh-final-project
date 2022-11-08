/*package com.kh.dok.licensee.controller.sheetController;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

*//**
 * Servlet implementation class ViewFiled
 *//*
@WebServlet("/ViewFiled")
public class ViewFiled extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public ViewFiled() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("name");
		
		System.out.println(name);
		String[][] arr = new cellClass().test(name);
		
		for(String[] str : arr){
			for(String s : str)
				System.out.print(s);
			System.out.println();
		}
		
		String page = "/fieldView.jsp";
		
		req.setAttribute("field", arr);
		RequestDispatcher view = req.getRequestDispatcher(page);
		view.forward(req, res);
		
	}

	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}*/