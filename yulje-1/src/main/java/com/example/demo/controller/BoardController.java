package com.example.demo.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.NoticeDao;
import com.example.demo.vo.NoticeVo;

import lombok.Setter;

@Controller
@Setter
public class BoardController {

	@Autowired
	private NoticeDao dao;
	
	private int pageSIZE = 5;
	private int totalRecord = 0;
	private int totalPage = 1;
	private int pageMAX = 5;
	
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
	
	@RequestMapping("/detailNotice")
	public ModelAndView detailNotice(int no) {
		ModelAndView mav = new ModelAndView();
		dao.updateHit(no);
		mav.addObject("n", dao.findByNo(no));	
		return mav;
	}
	
	@RequestMapping(value = "/insertNotice", method = RequestMethod.GET)
	public ModelAndView insertNoticeForm(@RequestParam(defaultValue = "0")int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("no", no);	
		return mav;
	}

	@RequestMapping(value = "/insertNotice", method = RequestMethod.POST)
	public ModelAndView insertNoticeSubmit(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		String path = request.getServletContext().getRealPath("/WEB-INF/upload");
		//MultipartRequest multi = new MultipartRequest(request, path, 1024*1024*10, "UTF-8", new DefaultFileRenamePolicy());
		
		NoticeVo n = new NoticeVo();		
		int no = dao.getNextNo();
		n.setNo(no);
		n.setTitle(request.getParameter("title"));
		n.setContent(request.getParameter("content"));
		//String fname = multi.getFilesystemName("fname");
		//n.setFname(fname);
		
		int re = dao.insert(n);
		request.setAttribute("re", re);
		
		return mav;
	}
}
