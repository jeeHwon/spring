package kr.co.batis.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("/member/session_view")
	public String session_view(HttpSession session) {//세션변수 만들기(login_ok)
		// 세션변수 생성
		session.setAttribute("userid", "jee");
		return "/member/session_view";
	}
	@RequestMapping("/member/member_view")
	public String member_view(HttpSession session) {//회원만 보는 문서를 요청
		if(session.getAttribute("userid") != null) {
			return "/member/member_view";
		} else {
			return "redirect:/member/login";
		}
	}
	@RequestMapping("/member/login")
	public String login() {
		return "/member/login";
	}
}
