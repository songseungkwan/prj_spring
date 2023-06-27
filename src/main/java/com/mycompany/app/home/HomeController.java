package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	   @RequestMapping(value="/")
		public String home() {
		// 여기에서 서버단에 필요한 작업을 수행한다.
		   		
		// 아래의 jsp 파일 호출
		return "home/home";
	   }

		
		@RequestMapping(value="/xdmLoginForm")
		public String xdmLoginForm() {
			return "xdm/member/xdmLoginForm";		
		}
		
		@RequestMapping(value="/xdmRegister")
		public String xdmRegister() {
			return "xdm/member/xdmRegister";		
		}
		
		@RequestMapping(value="/kp")
		public String kp() {
			return "usr/index/kp";		
		}
		@RequestMapping(value="/workout")
		public String workout() {
			return "usr/subpage/workout";		
		}
		
//		----------
		@RequestMapping(value="/pullups")
		public String pullups() {
			return "usr/subpage/pullups";		
		}

		@RequestMapping(value="/pushups")
		public String pushups() {
			return "usr/subpage/pushups";		
		}
		@RequestMapping(value="/situps")
		public String situps() {
			return "usr/subpage/situps";		
		}
		
		@RequestMapping(value="/planche")
		public String planche() {
			return "usr/subpage/planche";		
		}
		
		@RequestMapping(value="/burpee")
		public String burpee() {
			return "usr/subpage/burpee";		
		}
		
		@RequestMapping(value="/squat")
		public String squat() {
			return "usr/subpage/squat";		
		}
		
		@RequestMapping(value="/deadlift")
		public String deadlift() {
			return "usr/subpage/deadlift";		
		}
		
		@RequestMapping(value="/benchpress")
		public String benchpress() {
			return "usr/subpage/benchpress";		
		}
		
		@RequestMapping(value="/running")
		public String running() {
			return "usr/subpage/running";		
		}
		
		@RequestMapping(value="/bikes")
		public String bikes() {
			return "usr/subpage/bikes";		
		}
		
		@RequestMapping(value="/swimming")
		public String swimming() {
			return "usr/subpage/swimming";		
		}
		
		
		


}
