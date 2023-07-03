package com.mycompany.app.infra.codegroup;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping("/codeGroupXdmList")
	public String codeGroupXdmList( @ModelAttribute("vo") CodeGroupVo vo, Model model) {
										// 2번
		
		// 처음에 해당 단어 고정하기
//		vo.setShKeyword("회원");
		
		vo.setShKeyword(vo.getShKeyword()== null ? "" : vo.getShKeyword());
		// 고정 초기화하기(삼항연산자)
		// vo.setShKeyword : 설정하는 값
		// vo.getShKeyword : 입력받는 값
		
//		service 호출
		List<CodeGroup> list = service.selectList(vo);

//		왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list", list);
		
// 검색창에 입력하면 내용값 그대로 검색창에 띄우기 1번
	//	 model.addAttribute("vo", vo); 

		return "xdm/infra/codegroup/codeGroupXdmList";
	}

	@RequestMapping("/codeGroupXdmForm")
	public String codeGroupXdmForm(CodeGroupVo vo, Model model) {

		// service 호출
		CodeGroup codeGroup = service.selectOne(vo);

		model.addAttribute("item", codeGroup);

		return "xdm/infra/codegroup/codeGroupXdmForm";
	}
	
	
	

	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		
		// service 호출
		service.update(dto);
		


		return "redirect: /codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupDel")
	public String codeGroupDel(CodeGroup dto) {

		// service 호출
		service.delete(dto);
		
		return "redirect: /codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupAdd")
	public String codeGroupAdd(CodeGroup dto) {

		// service 호출
		service.insert(dto);
		
		return "redirect: /codeGroupXdmList";
	}
	
	@RequestMapping("/codeGroupUel")
	public String codeGroupUel(CodeGroup dto) { 	

		// service 호출
		service.uelete(dto);
		
		return "redirect: /codeGroupXdmList";
	}
	
	
	

}
