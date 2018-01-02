package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//hello 요청이 왔을 때: 서버에게 알려줌 
@WebServlet("/hello")
//아래와 같이 클래스를 만들어 두면(상속받아서 override 해서 만들어야함..
//webserver application이 필요시점에 알아서 객체 생성해서 실행함
public class HelloServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		//클라이언트에게 출력하기 위한 객체
		PrintWriter pw = response.getWriter();
		//world! 라는 문자열 응답하기
		pw.println("world!");	
	}

}
