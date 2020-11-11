package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.ClinicDao;
import com.example.demo.vo.ClinicVo;
import com.example.demo.vo.MemberVo;

import lombok.Setter;

@Controller
@Setter
public class ClinicController {

	@Autowired
	private ClinicDao dao;

	//환자번호로 진료이력조회
	@RequestMapping("/listClinic")
	public ModelAndView list(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int member_no = -1;
		if(session.getAttribute("member_no") != null) {
			member_no = (int)session.getAttribute("member_no");
		}
		List<ClinicVo> list = dao.findByNoMem(member_no);
		mav.addObject("list", list);
		return mav;
	}
	
	//ajax으로 진료이력 불러오기
	@RequestMapping("/listClinic.ajax")
	@ResponseBody
	public List<ClinicVo> listAjax(HttpSession session) {
		int member_no = -1;
		if(session.getAttribute("member_no") != null) {
			member_no = (int)session.getAttribute("member_no");
		}
		List<ClinicVo> list = dao.findByNoMem(member_no);
		return list;
	}
	
	//진료번호로 진료이력 상세조회
	@RequestMapping("/detailClinic")
	public ModelAndView detail(int cli_no) {
		ModelAndView mav = new ModelAndView();
		ClinicVo c = dao.findByNoCli(cli_no);
		mav.addObject("c", c);
		return mav;
	}	

	//테스트용 session값 받아오기
	@GetMapping("/session")
	public void session() {}
}
