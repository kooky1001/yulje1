package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.Doc_ScheduleDao;
import com.example.demo.dao.DoctorDao;
import com.example.demo.vo.Doc_ScheduleVo;
import com.example.demo.vo.DoctorVo;

import lombok.Setter;

@Controller
@Setter
public class DoctorController {
	
	@Autowired
	private DoctorDao dao;
	
	@Autowired
	private Doc_ScheduleDao sdao;
	
	@RequestMapping("/detailDoctor")
	public ModelAndView detail(HttpServletRequest request ,int doc_no) {
		ModelAndView mav = new ModelAndView();
		DoctorVo d = dao.findByNo(doc_no);
		mav.addObject("d", d);
		/*
		List<Doc_ScheduleVo> slist = sdao.findAllSche(doc_no);
		for (Doc_ScheduleVo s : slist) {
			if (s.getAm_pm().equals("오전")) {
				if (s.getWorkday().equals("월")) {
					request.setAttribute("ma", 1);
				}
				if (s.getWorkday().equals("화")) {
					request.setAttribute("ta", 1);
				}
				if (s.getWorkday().equals("수")) {
					request.setAttribute("wa", 1);
				}
				if (s.getWorkday().equals("목")) {
					request.setAttribute("tha", 1);
				}
				if (s.getWorkday().equals("금")) {
					request.setAttribute("fa", 1);
				}
				if (s.getWorkday().equals("토")) {
					request.setAttribute("sa", 1);
				}
			}
			if (s.getAm_pm().equals("오후")) {
				if (s.getWorkday().equals("월")) {
					request.setAttribute("mp", 1);
				}
				if (s.getWorkday().equals("화")) {
					request.setAttribute("tp", 1);
				}
				if (s.getWorkday().equals("수")) {
					request.setAttribute("wp", 1);
				}
				if (s.getWorkday().equals("목")) {
					request.setAttribute("thp", 1);
				}
				if (s.getWorkday().equals("금")) {
					request.setAttribute("fp", 1);
				}
				if (s.getWorkday().equals("토")) {
					request.setAttribute("sp", 1);
				}
			}
		}
		*/
		
		return mav;
	}
	
	@RequestMapping("/test")
	public void test() {}
}
