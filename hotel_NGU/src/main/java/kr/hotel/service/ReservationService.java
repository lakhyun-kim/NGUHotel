package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.GuestCommand;
import kr.hotel.domain.GuestRoomCommand;
import kr.hotel.domain.GueststoreCommand;
import kr.hotel.domain.PaymentCommand;
import kr.hotel.domain.ReservationCommand;

@Transactional
public interface ReservationService {

	//예약 insert
	
		public void insertReservation(ReservationCommand reservation);
		
		@Transactional(readOnly=true)
		public int selecseq1();
		
		@Transactional(readOnly=true)
		public int selecseq();
		
		@Transactional(readOnly=true)
		public ReservationCommand selectrsv(int res_num);
		
		public void insertPayment(PaymentCommand payment);
		
		
		
		//예약 취소 delete
		public void deleteReservation(int res_num);
	
		
		//예약자가 검색한 객실리스트
		@Transactional(readOnly=true)
		public List<GueststoreCommand> list();
		
		@Transactional(readOnly=true)
		public GueststoreCommand selectGuest(int gue_num);
		
		//guest_room 테이블
		public void room_res_insert(GuestRoomCommand guestroomCommand);
		
		@Transactional(readOnly=true)
		public List<GuestRoomCommand> roomlist();
		
		@Transactional(readOnly=true)
		public List<GueststoreCommand> storelist();
		
		@Transactional(readOnly=true)
		public List<GueststoreCommand> SearchroomList(Map<String, Object> map);
		
		@Transactional(readOnly=true)
		public List<ReservationCommand> Rsvlist();
		//삭제를 위한 검색
      @Transactional(readOnly=true)
      public List<GuestRoomCommand> sel_room_list(int res_num);
      
      public void delete_room(int res_num);
      
      public void delete_pay(int res_num);
      
      public void delete_reservation(int res_num);
}
