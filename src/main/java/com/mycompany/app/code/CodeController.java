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






// Controller에서 쓰인 어노테이션
// 1. @Controller - 클라이언트의 요청을 처리하고, 필요한 비즈니스 로직이나 서비스 계층을 호출하여 데이터를 가져와 뷰(View)에 전달하거나, 
// 		다른 작업을 수행. 이후 클라이언트에게 응답을 생성하여 전달.
// 2. @AutoWired
// 3. @RequestMapping
