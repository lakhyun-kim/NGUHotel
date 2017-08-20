package kr.hotel.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.hotel.domain.EventCommand;
import kr.hotel.service.EventService;
import kr.hotel.service.GpackService;

@Controller
public class MainController {

	@Resource
	private GpackService gpackService;

	@Resource
	private EventService eventService;
	
	@RequestMapping("/main/main.do")
	public ModelAndView main() {
		
		
		
		java.util.List<EventCommand> list = eventService.list();
		
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		
		return mav;
	}
}
