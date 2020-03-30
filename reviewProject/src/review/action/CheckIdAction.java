package review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import review.dao.ReviewDAO;

public class CheckIdAction implements CommandProcess {
	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//데이터
		String id = request.getParameter("id");
		
		//DB
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		boolean exist = reviewDAO.isExistId(id);
		
		//응답
		request.setAttribute("id", id);
		if(exist)
			return "/review/checkIdFail.jsp";//사용불가능
		else
			return "/review/checkIdOk.jsp";//사용가능
	}
	
}
