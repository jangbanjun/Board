package com.miso.MultiBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommonController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	@RequestMapping(value = "/openBoardList", method = RequestMethod.POST)
	public ModelAndView openBoardList() throws Exception{
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("board");
		return mv;
	}
}
