package review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import review.bean.ReviewDTO;
import review.dao.ReviewDAO;

public class LoginAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//데이터
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//DB
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		ReviewDTO reviewDTO = reviewDAO.login(id,pwd);
		
		//응답
		String loginResult=null;
		if(reviewDTO==null) {
			loginResult = "fail";
		} else {
			//세션
			HttpSession session = request.getSession();
			session.setAttribute("memName", reviewDTO.getName());
			session.setAttribute("memId", id);
			session.setAttribute("memEmail", reviewDTO.getEmail1()+"@"+reviewDTO.getEmail2());
			
		}
		request.setAttribute("loginResult", loginResult);
		request.setAttribute("display", "/template/body.jsp");
		return "/main/index.jsp";
		
	}
	
}
