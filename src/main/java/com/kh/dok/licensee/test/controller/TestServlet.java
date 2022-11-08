package com.kh.dok.licensee.test.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestServlet() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	/*	String name = req.getParameter("name");
		String[] arr = req.getParameterValues("bak");
		String tableName = req.getParameter("table");
		
		//셀 조회 15x15
//		String[][] num = new cellClass().test();
//		System.out.println(num[0][0]);
		
		if(tableName == ""){
			//셀 값 삽입
			new cellClass().createTeble(arr, name);
		}else{
			//셀 구매
			new cellClass().insertCell(arr, name, tableName);
		}
		
		res.sendRedirect("/t");
	}*/
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
