package com.mycompany.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
//	@RequestMapping("/adminHome")
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroupVo vo, Model model) {
		
/*		List<CodeGroup> list = service.selectList(vo); */
		
		System.out.println("vo.getShOption():" + vo.getShOption()) ;
		System.out.println("vo.getShKeyword():" + vo.getShKeyword()) ;
		
		
//		왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list", service.selectList(vo));
		
		return "codeGroupList";
	}
		
		@RequestMapping("/formPage")
		public String formPage(CodeGroupVo vo, Model model) {
			
			CodeGroup codeGroup = service.selectOne(vo);
			
			model.addAttribute("item", codeGroup);
			
			return "formPage";
		}
		
		
		
	}
	
