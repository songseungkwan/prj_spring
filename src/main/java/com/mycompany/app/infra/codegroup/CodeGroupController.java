package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

	/* @RequestMapping("/codeGroupHome") */
	@RequestMapping("/codeGroupXdmList")
	public String codeGroupXdmList(CodeGroupVo vo, Model model) {

		List<CodeGroup> list = service.selectList(vo);

		/*
		 * System.out.println("vo.getShOption():" + vo.getShOption());
		 * System.out.println("vo.getShKeyword():" + vo.getShKeyword());
		 */

//		왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list", service.selectList(vo));

		return "xdm/infra/codegroup/codeGroupXdmList";
	}
	
	
	


	
	
	

	@RequestMapping("/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeGroupVo vo, Model model) {

		CodeGroup codeGroup = service.selectOne(vo);

		model.addAttribute("item", codeGroup);

		return "xdm/infra/codegroup/codeGroupXdmForm";
	}
	
	
	

	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {

		service.update(dto);
		


		return "redirect: /codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupDel")
	public String codeGroupDel(CodeGroup dto) {

		service.delete(dto);
		
		return "redirect: /codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupAdd")
	public String codeGroupAdd(CodeGroup dto) {

		service.insert(dto);
		
		return "redirect: /codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupUel")
	public String codeGroupUel(CodeGroup dto) { 	

		service.uelete(dto);
		
		return "redirect: /codeGroupXdmList";
	}
	
	
	

}
