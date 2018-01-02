package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/isReady")
public class IsReadyServlet extends HttpServlet{
	//멤버필드 (servlet에서는 잘 만들지 않음..샘플..)
	private int count; 
	
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		//방문횟수 증가시키기: 객체가 하나만 만들어 지므로 count 수가 올라간다.
		count++;
		
		//클라이언트에게 출력할 수 있는 객체의 참조값 얻어오기
		PrintWriter pw = response.getWriter();
		pw.println("<!doctype html>");
		pw.println("<head>");
		pw.println("<title>isReady</title>");
		pw.println("<style>h3{color: tan;}</style>");
		pw.println("</head>");
		pw.println("<body>");
		//클라이언트에게 문자열 출력하기
		pw.println("<h3>okay</h3>");
		pw.println("count: " + count);
		pw.println("<body>");
		pw.println("<html>");
		
		
	}
}