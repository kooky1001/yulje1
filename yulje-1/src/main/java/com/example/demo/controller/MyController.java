package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.MyDao;
import com.example.demo.vo.MemberVo;

@Controller
public class MyController {

	@Autowired
	private MyDao dao;
	
	@PostMapping("/updateMyMember")
	public ModelAndView updateMember(MemberVo m) {
		ModelAndView mav = new ModelAndView();
		int re = dao.updateMember(m);
		mav.addObject("re", re);
		return mav;
	}
	
	@GetMapping("/updateMyMember")
	public ModelAndView updateForm(HttpSession session) {
		ModelAndView mav = new ModelAndView("/myPage_7");
		int member_no = -1;
		if (session.getAttribute("member_no") != null) {
			member_no = (int)session.getAttribute("member_no");
		}
		MemberVo m = dao.findByNo(member_no);
		System.out.println(m);
		mav.addObject("m", m);
		return mav;
	}
}
