package com.human.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetServlet_ex
 */
@WebServlet("/GetServlet_ex")
public class GetServlet_ex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetServlet_ex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//사용자 입력 한글 깨짐 처리를 위한 인코딩
		//요청에 대한 한글처리
		request.setCharacterEncoding("UTF-8");
		int num=Integer.parseInt(request.getParameter("num2"));
		String str=request.getParameter("str2");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<body>");
		
		//왼쪽 직각 삼각형이라면
//		for (int i=1;i<=num;i++) {
//			for(int j=1;j<=i;j++) {
//				out.println(str);
//			}
//			out.println("<br>");
//		}
		//오른쪽 직각 삼각형이라면
		for(int i=1;i<=num;i++) {
			//공간찍기
			for(int j=i;j<=num;j++) {
				out.println("&nbsp;");
			}
			//별찍는 for
			for(int k=1;k<=i;k++) {
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
