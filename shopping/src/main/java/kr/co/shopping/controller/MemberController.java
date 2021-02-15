package kr.co.shopping.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.shopping.dao.MemberDao;
import kr.co.shopping.dto.MemberDto;

@Controller
public class MemberController {
	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/main/index";
	}
	@RequestMapping("/main/index")
	public String index() {
		return "/main/index";
	}
	@RequestMapping("/member/member")
	public String member() {
		return "/member/member";
	}
	@RequestMapping("/member/userid_dupcheck")
	public void userid_dupcheck(HttpServletRequest request, PrintWriter out) {
		String userid = request.getParameter("userid");
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		int n = mdao.get_userid_chk(userid);
		out.print(n);
	}
	@RequestMapping("/member/email_dupcheck")
	public void email_dupcheck(HttpServletRequest request, PrintWriter out) {
		String email = request.getParameter("email");
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		int n = mdao.get_email_chk(email);
		out.print(n);
	}
	@RequestMapping("/member/member_ok")
	public String member_ok(MemberDto mdto) {
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		mdao.member_ok(mdto);
		return "redirect:/main/index";
	}
	@RequestMapping("login/login")
	public String login(HttpServletRequest request, Model model) {
		model.addAttribute("chk", request.getParameter("chk"));
		return "/login/login";
	}
	@RequestMapping("login/login_ok")
	public String login_ok(HttpServletRequest request, HttpSession session) {
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		MemberDto mdto = mdao.get_member(userid, pwd);
		if(mdto != null) {
			session.setAttribute("userid", mdto.getUserid());
			session.setAttribute("name", mdto.getName());
			return "redirect:/main/index";
		} else {
			return "redirect:/login/login?chk=1";
		}
	}
	@RequestMapping("login/userid_search")
	public String userid_search() {
		return "login/userid_search";
	}
	@RequestMapping("/login/userid_view")
	public String userid_search_ok(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		String userid = mdao.get_userid(name, email);
		if(userid == null) {
			model.addAttribute("chk",2);
		} else {
			int n = userid.length() -3;
			String star ="";
			for(int i=1; i<=n; i++) {
				star = star + "*";
			}
			model.addAttribute("chk",1);
			model.addAttribute("userid",userid);
		}
		return "/login/userid_view";
	}

	
}
