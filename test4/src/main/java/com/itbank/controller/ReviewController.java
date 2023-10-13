package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.AccountDTO;
import com.itbank.model.ReviewDTO;
import com.itbank.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired private ReviewService reviewService;
	
	@GetMapping("/write")
	public void write() {}
	
	@PostMapping("/write")
	public String write(HttpSession session,ReviewDTO dto) {
		AccountDTO login = (AccountDTO) session.getAttribute("login");
		dto.setWriter(login.getUserid());
		int row = reviewService.write(dto);
		System.out.println(row + "행 추가 ");
		return "redirect:/review/list";
	}
	
	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<ReviewDTO> list = reviewService.selectAll();
		mav.addObject("list",list);
		return mav;
	}
	@GetMapping("/view/{idx}")
	public ModelAndView view(@PathVariable("idx")int idx) {
		ModelAndView mav = new ModelAndView("review/view");
		ReviewDTO dto = reviewService.selectOne(idx);
		mav.addObject("dto",dto);
		return mav;
	}
	@GetMapping("/delete/{idx}")
	public String delete(@PathVariable("idx")int idx) {
		int row = reviewService.delete(idx);
		System.out.println(row + "행 삭제");
		return "redirect:/";
	}
}
