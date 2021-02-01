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
		return "redirect:/list";
	}
	@RequestMapping("/list")
	public String list(Model model) {
		Dao dao = sqlSession.getMapper(Dao.class);
		ArrayList<Dto> list = dao.list();
 		model.addAttribute("list",list);
		return "/list";
	}
	@RequestMapping("/content")
	public String content(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		Dao dao = sqlSession.getMapper(Dao.class);
		dao.readnum(id);
		Dto dto = dao.content(id);
		model.addAttribute(dto);
		return "/content";
	}
}
