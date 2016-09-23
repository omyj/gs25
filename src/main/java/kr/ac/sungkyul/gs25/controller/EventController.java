package kr.ac.sungkyul.gs25.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.sungkyul.gs25.service.EventService;
import kr.ac.sungkyul.gs25.vo.EventVo;

@Controller
@RequestMapping("/event")

public class EventController {
	@Autowired
	EventService eventservice;
	
	
	@RequestMapping("/check")
		public String checkForm(Model model){
//			Event 삽입
//			eventservice.insertEvent(); 
			
//			Event 조회
			List<EventVo> vo = eventservice.selectEvent();
			System.out.println(vo);
			
			model.addAttribute("EventVo",vo);
			return "sub_page/event_check";
	}
	@RequestMapping("/test")
	public String testForm(){
		return "sub_page/send";
	}

	@RequestMapping(value = "/view")
		public String test(
				@RequestParam(value="test1", required=false, defaultValue="") String test, Model model){
//		int testInt = Integer.parseInt(test);			
		System.out.println("test: "+ test);
		
//		 if(testInt == 1 ){
//			 testString = "테스트 1";
//		 }else
//			 testString = "테스트 2";
		 model.addAttribute("testString", test);
			return "sub_page/test_view";
	}
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