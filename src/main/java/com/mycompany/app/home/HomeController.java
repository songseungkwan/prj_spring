package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	   @RequestMapping(value="/")
		public String home() {
		// 여기에서 서버단에 필요한 작업을 수행한다.
		   
//		   정적데이터 연결 방법
//		   href="/resource/xml/v1/css/commonXdm.css"
		   
//		   jsp 상단에 넣을 내용
//		   <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
		
		
		// 아래의 jsp 파일 호출
		return "home";
	   }
		@RequestMapping(value="/home2")
		public String home2() {
			return "app/home/home2";		
		}
		
		@RequestMapping(value="/loginForm")
		public String loginForm() {
			return "app/home/loginForm";		
		}
		
		@RequestMapping(value="/register")
		public String register() {
			return "app/home/register";		
		}
		
		
		
		
//		// 중복되면 안됨.		
//		  @RequestMapping(value="/adminHome") 
//		  public String adminHome() { 
//			  return "admin/adminHome"; 
//	    }
		 
//		
//		@RequestMapping(value="/home4")
//		public String home4() {
//			return "app/home/home4";
//		}
//		
//		@RequestMapping(value="/home5")
//		public String home5() {
//			return "app/home/home5";
//		}
//		
//		@RequestMapping(value="/home6")
//		public String home6() {
//			return "app/home/home6";
//		}
//		
//		@RequestMapping(value="/home7")
//		public String home7() {
//			return"/app/home/home7";
//		}
//		@RequestMapping(value="/home8")
//		public String home8() {
//			return"/app/home/home8";
//		}
//		
//		@RequestMapping(value="/home9")
//		public String home9() {
//			return "/app/home/home9";
//		}
//		@RequestMapping(value="/home10")
//		public String home10() {
//			return "/app/home/home10";	
//	}

}
