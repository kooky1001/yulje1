package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.ClinicDao;
import com.example.demo.vo.ClinicVo;

import lombok.Setter;

@Controller
@Setter
public class ClinicController {

	@Autowired
	private ClinicDao dao;
	
	//환자번호로 진료이력조회
	@RequestMapping("/listClinic")
	public ModelAndView list(int member_no) {
		ModelAndView mav = new ModelAndView();
		List<ClinicVo> list = dao.findByNoMem(member_no);
		mav.addObject("list", list);
		return mav;
	}
	
	//진료번호로 진료이력 상세조회
	@RequestMapping("/detailClinic")
	public ModelAndView detail(int cli_no) {
		ModelAndView mav = new ModelAndView();
		ClinicVo c = dao.findByNoCli(cli_no);
		mav.addObject("c", c);
		return mav;
	}
	
	/*detail
	 * DepartmentDao dept_dao = new DepartmentDao(); 
	 * DoctorDao doc_dao = DoctorDao.getInstance(); 
	 * MedicineDao medi_dao = new MedicineDao();
	 * 
	 * int dept_no = cli_dao.findByNo(cli_no).getDept_no(); 
	 * String dept_name =dept_dao.findByDEPT(dept_no).getDept_name();
	 * 
	 * int doc_no = cli_dao.findByNo(cli_no).getDoc_no(); 
	 * String doc_name =doc_dao.findByNo(doc_no).getDoc_name();
	 * 
	 * int medi_no = cli_dao.findByNo(cli_no).getMedi_no(); 
	 * String medi_name =medi_dao.findByNo(medi_no).getMedi_name();
	 * 
	 * request.setAttribute("dept_name", dept_name);
	 * request.setAttribute("doc_name", doc_name); 
	 * request.setAttribute("medi_name", medi_name);
	 * request.setAttribute("c", cli_dao.findByNo(cli_no));
	 * System.out.println("접수번호:"+cli_dao.findByNo(cli_no).getRegi_no());
	 * 
	 */
	
}
