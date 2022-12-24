package com.human.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedirectServlet_ex
 */
@WebServlet("/RedirectServlet_ex")
public class RedirectServlet_ex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RedirectServlet_ex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String site=request.getParameter("site");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.print("<html>");
		out.println("<body>");
		String siteMove="";
		if(site.equals("naver")) {
			siteMove="https://www.naver.com";
		response.sendRedirect(siteMove);
		}else if(site.equals("google")){
			siteMove="https://www.google.com";
		response.sendRedirect(siteMove);
		}else if(site.equals("daum")) {
			siteMove="https://www.daum.net";
		response.sendRedirect(siteMove);
		}
		
		
		out.println("</body>");
		out.println("</html>");
		}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
