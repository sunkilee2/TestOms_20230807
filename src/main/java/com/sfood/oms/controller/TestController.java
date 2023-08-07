package com.sfood.oms.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sfood.oms.entity.UserInfo;
import com.sfood.oms.jpa.repository.UserInfoRepository;

import jakarta.annotation.Resource;


@RestController
@RequestMapping("/route")
public class TestController {
	
	@Resource
	private UserInfoRepository userInfoRepository;
	
	@GetMapping("/a")
    public List<UserInfo> getA() {
		System.out.println("11111");
        return userInfoRepository.findAll();
    }
	
	@GetMapping("/b")
    public String getB() {
        
        return "bb";
    }
    
}
