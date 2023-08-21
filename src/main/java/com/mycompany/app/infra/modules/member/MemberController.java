 package com.mycompany.app.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	private HttpSession httpSession;

	
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
		
		List<Member> selectUploadedList = service.selectUploaded(vo);
		model.addAttribute("listUploaded", selectUploadedList);
		
		
		
		

		return "xdm/infra/member/memberXdmForm";
	}
	
	
	@RequestMapping("/memberUpdt")
	public String memberUpdt(Member dto) throws Exception {
		
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
	public String memberAdd(Member dto) throws Exception {

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
	 
    @RequestMapping("/usrRegsiterForm") 
    public String usrRegsiterForm() {
	   return "usr/infra/member/usrRegsiterForm"; }
    
	@ResponseBody
	@RequestMapping("/loginXdmProc")
	public Map<String, Object> loginXdmProc(MemberVo vo , HttpSession session) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectXdm(vo);
		
		if(rtMember != null) {
			
			 // 로그인 성공 시 세션에 사용자 정보 저장
	        session.setAttribute("sessionId", vo.getId());
	        
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt","fail");
		}
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping("/loginUsrProc")
	public Map<String, Object> loginUsrProc(MemberVo vo , HttpSession session) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectUsr(vo);
		
		if(rtMember != null) {
			
			 // 로그인 성공 시 세션에 사용자 정보 저장
	        session.setAttribute("sessionId", vo.getId());
	        session.setAttribute("sessionNickname", rtMember.getNickname());
	        //  로그인 성공 시에만 실제 회원 정보에서 가져온 닉네임을 세션에 저장
	        
	        System.out.println(session.getAttribute("sessionId"));
	        System.out.println(session.getAttribute("sessionNickname"));
	        
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt","fail");
		}
		
		return returnMap;
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/logout") public String logout(HttpSession session) { //
	 * 세션에서 사용자 정보를 제거하여 로그아웃 처리 session.removeAttribute("id");
	 * 
	 * return "redirect:indexUsrView"; // 로그아웃 후에 메인 페이지로 리다이렉트 }
	 */
	
	
	@ResponseBody
	@RequestMapping("/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		System.out.println(httpSession.getAttribute("sessionId"));
		httpSession.invalidate();
		
		returnMap.put("rt", "success");
	    return returnMap; // 로그아웃 후에 메인 페이지로 리다이렉트
	}
		
//	관리자 로그인
	@RequestMapping("/xdmLoginForm")
	public String xdmLoginForm() {
		return "xdm/infra/member/xdmLoginForm";		
	}
	
	// id 중복체크

	
	/**		alt + shift + j  (함수 간 주석 처리, 각각에 대한 메모가능)
	 * @param vo
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/checkIdProc" )
	public Map<String, Object> checkIdProc(MemberVo vo) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int rtNum = service.selectOneCheckId(vo);
		
		if(rtNum == 0) {
			returnMap.put("rt", "available");
	        
		} else {
			returnMap.put("rt","unavailable");
		}
		
		return returnMap;
	}
	
//	/**
//	 * 카카오 로그인 API
//	 * [GET] /app/login/kakao
//	 * @return BaseResponse<String>
//	 */
//	@ResponseBody
//	@GetMapping("/kakao")
//	public BaseResponse<PostLoginRes> kakaoLogin(@RequestParam(required = false) String code) {
//	    try {
//	        // URL에 포함된 code를 이용하여 액세스 토큰 발급
//	        String accessToken = loginService.getKakaoAccessToken(code);
//	        System.out.println(accessToken);
//
//	        // 액세스 토큰을 이용하여 카카오 서버에서 유저 정보(닉네임, 이메일) 받아오기
//	        HashMap<String, Object> userInfo = loginService.getUserInfo(accessToken);
//	        System.out.println("login Controller : " + userInfo);
//
//	        PostLoginRes postLoginRes = null;
//
//	        // 만일, DB에 해당 email을 가지는 유저가 없으면 회원가입 시키고 유저 식별자와 JWT 반환
//	        // 현재 카카오 유저의 전화번호를 받아올 권한이 없어서 테스트를 하지 못함.
//	        if(loginProvider.checkEmail(String.valueOf(userInfo.get("email"))) == 0) {
//	            //PostLoginRes postLoginRes = 해당 서비스;
//	            return new BaseResponse<>(postLoginRes);
//	        } else {
//	            // 아니면 기존 유저의 로그인으로 판단하고 유저 식별자와 JWT 반환
//	            postLoginRes = loginProvider.getUserInfo(String.valueOf(userInfo.get("email")));
//	            return new BaseResponse<>(postLoginRes);
//	        }
//	    } catch (BaseException exception) {
//	        return new BaseResponse<>((exception.getStatus()));
//	    }
//	}
	
	
	

}