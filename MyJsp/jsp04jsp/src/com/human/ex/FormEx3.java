package com.human.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormEx3
 */
@WebServlet("/FormEx3")
public class FormEx3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String []file1=request.getParameterValues("myfile");
		String birthday=request.getParameter("birthday");
		DateTimeFormatter formatter=DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
		LocalDateTime birth = LocalDateTime.parse(birthday,formatter);
		/*다른 방법  초까지 나타내는
		LocalDateTime birth=LocalDateTime.parse(birthday);
		String Time= birth.format(DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss"));
		*/
		String str4=request.getParameter("multiline");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.print("<html>");
		out.println("<body>");
		out.println("파일 :");
		for(String file: file1) {
			out.println(file1+" ");
			}
		out.println("<br>생일 : ");
		out.println(birth);
		out.println("<br>");
		out.println("입력 : ");
		out.println(str4+"<br>");
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
