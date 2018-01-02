package test.cafe.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;

public class CafeInsertFormAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// 따로 처리할 로직은 없고 포와딩만
		return new ActionForward("/views/cafe/private/insertform.jsp");
	}

}
