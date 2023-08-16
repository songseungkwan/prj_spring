package com.mycompany.app.infra.modules.competition;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.spot.Spot;
import com.mycompany.app.spot.SpotVo;

@Controller
public class CompetitionController {
	
	@Autowired
	CompetitionServiceImpl service;
	private HttpSession httpSession;
	
	// competitionXdmList
	@RequestMapping ("/competitionXdmList")
	public String competitionXdmList(@ModelAttribute("vo") CompetitionVo vo, Model model) {
		
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
	public String realTimeRecord() {
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
	


	

	
	@RequestMapping("/competitionInst")
	public String competitionInst(Competition dto) throws Exception {

		// service 호출
		service.insert(dto);
		
		return "redirect: /indexUsrView";
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
