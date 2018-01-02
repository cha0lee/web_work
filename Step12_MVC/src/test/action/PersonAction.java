package test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;

public class PersonAction extends Action{
	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) {
		//오늘의 운세
		String personToday = "김구라";
		//데이터(Model)을 request에 담는다.
		request.setAttribute("personToday", personToday);
		//view 페이지로 forward 이동할 수 있도록 ActionForward 객체를 생성해서 
		ActionForward af = new ActionForward("/views/person.jsp");
		//리턴해준다.
		return af;
	}

}
