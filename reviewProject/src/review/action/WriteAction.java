package review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.control.CommandProcess;

import review.bean.ReviewDTO;
import review.dao.ReviewDAO;

public class WriteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String zipcode = request.getParameter("zipcode");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		ReviewDTO reviewDTO = new ReviewDTO();
		reviewDTO.setName(name);
		reviewDTO.setId(id);
		reviewDTO.setPwd(pwd);
		reviewDTO.setGender(gender);
		reviewDTO.setEmail1(email1);
		reviewDTO.setEmail2(email2);
		reviewDTO.setTel1(tel1);
		reviewDTO.setTel2(tel2);
		reviewDTO.setTel3(tel3);
		reviewDTO.setZipcode(zipcode);
		reviewDTO.setAddr1(addr1);
		reviewDTO.setAddr2(addr2);
		
		ReviewDAO reviewDAO = ReviewDAO.getInstance();
		reviewDAO.write(reviewDTO);
		
		request.setAttribute("display", "/review/write.jsp");
		return "/main/index.jsp";
	}
}
