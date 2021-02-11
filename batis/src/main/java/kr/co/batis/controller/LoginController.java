package kr.co.batis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.batis.dao.MemberDao;
import kr.co.batis.dto.MemberDto;

@Controller
public class LoginController {
	
	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/main/index")
	public String index() {
		return "/main/index";
	}
	@RequestMapping("/main/login")
	public String login(Model model, HttpServletRequest request) {
		model.addAttribute("chk", request.getParameter("chk"));
		return "/main/login";
	}
	@RequestMapping("/main/login_ok")
	public String login_ok(MemberDto mdto, HttpSession session) {
		//사용자가 입력한 아이디, 비밀번호
		
		//데이터베이스를 대상으로 체크 => 세션변수 생성(주로 아이디, 이름)
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		MemberDto mdto2 = dao.login_ok(mdto);
		
		if(mdto2 == null) {
			return "redirect:/main/login?chk=1";
		} else {
			//아이디와 이름을 세션변수로 만들기
			session.setAttribute("userid", mdto2.getId());
			session.setAttribute("name", mdto2.getName());
			return "redirect:/main/index";
		}
	}
	@RequestMapping("/main/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main/index";
	}
	@RequestMapping("/main/mypage")
	public String mypage(HttpSession session) {
		if(session.getAttribute("userid")==null) {
			return "redirect:/main/login?chk=2";
		} else {
			return "/main/mypage";
		}
	}
}
