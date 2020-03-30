package review.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import review.bean.ZipcodeDTO;
import review.dao.ReviewDAO;

public class CheckPostAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String sido = request.getParameter("sido");
		String sigungu = request.getParameter("sigungu");
		String roadname = request.getParameter("roadname");
		
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		List<ZipcodeDTO> list=null;
		if(sido!=null && roadname!=null){
			list = reviewDAO.getZipcodeList(sido, sigungu, roadname);
		}
		
		request.setAttribute("list", list);
		return "/review/checkPost.jsp";
	}

}

