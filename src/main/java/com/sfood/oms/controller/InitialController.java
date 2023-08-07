package com.sfood.oms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class InitialController {
	
	/**
	 * 전체 화면
	 * @return
	 */
	@RequestMapping("/")
	public String init(HttpServletRequest request) {
		// 세션이 존재할 경우 경고 후 로그인 화면
		// 사용자 권한 세팅
		// 메뉴 세팅
		return "index";
	}
	
}