package kr.hotel.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.hotel.domain.MemberCommand;
import kr.hotel.domain.ReservationCommand;
import kr.hotel.service.MemberService;
import kr.hotel.service.ReservationService;

@Controller
public class ReservationController {

	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private ReservationService reservationService;
	
	@Resource
	private MemberService memberService;
	
	
	
	//예약진행
	@RequestMapping(value="/reservation/reservation.do")
	public String ReservationForm(){
		
		
	
		
		
		return "reservation";
	}
	
	@RequestMapping(value="/reservation/reservation_step2.do", method=RequestMethod.POST)
	public String Ressubmit(ReservationCommand reservationCommand, HttpSession session, Model model){
		
		
		String mem_id = (String)session.getAttribute("user_id");
		
		
		if(mem_id != null){
		
			MemberCommand memberCommand = memberService.selectMember(mem_id);
			model.addAttribute("command", memberCommand);
			reservationCommand.setMem_id(mem_id);
			
			System.out.println(reservationCommand);
			
		}
				
		
		
		
//		reservationCommand.setMem_id(mem_id);
//		
//		System.out.println(reservationCommand);
		
		
		
		
		return "reservation_step2";
		
	}
	
	

	
	
	
}



















