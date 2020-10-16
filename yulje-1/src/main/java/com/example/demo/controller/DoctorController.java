package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.DoctorDao;
import com.example.demo.vo.DoctorVo;

import lombok.Setter;

@Controller
@Setter
public class DoctorController {
	
	@Autowired
	private DoctorDao dao;
	
	@RequestMapping("/detailDoctor")
	public ModelAndView detail(int doc_no) {
		ModelAndView mav = new ModelAndView();
		DoctorVo d = dao.findByNo(doc_no);
		mav.addObject("d", d);
		return mav;
	}
	
	@RequestMapping("/test")
	public void test() {}
}
