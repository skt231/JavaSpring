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
@WebServlet("/GetServlet")
public class GetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String data1=request.getParameter("data1");
		String []data2=request.getParameterValues("data2");
		String data3=request.getParameter("data3");
		response.setContentType("Text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.print("<html>");
		out.println("<body>");
		out.println("data1값은 : ");
		out.println(data1+"<br>");
		out.println("data2값은 : <br>");
		if(data2!=null) {
				for(String str: data2) {
					out.println(str+"<br>");
				}
		}
		out.println("data3값은");
		out.println(data3+"<br>");
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
