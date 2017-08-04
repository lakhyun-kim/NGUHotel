package kr.hotel.dao;

import kr.hotel.domain.ReservationCommand;

public interface ReservationMapper {

	//예약 insert
	
	public void insertReservation(ReservationCommand reservation);
	
	//객실 검색 select
	//public ReservationCommand select
	
	//예약 취소 delete
	public void deleteReservation(int res_num);
	
	
}
