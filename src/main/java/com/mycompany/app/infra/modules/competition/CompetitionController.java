package com.mycompany.app.infra.modules.competition;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.modules.member.Member;

@Controller
public class CompetitionController {
	
	@Autowired
	CompetitionServiceImpl service;
	private HttpSession httpSession;

	
	@RequestMapping("/boardAdd")
	public String boardAdd(Competition dto) throws Exception {

		// service 호출
		service.insert(dto);
		
		return "redirect: /indexUsrView";
	}
	
}
