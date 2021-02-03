package kr.co.batis.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AjaxController {
	@RequestMapping("/ajax")
	public String ajax() {
		return "/ajax";
	}
	@RequestMapping("/ajax_cal")
	public void ajax_cal(HttpServletRequest request, PrintWriter out) {
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int total = kor + eng;
		out.print(total);
	}
	@RequestMapping("/sung")
	public String sung() {
		return "/sung";
	}
	@RequestMapping("/cal_score")
	public void cal_score(HttpServletRequest request, PrintWriter out) {
		int mid_test = Integer.parseInt(request.getParameter("mid_test"));
		int fin_test = Integer.parseInt(request.getParameter("fin_test"));
		int attend_check = Integer.parseInt(request.getParameter("attend_check"));
		int report = Integer.parseInt(request.getParameter("report"));
		int total = mid_test + fin_test + attend_check + report;
		System.out.print(total);
		out.print(total);
	}
}