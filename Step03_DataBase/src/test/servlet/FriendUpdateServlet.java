package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.FriendDao;
import test.dto.FriendDto;
@WebServlet("/friend/update")
public class FriendUpdateServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//읽어오기 전 읽어올 값이 한글인 경우 깨지지 않도록
		request.setCharacterEncoding("utf-8");
		
		//1. 폼전송되는 수정할 회원의 번호, 이름, 주소를 읽어와서
		int num = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String regdate = request.getParameter("regdate");
		
		//2. MemberDao를 이용해서 DB에 수정반영하고
		FriendDto dto = new FriendDto(num, name, phone, regdate);
		FriendDao.getInstance().update(dto);
				
		//3. 응답하기
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
		pw.println("<title>알림</title>");
		pw.println("<style>");
		pw.println("p{color: plum;}");
		pw.println("</style>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<script>");
		pw.println("alert('수정했습니다.');");
		pw.println("location.href='list'");
		pw.println("</script>");

		pw.println("</body>");
		pw.println("</html>");
	}
}
