package com.mycompany.app.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping("/memberXdmList")
	public String memberXdmList( @ModelAttribute("vo") MemberVo vo, Model model) {

		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}

		
//		vo.setShKeyword("회원");
		
//		vo.setShKeyword(vo.getShKeyword()== null ? "" : vo.getShKeyword());
		// 고정 초기화하기(삼항연산자)
		// vo.setShKeyword : 설정하는 값
		// vo.getShKeyword : 입력받는 값
		
//		service 호출
//		List<member> list = service.selectList(vo);

//		왼쪽의 list는 jsp에서 사용할 변수명
//		model.addAttribute("list", list);
		
// 검색창에 입력하면 내용값 그대로 검색창에 띄우기 1번
//	 	model.addAttribute("vo", vo); 

		return "/xdm/infra/member/memberXdmList";
	}

	@RequestMapping("/memberXdmForm")
	public String memberXdmForm(MemberVo vo, Model model) {

		// service 호출
		Member member = service.selectOne(vo);

		model.addAttribute("item", member);

		return "xdm/infra/member/memberXdmForm";
	}
	
	
	@RequestMapping("/memberUpdt")
	public String memberUpdt(Member dto) {
		
		// service 호출
		service.update(dto);
		


		return "redirect: /memberXdmList";
	}
	
	@RequestMapping("/memberDel")
	public String memberDel(Member dto) {

		// service 호출
		service.delete(dto);
		
		return "redirect: /memberXdmList";
	}
	
	@RequestMapping("/memberAdd")
	public String memberAdd(Member dto) {

		// service 호출
		service.insert(dto);
		
		return "redirect: /indexUsrView";
	}
	
	@RequestMapping("/memberUel")
	public String memberUel(Member dto) { 	

		// service 호출
		service.uelete(dto);
		
		return "redirect: /memberXdmList";
	}
	
	
//	유저 로그인
    @RequestMapping("/usrLoginForm") 
    public String usrLoginForm() {
	   return "usr/infra/member/usrLoginForm"; }
	 
	@ResponseBody
	@RequestMapping("/loginProc")
	public Map<String, Object> loginProc(MemberVo vo , HttpSession session) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOne(vo);
		
		if(rtMember != null) {
			
			 // 로그인 성공 시 세션에 사용자 정보 저장
	        session.setAttribute("id", rtMember.getId());
	        
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt","fail");
		}
		
		return returnMap;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
	    // 세션에서 사용자 정보를 제거하여 로그아웃 처리
	    session.removeAttribute("id");

	    return "redirect:indexUsrView"; // 로그아웃 후에 메인 페이지로 리다이렉트
	}
		
//	관리자 로그인
	@RequestMapping("/xdmLoginForm")
	public String xdmLoginForm() {
		return "xdm/infra/member/xdmLoginForm";		
	}
	
	
	
	
	
	

}