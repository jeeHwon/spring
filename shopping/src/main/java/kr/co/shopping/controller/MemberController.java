package kr.co.shopping.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
}
