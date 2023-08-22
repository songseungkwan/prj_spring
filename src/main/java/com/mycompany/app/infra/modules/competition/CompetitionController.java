package com.mycompany.app.infra.modules.competition;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CompetitionController {
	
	@Autowired
	CompetitionServiceImpl service;
	private HttpSession httpSession;
	
	// competitionXdmList
	@RequestMapping ("/competitionXdmList")
	public String competitionXdmList(@ModelAttribute("vo") CompetitionVo vo, Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
		List<Competition> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "xdm/infra/competition/competitionXdmList";	
	}
	
	// competitionXdmForm
	@RequestMapping("/competitionXdmForm")
	public String competitionXdmForm(CompetitionVo vo, Model model) {
		Competition item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "xdm/infra/competition/competitionXdmForm";
	}
	


	 
	@RequestMapping(value="/realTimeRecord")
	public String realTimeRecord(@ModelAttribute("vo") CompetitionVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
		List<Competition> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		return "usr/infra/subpage/realTimeRecord";	 
	}
	@RequestMapping(value="/registerVideo")
	public String registerVideo() {
		return "usr/infra/subpage/registerVideo";		
	}				
	@RequestMapping(value="/workoutType")
	public String workoutType() {
		return "usr/infra/subpage/workoutType";		
	}			
	@RequestMapping(value="/prizeRanking")
	public String prizeRanking() {
		return "usr/infra/subpage/prizeRanking";		
	}		
	
	@RequestMapping(value="/viewUsrVideo")
	public String viewUsrVideo() {
		return "usr/infra/subpage/viewUsrVideo";		
	}		


	

	
	@RequestMapping("/competitionInst")
	public String competitionInst(Competition dto, HttpSession httpSession) throws Exception {
		System.out.println(dto.getType());
		String aaa = (String) httpSession.getAttribute("sessionSeq");
		
		System.out.println("aaa: " + aaa);
		dto.setMember_seq(aaa);
		
		// service 호출
		service.insert(dto);
		
		return "redirect: /indexUsrView";
	}
	
//	@RequestMapping("/competitionInst")
//	public String competitionInst(@ModelAttribute Competition vo , HttpSession session) throws Exception {
//		String nickname = (String) session.getAttribute("nickname");
//		
//		service.insert(vo);
//		
//		
//		return "redirect: /indexUsrView";
//	}
	
//	@RequestMapping("/competitionInst")
//	public String competitionInst(Competition dto, HttpSession session) throws Exception {
//	    System.out.println(dto.getType());
//	    
//	    // 세션에서 닉네임 정보 가져오기
//	    String sessionNickname = (String) session.getAttribute("sessionNickname");
//	    
//	    // 작성자 정보 설정
//	    dto.setWriter(sessionNickname);
//	    
//	    // service 호출
//	    service.insert(dto);
//	    
//	    return "redirect:/indexUsrView"; // 경로 앞의 공백 제거
//	}
	
//	@RequestMapping("/competitionInst")
//	public String competitionInst(Competition vo, HttpSession session) throws Exception {
//	    System.out.println(vo.getType());
//	    
//	    // 세션에서 닉네임 정보 가져오기
//	    String sessionNickname = (String) session.getAttribute("sessionNickname");
//	    
//	    // 작성자 정보 설정
//	    vo.setWriter(sessionNickname);
//	    
//	    // service 호출
//	    service.insert(vo);
//	    
//	    return "redirect:/indexUsrView"; // 경로 앞의 공백 제거
//	}


	
	@RequestMapping("/competitionUpdt")
	public String competitionUpdt(Competition dto) throws Exception {

		// service 호출
		service.update(dto);

		return "redirect: /indexUsrView";
	}
	
	@RequestMapping("/competitionDele")
	public String competitionDele(Competition dto) {

		// service 호출
		service.delete(dto);
		
		return "redirect: /indexUsrView";
	}
	
	
	@RequestMapping("/competitionUele")
	public String competitionUele(Competition dto) { 	

		// service 호출
		service.uelete(dto);
		
		return "redirect: /indexUsrView";
	}
	

	
	
}
