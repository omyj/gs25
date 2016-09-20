package kr.ac.sungkyul.gs25.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.sungkyul.gs25.service.TestService;
import kr.ac.sungkyul.gs25.vo.TestVo;

@Controller
@RequestMapping("/event")

public class EventController {
	@RequestMapping("/check")
		public String checkForm(){
			return "sub_page/event_check";
		
	}
	@RequestMapping("/test")
	public String join(@ModelAttribute TestVo vo){
		System.out.println(vo.getTest1());
		System.out.println(vo.getTest2());
//		userService.join(vo);
		return "redirect:/event/check";
	}
//	@RequestMapping(value = "/test", method = RequestMethod.POST)
//		public String test(
//				@RequestParam(value = "test1") String test1,
//				@RequestParam(value = "test1") String test2
//				){
//		
//		TestVo dataTest = TestService.insert(test1, test2);
//		
//			return null;
//		
//	}
}


//@RequestMapping(value= "/login", method= RequestMethod.POST)
//public String login(
//		HttpSession session,
//		@RequestParam(value= "email", required=false, defaultValue="") String email,
//		@RequestParam(value="password", required=false, defaultValue="") String password){
//	
//	UserVo authUser =  userService.login(email,  password);
//	
//	if(authUser == null){
//		return "redirect:/user/loginform";
//	}
//	
//	//인증성공
//	session.setAttribute("authUser",authUser);
//	return "redirect:/main";
//}