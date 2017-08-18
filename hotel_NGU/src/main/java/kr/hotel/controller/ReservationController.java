package kr.hotel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.hotel.domain.GuestCommand;
import kr.hotel.domain.GuestRoomCommand;
import kr.hotel.domain.GueststoreCommand;
import kr.hotel.domain.MemberCommand;
import kr.hotel.domain.PaymentCommand;
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
	
	
	/*//예약진행 첫번째 페이지
	@RequestMapping(value="/reservation/reservation.do")
	public String ReservationForm(GuestCommand guestCommand){
		
	
		
		//총 골의 갯수
		List<GuestCommand> list = null;
		
		list = reservationService.selectGuest();
		
		
		
		return "reservation";
	}*/
	@RequestMapping(value="/reservation/reservation.do")
	public ModelAndView process1(GueststoreCommand guestCommand,
			GuestRoomCommand guestroomCommand){
		
		
		return new ModelAndView("reservation"); 
	}
	
	
	@RequestMapping(value="/reservation/reservationSearch.do")
	@ResponseBody
	public Map<String, Object> process2(@RequestParam("check_in") String check_in,
										@RequestParam("check_out") String check_out){
		
		System.out.println(check_in +", "+check_out);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
	
		map.put("check_in", check_in);
		map.put("check_out", check_out);
		
		List<GueststoreCommand> list;
		
		list = reservationService.SearchroomList(map);
		
		
		// 날짜 선택시 예약된 방의 날짜와 비교해서 검색에서 제외
		List<GuestRoomCommand> roomlist = null;
		
		//예약된 방의 리스트
		roomlist = reservationService.roomlist();
		
		
		
		
		
		
		
		/*list = reservationService.list();*/
		
		System.out.println(list);
		
		//리스트출력
		//mav.addObject("list", list);
		
		/*map.put("list", list);*/
		map.put("roomList", roomlist);
		map.put("list", list);
		
		
		
		return map;
	
	}
	
	@RequestMapping(value="/reservation/reservation_step2.do", method=RequestMethod.POST)
	public String hotelsubmit(ReservationCommand reservationCommand, 
			PaymentCommand paymentCommand,
			GueststoreCommand guestCommand,
			HttpSession session, Model model,
			@RequestParam("res_room_type") String res_room_type,
			@RequestParam("cost") int cost,
			@RequestParam("gue_num") int gue_num){
		
		
		GueststoreCommand gueCommand = reservationService.selectGuest(guestCommand.getGue_num());
		
		String mem_id = (String)session.getAttribute("user_id");
		
		System.out.println(gueCommand.getGue_num());
		System.out.println(gueCommand.getGue_title());
		System.out.println(gueCommand.getGue_sel());
		/*res_room_type = res_room_type.replace(",", "");
		*/
		System.out.println(gueCommand.getGue_num());
		
		
		//객실의 이름과 , 가격, 객실번호
		model.addAttribute("gue_num", gue_num);
		model.addAttribute("res_room_type", res_room_type);
		model.addAttribute("cost", cost);
		model.addAttribute("article", guestCommand);
		
		
		if(mem_id != null){
			
			MemberCommand memberCommand = memberService.selectMember(mem_id);
			model.addAttribute("command", memberCommand);
			reservationCommand.setMem_id(mem_id);
				
			System.out.println(reservationCommand);
			
		
		}
		
		return "reservation_step2";
	}
	
	
	@RequestMapping(value="/reservation/reservation_step3.do", method=RequestMethod.POST)
	public String Ressubmit(ReservationCommand reservationCommand,
							PaymentCommand paymentCommand,
							GueststoreCommand guestCommand,
							HttpSession session, 
							Model model,
							GuestRoomCommand guestroomCommand
							){
		
		
		String mem_id = (String)session.getAttribute("user_id");
		

		//회원일 경우
		if(mem_id != null){
		
		
			reservationCommand.setMem_id(mem_id);
		
			System.out.println(reservationCommand);
			
			
		//회원이 아닌경우
		}else if(mem_id == null){
			
			reservationCommand.setMem_id("guest");
			
		}
		
		
		//reservation 테이블과 payment 테이블의 insert를 순차적으로 진행
		
		GueststoreCommand guCommand = reservationService.selectGuest(guestCommand.getGue_num());
		
		//예약테블에 객실번호 셋팅
		reservationCommand.setGue_num(guCommand.getGue_num());

		int res_num = reservationService.selecseq1();
		
		//예약 테이블 인서트
		reservationCommand.setRes_num(res_num);
		
		reservationService.insertReservation(reservationCommand);	
		
		//인서트후에 결제정보 테이블에 예약번호를 셋팅한다.	
		System.out.println("<<res_num>> : " + res_num);					
		paymentCommand.setRes_num(res_num);
		
		
		GueststoreCommand guestroomCommand2 = reservationService.selectGuest(guCommand.getGue_num());
		
		System.out.println(guestroomCommand2.getGue_title());
		//guest_room 테이블 객실 타이틀 셋팅
		guestroomCommand.setGue_title(guestroomCommand2.getGue_title());
		
		
		
		ReservationCommand reservation = reservationService.selectrsv(res_num);	
		
		System.out.println(reservation);
		
		//guest_room 테이블에 체크인, 체크아웃 날짜 세팅
		guestroomCommand.setRes_in(reservation.getRes_in());
		guestroomCommand.setRes_out(reservation.getRes_out());
		
		
		
		paymentCommand.setRes_num(res_num);
		/*paymentCommand.setMem_id((String)session.getAttribute("user_id"));*/
		paymentCommand.setMem_id(reservation.getMem_id());
		reservationService.insertPayment(paymentCommand);
		
		//게스트룸 테이블에 예약번호 세팅
		guestroomCommand.setRes_num(reservation.getRes_num());
		reservationService.room_res_insert(guestroomCommand);
		
		
	
		return "reservation_result";
	
	}
	
	@RequestMapping(value="/reservation/reservation_result.do", method=RequestMethod.POST)
	public String Resultsubmit(ReservationCommand reservationCommand,
								PaymentCommand paymentCommand,
								GueststoreCommand guestCommand,
								HttpSession session,
								GuestRoomCommand guestroomCommand
								){
		
		
		
		
		
		
		
		return "redirect:/main/main.do";
	}

	
	
	
	
}



















