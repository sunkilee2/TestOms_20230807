package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class OmsWebConfig implements WebMvcConfigurer {
	
	@Value("${oms.cors.mapping.url}")
	private String corsMappingUrl;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// TODO Auto-generated method stub
		/*
		registry.addInterceptor(new LoginCheckInterceptor()) //인터셉터 등록. 여기서 LoginCheckInterceptor()은 내가 구현한 클래스 이름이다. 
		.order(1) //낮을 수록 먼저 호출
		.addPathPatterns("/**") //인터셉터를 적용할 url 패턴 
		.excludePathPatterns(
			"/publish/**","/css/**","/*.ico", "/error","/login/**"
			,"//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
			,"/development/js/daum-address.js"
			,"/swagger-ui.html"
			,"/swagger/**"
			,"/swagger-ui/**"
		); //인터셉터에서 제외할 패턴 지정
		*/
	}

	@Override
	public void addCorsMappings(CorsRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addCorsMappings(registry);
		registry.addMapping("/**").allowedOrigins(corsMappingUrl);
	}

}
