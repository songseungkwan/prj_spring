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

import com.mycompany.app.hotel.Hotel;

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
		
//		// service 호출
//		service.insertCompetition(dto);
//		return "redirect: /indexUsrView";
		
		// service 호출
	    int result = service.insertCompetition(dto);

	    if (result > 0) {
	        // 데이터 삽입 성공
	        return "redirect:/indexUsrView";
	    } else {
//	        // 데이터 삽입 실패
//	    	// 데이터 삽입 실패 시 에러 메시지를 세션에 저장하고 리다이렉트
//	        httpSession.setAttribute("errorMsg", "등록 실패");
	    }
	    
	    return "redirect:/indexUsrView"; // 또는 다른 적절한 처리
	}
	



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
