package com.human.ex;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class fromcontroller
 */
@WebServlet("*.do")
public class fromcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public fromcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// URI:/92frontController/hello.do
				// conPath:/92frontController
				// command:/hello.do
				//request.getRequestURI(); : 프로젝트 + 파일경로까지
				//request.getContextPath() : 프로젝트 Path만
		
		String uri=request.getRequestURI();
		System.out.println("URI:"+uri);
		//원하는 수소에 대한 처리 방법
		String conPath=request.getContextPath();
		System.out.println("conPath:"+conPath);
		String command=uri.substring(conPath.length());
		System.out.println("command:"+command);
		
		String viewPage="view.jsp";
		if (command.equals("/insert.do")) {
			viewPage = "insert.jsp";

			System.out.println("insert.do");

		} else if (command.equals("/select.do")) {
			viewPage = "select.jsp";
			System.out.println("select작업");
			System.out.println("insert.do");

		} else if (command.equals("/delete.do")) {
			viewPage = "delete.jsp";
			System.out.println("delete작업");
			System.out.println("insert.do");

		} else if (command.equals("/update.do")) {
			viewPage = "update.jsp";
			System.out.println("update작업");
			System.out.println("insert.do");

		}
		System.out.println(viewPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
