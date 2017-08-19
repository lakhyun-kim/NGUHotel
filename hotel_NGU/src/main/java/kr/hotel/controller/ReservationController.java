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
import kr.hotel.domain.MemberPointCommand;
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
   
   
   @RequestMapping(value="/reservation/reservation.do")
   public ModelAndView process1(GueststoreCommand guestCommand,
         GuestRoomCommand guestroomCommand,
         PaymentCommand paymentCommand,
         ReservationCommand reservationCommand){ 
      
      
      List<GuestRoomCommand> list = reservationService.sel_room_list(guestroomCommand.getRes_num());
      
      
       
      
      System.out.println(list);
      
      
      
      //체크아웃 날짜가 현재 날짜보다 앞일 경우
      for(int i=0 ; i < list.size(); i++){
          int res_num = list.get(i).getRes_num();
          
          System.out.println(res_num);
          
          paymentCommand.setRes_num(res_num);
          reservationService.delete_pay(res_num);
          
          reservationCommand.setRes_num(res_num);
          
          guestroomCommand.setRes_num(res_num);
          reservationService.delete_room(res_num);
          
         
          reservationService.delete_reservation(res_num);
    
      }
      
       
       
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
      
         
      
      /*System.out.println(list);*/
      
      //리스트출력      
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
                     GuestRoomCommand guestroomCommand, @RequestParam int mem_point){
      
	   // 포인트 예약테이블에 셋팅
	   reservationCommand.setRes_point(mem_point);
	   
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
      paymentCommand.setRes_num(res_num);
      
      
      GueststoreCommand guestroomCommand2 = reservationService.selectGuest(guCommand.getGue_num());
      
      //guest_room 테이블 객실 타이틀 셋팅
      guestroomCommand.setGue_title(guestroomCommand2.getGue_title());
      
      ReservationCommand reservation = reservationService.selectrsv(res_num);   
      
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
      
	   // 기존 포인트 뺴내옴
	   MemberCommand member = memberService.selectMember(mem_id);
	   
	   MemberPointCommand pointCommand = new MemberPointCommand();
	   
	   pointCommand.setMem_id(mem_id);
	   pointCommand.setMem_poi_history("객실");
	   pointCommand.setMem_poi_price(reservationCommand.getRes_total());
	   // 적립/사용 포인트
	   int after_point = 0;
	   
	   if(mem_point == 0) {
		   pointCommand.setMem_poi_usesave("적립");
		   
		   // 회원 포인트 적립
		   after_point = member.getMem_point() + (reservationCommand.getRes_total() * 3/100);

		   pointCommand.setMem_poi_savepoint(reservationCommand.getRes_total() * 3/100);
	   } else {
		   // 사용
		   pointCommand.setMem_poi_usesave("사용");
		   pointCommand.setMem_poi_usepoint(mem_point);
		   
		   // 회원의 포인트 사용
		   after_point = member.getMem_point() - mem_point;
		   
	   }

	   Map<String, Object> map = new HashMap<String, Object>();
	   
	   map.put("mem_point", after_point);
	   map.put("mem_id", mem_id);
	   
	   // 회원 포인트 적립/사용
	   memberService.updatePoint(map);
	   
	   // 포인트 테이블에 insert 합니다.
	   memberService.insertPoint(pointCommand);
	   
   
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


















