package com.human.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx
 */
@WebServlet("/FormEx")
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name3");
		
		String Id=request.getParameter("id3");
		String pw=request.getParameter("pw3");
		String []hobby=request.getParameterValues("hobby3");
		String major=request.getParameter("major3");
		String major1=request.getParameter("major13");
		String protocol1=request.getParameter("protocol");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.print("<html>");
		out.println("<body>");
		out.println("이름 :");
		out.println(name +"<br>");
		out.println("Id : ");
		out.println(Id+"<br>");
		out.println("비밀번호 : ");
		out.println(pw+"<br>");
		out.println("취미 : ");
		out.println(Arrays.toString(hobby)+ "<br>");
		out.println("과목 : ");
		out.println(major+ "<br>");
		out.println("과목 : ");
		out.println(major1+ "<br>");
		out.println(protocol1+"<br>");
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
