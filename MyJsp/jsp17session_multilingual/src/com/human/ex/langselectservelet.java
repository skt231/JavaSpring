package com.human.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.parser.Cookie;

/**
 * Servlet implementation class langselectservelet
 */
@WebServlet("/langselectservelet")
public class langselectservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public langselectservelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		System.out.println("hello");
		
		String myLang=request.getParameter("Lang");
		 Cookie[] cookies=request.getCookies();
		if(myLang!=null) {
			for(Cookie c:cookies) {
				if(c.getName().equals("lang")==true) {
					//c.getValue();//kor or eng
					if(c.getValue().equals("kor")) {
						response.sendRedirect("kor.jsp");
					}else {
						response.sendRedirect("eng.jsp");
					}
				}
			}
				
			
		StringBuffer sb=new StringBuffer();
		sb.append("<html>");
		 sb.append("<head><title>cookieExample</title></head>");
		 sb.append("<body>");
		 sb.append("<form action='LangSelectServlet' method='get'>");
		 sb.append("<input type='radio' value='kor' name='lang'>한국어");
		 sb.append("<input type='radio' value='Eng' name='lang'>English");
		 sb.append("<input type='submit' value='전송'/>");
		 sb.append("</form>");
		 sb.append("</body>");
		 sb.append("</html>");
		 out.println(new String(sb));
		 out.close();
		}else {
			//lang 를 이용해서 쿠키 생성
			 Cookie c=new Cookie("lang",myLang);
			 c.setMaxAge(356*24*60*60);
			 response.addCookie(c);
			 
			 if(myLang.equals("kor")) {
			 response.sendRedirect("kor.jsp");
			 }else {
			 response.sendRedirect("eng.jsp");
			 }
		} 
			 
			// StringBuffer sb = new StringBuffer();
			// sb.append("<html>");
			// sb.append("<head><title>cookieExample</title></head>");
			// sb.append("<body>");
			// sb.append("페이지이동");
			// sb.append("</body>");
			// sb.append("</html>");
			// out.println(new String(sb));
			// out.close();
			
		}
		
		
	
	
		
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
