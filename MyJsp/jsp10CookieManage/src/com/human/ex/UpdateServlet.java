package com.human.ex;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie cookies[]=request.getCookies();
		boolean check=false;
		String name=request.getParameter("name");
		String value="";
		String UpdateValue= request.getParameter("updateValue");

		for(int i=0;i<cookies.length;i++) {
			if(name.equals(cookies[i].getName())) {
				value=cookies[i].getValue();
				check=true;
				
				//쿠키삭제
				cookies[i]= new Cookie(name,value);
				cookies[i].setMaxAge(0);//삭제됨
				response.addCookie(cookies[i]);
			}
		}
		if(check==true) {
			//쿠키 수정: 같응ㄴ 키값에 새로은 이름을 넣는다.
			Cookie cookie= new Cookie(name,UpdateValue);
			cookie.setMaxAge(600);//쿠키 사용기간 설정 600초 동안 쿠키 유지
			response.addCookie(cookie);
			
			request.setAttribute("check",check);
			request.setAttribute("name", cookie.getName());
			request.setAttribute("value", value);
			request.setAttribute("updateValue",cookie.getValue());
			request.setAttribute("age", cookie.getMaxAge());
			RequestDispatcher dispatcher=request.getRequestDispatcher("update.jsp");
			dispatcher.forward(request, response);
		}else {
			request.setAttribute("check",check);
			RequestDispatcher dispatcher=request.getRequestDispatcher("update.jsp");
			dispatcher.forward(request,response);
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
