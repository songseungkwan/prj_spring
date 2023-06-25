package com.mycompany.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping("/codeList")
	public String codeList(Model model) {
		
		List<Code> list = service.selectList();
		
		
//		왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list", list);
		
		
						
		return "codeList";
	}
	
}