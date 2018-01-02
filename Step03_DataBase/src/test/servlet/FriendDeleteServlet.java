package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.FriendDao;

@WebServlet("/friend/delete")
public class FriendDeleteServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		//삭제할 친구의 번호를 읽어온다.
		int num = Integer.parseInt(request.getParameter("num"));
		//FriendDao를 이용해서 회원정보를 삭제하고
		FriendDao.getInstance().delete(num);
		
		//응답한다.
		//응답 인코딩 설정
		response.setCharacterEncoding("utf-8");

		//응답 컨텐츠 설정
		response.setContentType("text/html;charset=utf-8");
		//클라이언트에게 문자열을 출력할수 있는 객체 얻어오기
		PrintWriter pw = response.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8' />");
		pw.println("<title>친구 정보</title>");
		pw.println("<style>");
		pw.println("p{color: plum;}");
		pw.println("</style>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>회원정보를 삭제했습니다.</p>");
		pw.println("<a href='list'>친구 목록보기</a>");
		pw.println("</body>");
		pw.println("</html>");
	}
}
