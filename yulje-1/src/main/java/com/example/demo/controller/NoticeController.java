package com.example.demo.controller;

import java.io.File;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.NoticeDao;
import com.example.demo.vo.NoticeVo;

import lombok.Setter;

@Controller
@Setter
public class NoticeController {

	@Autowired
	private NoticeDao dao;
	
//	페이징 처리를 위한 변수들
	private int pageSIZE = 5;
	private int totalRecord = 0;
	private int totalPage = 1;
	private int pageMAX = 5;
	
	//공지사항 리스트 불러오기
	@RequestMapping("/listNotice")
	public ModelAndView listNotice(@RequestParam(defaultValue = "1") int pageNUM) {
		ModelAndView mav = new ModelAndView();
				
		int end =pageNUM * pageSIZE;
		int start = end - (pageSIZE - 1);
		
		totalRecord = dao.getTotalRecord();
		totalPage = (int)Math.ceil((double) totalRecord / pageSIZE);
		int startPage = ((pageNUM - 1) / pageMAX) * pageMAX + 1;
		int endPage = startPage + pageMAX - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}
		
		HashMap map = new HashMap<>();
		map.put("end", end);
		map.put("start", start);
		mav.addObject("list", dao.findAllNotice(map));
		
		String pageStr = "";
		if (startPage > 1) {
			pageStr += "<a href='listNotice.do?pageNUM=" + (startPage - 1) + "'>[이전]</a>";
		}
		for (int i = startPage; i <= endPage; i++) {
			pageStr += "<a href='listNotice.do?pageNUM=" + i + "'>" + i + "</a> ";
		}
		if (endPage < totalPage) {
			pageStr += "<a href='listNotice.do?pageNUM=" + (endPage + 1) + "'>[다음]</a>";
		}
		mav.addObject("pageStr", pageStr);
		
		return mav;
	}
	
	//공지사항 상세페이지
	@RequestMapping("/detailNotice")
	public ModelAndView detailNotice(int no) {
		ModelAndView mav = new ModelAndView();
		dao.updateHit(no);
		mav.addObject("n", dao.findByNo(no));	
		return mav;
	}
	
	//공지사항 입력페이지로 가기
	@RequestMapping(value = "/insertNotice", method = RequestMethod.GET)
	public ModelAndView insertNoticeForm(@RequestParam(defaultValue = "0")int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("no", no);	
		return mav;
	}

	//공지사항 입력 실행
	@RequestMapping(value = "/insertNotice", method = RequestMethod.POST)
	public ModelAndView insertNoticeSubmit(NoticeVo n, HttpServletRequest request, MultipartFile mf) {
		ModelAndView mav = new ModelAndView();
		
		String path = request.getServletContext().getRealPath("/WEB-INF/upload");
		NoticeVo n = new NoticeVo();		
		int no = dao.getNextNo();
		if(!mf.isEmpty()) {
			String fname = mf.getOriginalFilename();
			try {
				mf.transferTo(new File(path));
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("mf:"+e.getMessage());
			}
			n.setFname(fname);
		} else {
			n.setFname("");
		}
		n.setNo(no);
		
		int re = dao.insert(n);
		request.setAttribute("re", re);
		
		return mav;
	}
}
