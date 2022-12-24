package com.human.ex;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.server.Dispatcher;

/**
 * Servlet implementation class DispatcherServlet
 */
@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DispatcherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
 * request 객체에 사용자가 원하는 데이터를 담을수가 있다.
 * setAttribute(key,value)을 이용하여 데이터를 담을수 있다.
 * getAttribute(key)을 이용하여 데이터를 읽어온다.
 * 이런형태로 제일 많이 쓴다.
 * */
		
	request.setAttribute("name", "홍길동");
	RequestDispatcher dispather  = request.getRequestDispatcher("03dispatcher.jsp");
	//dispatcher 같은거를 singletone이라고 한다.
	dispather.forward(request,response);
	/*
	 * forward 액션태그는 하나의 JSP 페이지에서 다른 JSP페이지로 요청 처리를 전달할때 사용합니다.
	 * 1.웹브라우저의 요청이 from.jsp에 전달
	 * 2.from.jsp는 <jsp:froward>액션태그를 실행
	 * 3.요청흐름이 이동할때 from.jsp에서 사용한 request 기본객체와 response 기본객체가 to.jsp로 전달
	 * 4.to.jsp는 응답결과를 생성
	 * 5.to.jps가 생성한 결과가 웹브라우저에 전달
	 * 
	 *  중요한 것
	 *  - from.jsp가 아닌 to.jsp가 생성한 응답결과가 웹브라우저에 전달한다.
	 *  - from.jsp에서 사용한 request.respnonse가 to.jsp에 그대로 전달된다.
	 * */
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
