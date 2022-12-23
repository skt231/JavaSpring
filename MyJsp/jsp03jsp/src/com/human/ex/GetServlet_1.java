package com.human.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetServlet
 */
@WebServlet("/GetServlet_1")
public class GetServlet_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetServlet_1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num=Integer.parseInt((request.getParameter("num")));
		String str=request.getParameter("str");
		response.setContentType("Text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.print("<html>");
		out.println("<body>");
		for(int i=1;i<=num;i++) {
			for(int j=1;j<=i;j++) {
				out.println(str);
			}
			out.println("<br>");
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
