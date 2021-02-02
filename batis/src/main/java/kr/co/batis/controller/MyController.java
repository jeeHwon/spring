package kr.co.batis.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.batis.dao.Dao;
import kr.co.batis.dto.Dto;

@Controller
public class MyController {
	
	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/")
	public String home() {
		return "redirect:/list";
	}
	@RequestMapping("/write")
	public String write() {
		return "/write";
	}
	@RequestMapping("/write_ok")
	public String write_ok(Dto dto) {
		Dao dao = sqlSession.getMapper(Dao.class);
		dao.write_ok(dto);
		/*페이징 테스트용 코드
		String name = dto.getName();
		String title = dto.getTitle();
		for(int i=1; i<=2578; i++) {
			dto.setName(name+i);
			dto.setTitle(title+i);
			dao.write_ok(dto);
		}*/
		return "redirect:/list";
	}
	@RequestMapping("/list")
	public String list(Model model, HttpServletRequest request) {
		Dao dao = sqlSession.getMapper(Dao.class);
		int page, index;
		if(request.getParameter("page")==null) {
			page = 1;
			index = 0;
		} else {
			page = Integer.parseInt(request.getParameter("page"));
			index = (page-1)*10;
		}
		int pstart = (int)(Math.ceil(page/10.0)-1)*10+1;
		int pend = pstart + 9;
		ArrayList<Dto> list = dao.list(index);
		int total_cnt = dao.getCnt();
		int page_cnt = (int)Math.ceil(total_cnt*0.1);
		if(page_cnt < pend){
			pend = page_cnt;
		}
 		model.addAttribute("list",list);
 		model.addAttribute("pstart",pstart);
 		model.addAttribute("pend",pend);
 		model.addAttribute("total_cnt",total_cnt);
 		model.addAttribute("page_cnt",page_cnt);
 		model.addAttribute("index",index);
 		model.addAttribute("page",page);
		return "/list";
	}
	@RequestMapping("/readnum")
	public String readnum(HttpServletRequest request) {
		String id = request.getParameter("id");
		Dao dao = sqlSession.getMapper(Dao.class);
		dao.readnum(id);
		return "redirect:/content?id="+id;
	}
	@RequestMapping("/content")
	public String content(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		Dao dao = sqlSession.getMapper(Dao.class);
		Dto dto = dao.content(id);
		model.addAttribute("dto",dto);
		model.addAttribute("chk",request.getParameter("chk"));
		return "/content";
	}
	@RequestMapping("/update")
	public String update(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		Dao dao = sqlSession.getMapper(Dao.class);
		Dto dto = dao.update(id);
		model.addAttribute("dto",dto);
		return "/update";
	}
	@RequestMapping("/update_ok")
	public String update_ok(Dto dto) {
		Dao dao = sqlSession.getMapper(Dao.class);
		Integer num = dao.pwd_check(dto.getId()+"", dto.getPwd());
		if(num==1) {
			dao.update_ok(dto);
			return "redirect:/content?id="+dto.getId();
		}else {
			return "redirect:/content?id="+dto.getId()+"&chk=1";
		}
	}
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		Dao dao = sqlSession.getMapper(Dao.class);
		Integer num = dao.pwd_check(id, pwd);
		if(num == 1) {
			dao.delete(id);
			return "redirect:/list";
		} else {
			return "redirect:/content?id="+id+"&chk=1";
		}
	}
}
