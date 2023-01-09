package kr.go.rda.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.rda.dto.NoticeDTO;
import kr.go.rda.service.NoticeService;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
	@GetMapping("list")
	public String noticeList(Model model) throws Exception {
		List<NoticeDTO> noticeLst = noticeService.noticeList(); 
		model.addAttribute("noticeList", noticeLst);
		return "notice/list";
	}
	
	@GetMapping("detail")
	public String noticeDetail(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		NoticeDTO noti = noticeService.noticeDetail(no);
		model.addAttribute("noti", noti);
		return "notice/detail";
	}
	
	@GetMapping("insert")
	public String insertForm(Model model) throws Exception {
		return "notice/insert";
	}
	
	@PostMapping("insert")
	public String noticeInsert(HttpServletRequest request, Model model) throws Exception {
		NoticeDTO dto = new NoticeDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		noticeService.noticeInsert(dto);
		return "redirect:list";
	}
	
	@GetMapping("delete")
	public String noticeDelete(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		noticeService.noticeDelete(no);
		return "redirect:list";
	}
	
	@GetMapping("edit")
	public String editForm(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		NoticeDTO dto = noticeService.noticeDetail(no);
		model.addAttribute("noti", dto);
		return "notice/edit";
	}
	
	@PostMapping("edit")
	public String noticeEdit(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		NoticeDTO dto = new NoticeDTO();
		dto.setNo(no);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		noticeService.noticeEdit(dto);
		return "redirect:list";
	}
}
