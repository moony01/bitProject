package member.action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import member.bean.MemberDTO;
import member.dao.MemberDAO;

public class LoginFormAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//DATA
		String id = request.getParameter("member_id");
		String pwd = request.getParameter("member_passwd");
		
		//DATA BASE
		MemberDAO memberDAO = MemberDAO.getInstance();
		MemberDTO memberDTO = memberDAO.login(id,pwd);
		
		//RESPONSE
		String loginResult=null;
		if(memberDTO==null) {
			loginResult = "fail";
		} else {
			//세션
			HttpSession session = request.getSession();
			session.setAttribute("memName", memberDTO.getName());
			session.setAttribute("memId", id);
			session.setAttribute("memEmail", memberDTO.getEmail1()+"@"+memberDTO.getEmail2());
			
			if(session.getAttribute("memId") != null) {
				Cookie cookie = new Cookie("loginCookie", id);
				cookie.setMaxAge(60*60*24*7);
				cookie.setPath("/");
				response.addCookie(cookie);
			}
		}
		
		request.setAttribute("loginResult", loginResult);
		request.setAttribute("display", "/member/loginStatus.jsp");
		return "/member/login.jsp";
	}
}
