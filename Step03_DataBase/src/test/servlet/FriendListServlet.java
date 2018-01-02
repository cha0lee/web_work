package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.FriendDao;
import test.dao.MemberDao;
import test.dto.FriendDto;
import test.dto.MemberDto;
/*
 *  회원 목록을 출력할 서블릿
 */
@WebServlet("/friend/list")
public class FriendListServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//MemberDao 객체를 이용해서 회원 목록을 얻어온다.
		List<FriendDto> list=FriendDao.getInstance().getList();
		//클라이언트에게 출력하기 
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
		pw.println("<title>친구 목록 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<a href='insertform.html'>친구 정보 추가</a>");
		pw.println("<h3>친구목록 입니다</h3>");
		pw.println("<table>");
			pw.println("<thead>");
				pw.println("<tr>");
					pw.println("<th>번호</th>");
					pw.println("<th>이름</th>");
					pw.println("<th>전화번호</th>");
					pw.println("<th>등록날짜</th>");
					pw.println("<th>삭제</th>");
					pw.println("<th>수정</th>");
				pw.println("</tr>");
			pw.println("</thead>");
		pw.println("<tbody>");
		//반복문 이용해서 회원 목록 출력 하기 
		for(FriendDto tmp:list) {
			pw.println("<tr>");
				pw.println("<td> "+tmp.getNum()+" </td>");
				pw.println("<td> "+tmp.getName()+" </td>");
				pw.println("<td> "+tmp.getPhone()+" </td>");
				pw.println("<td> "+tmp.getRegdate()+" </td>");
				pw.println("<td><a href='delete?num="+tmp.getNum()+"'>삭제</a></td>");
				pw.println("<td><a href='updateform?num=" + tmp.getNum() + "'>수정</a></td>");
			pw.println("</tr>");
		}
		pw.println("</tbody>");
		pw.println("</table>");
		pw.println("</body>");
		pw.println("</html>");
	}
}
