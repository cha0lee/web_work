package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//요청값 인코딩
		request.setCharacterEncoding("utf-8");
		//요청 파라미터를 읽어들여 변수에 저장
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		//콘솔창에 출력
		System.out.println("id: " + id);
		System.out.println("pwd: " + pwd);
		//클라이언트에게 login ok 문자열 출력
		PrintWriter pw = response.getWriter();
		
		//아이디 비번이 gura, 1234라고 가정하면
		if(id.equals("gura") && pwd.equals("1234")) {
			pw.println("login ok!");
		} else {
			pw.println("login fail!");
		}
		
	}
}
