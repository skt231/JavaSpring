package com.human.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieController
 */
@WebServlet("*.Servlet")
public class CookieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// URI:/jsp10/hello.do
					// conPath:/jsp10
					// command:/hello.do
					String uri = request.getRequestURI();
					System.out.println("URI:" + uri);
					// 원하는 수소에 대한 처리 방법
					String conPath = request.getContextPath();
					System.out.println("conPath:" + conPath);

					String command = uri.substring(conPath.length());
					System.out.println("command:" + command);
					
					String viewPage="main.html";
					
					if(command.equals(/create.Servlet)) {
						
						request.setCharacterEncoding("utf-8");
					
					 String name=request.getAttribute("name")<br>
					 Cookie cookie=new Cookie(name,value);
					cookie.setMaxAge(600);//쿠기 사용시간 설정 600초 동안 쿠키 유지
						// 0 삭제  //-1 문한대
						response.addCookie(cookie);
						

						request.setAttribute("name", cookie.getName());
						request.setAttribute("value", cookie.getValue());
						request.setAttribute("age", cookie.getMaxAge());
					 
					}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
