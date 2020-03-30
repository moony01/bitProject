package community.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

import community.bean.NoticeDTO;
import community.dao.NoticeDAO;

public class NoticeWriteAction implements CommandProcess {

	
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		//데이터-원글(첫째 줄,1페이지)
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");
		String name = (String)session.getAttribute("memName");
		String email = (String)session.getAttribute("memEmail");
		
		NoticeDTO boardDTO = new NoticeDTO();
		boardDTO.setId(id);
		boardDTO.setName(name);
		boardDTO.setEmail(email);
		boardDTO.setSubject(subject);
		boardDTO.setContent(content);
		
		//DB
//		NoticeDAO boardDAO = NoticeDAO.getInstance();
//		boardDAO.boardWrite(boardDTO);
		
		//응답
		request.setAttribute("display", "/community/noticeWrite.jsp");
		return "/main/index.jsp";
	}
	

}
