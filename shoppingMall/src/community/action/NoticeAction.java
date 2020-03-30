package community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

public class NoticeAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//RESPONSE
		request.setAttribute("display", "/community/noticeList.jsp");
		return "/community/notice.jsp";
	}
	
}
