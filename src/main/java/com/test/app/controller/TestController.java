package com.test.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

	/* 1번
	@RequestMapping("/test.do")
	public String test() {
		System.out.println("ajax 로그");
		return "test.jsp";
	}
	 */

	@ResponseBody
	@RequestMapping(value = "/test.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String test() {
		System.out.println("ajax 로그");
		return "apple"; // boolean, int
	}

}
