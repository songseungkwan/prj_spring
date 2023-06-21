package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	   @RequestMapping(value="/")
		public String home() {
		// 여기에서 서버단에 필요한 작업을 수행한다.
		   
//		   정적데이터 연결 방법
		   href="/resource/xml/v1/css/commonXdm.css"
		   
//		   jsp 상단에 넣을 내용
		   <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
		
		
		// 아래의 jsp 파일 호출
		return "home";
	}

}
