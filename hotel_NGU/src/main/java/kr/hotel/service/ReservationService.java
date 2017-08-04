package kr.hotel.service;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.ReservationCommand;

@Transactional
public interface ReservationService {

	//예약 insert
	
		public void insertReservation(ReservationCommand reservation);
		
		//객실 검색 select
		//public ReservationCommand select
		
		//예약 취소 delete
		public void deleteReservation(int res_num);
	
}
