package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	   @RequestMapping(value="/")
		public String biographyUsrView() {
		// 여기에서 서버단에 필요한 작업을 수행한다.
		   		
		// 아래의 jsp 파일 호출
		return "usr/infra/biography/biographyUsrView";
	   }

		
//		@RequestMapping(value="/xdmLoginForm")
//		public String xdmLoginForm() {
//			return "xdm/infra/member/xdmLoginForm";		
//		}
		
		@RequestMapping(value="/xdmRegister")
		public String xdmRegister() {
			return "xdm/infra/member/xdmRegister";		
		}
		
		@RequestMapping(value="/indexUsrView")
		public String indexUsrView() {
			return "usr/infra/index/indexUsrView";		
		}
		@RequestMapping(value="/workout")
		public String workout() {
			return "usr/infra/subpage/workout";		
		}
		@RequestMapping(value="/allTimeRecord")
		public String allTimeRecord() {
			return "usr/infra/subpage/allTimeRecord";		
		}
		
		
//		----------sub page
		@RequestMapping(value="/pullups")
		public String pullups() {
			return "usr/infra/subpage/pullups";		
		}

		@RequestMapping(value="/pushups")
		public String pushups() {
			return "usr/infra/subpage/pushups";		
		}
		@RequestMapping(value="/situps")
		public String situps() {
			return "usr/infra/subpage/situps";		
		}
		
		@RequestMapping(value="/planche")
		public String planche() {
			return "usr/infra/subpage/planche";		
		}
		
		@RequestMapping(value="/burpee")
		public String burpee() {
			return "usr/infra/subpage/burpee";		
		}
		
		@RequestMapping(value="/squat")
		public String squat() {
			return "usr/infra/subpage/squat";		
		}
		
		@RequestMapping(value="/deadlift")
		public String deadlift() {
			return "usr/infra/subpage/deadlift";		
		}
		
		@RequestMapping(value="/benchpress")
		public String benchpress() {
			return "usr/infra/subpage/benchpress";		
		}
		
		@RequestMapping(value="/running")
		public String running() {
			return "usr/infra/subpage/running";		
		}
		
		@RequestMapping(value="/bikes")
		public String bikes() {
			return "usr/infra/subpage/bikes";		
		}
		
		@RequestMapping(value="/swimming")
		public String swimming() {
			return "usr/infra/subpage/swimming";		
		}
		
		//----------usr login & register form	
				
		@RequestMapping(value="/usrRegisterForm")
		public String usrRegisterForm() {
			return "usr/infra/member/usrRegisterForm";		
		}
		
		//----------indexXdmView
		@RequestMapping(value="/indexXdmView")
		public String indexXdmView() {
			return "xdm/infra/index/indexXdmView";		
		}
		
		


}
