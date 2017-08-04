package kr.hotel.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.ReservationMapper;
import kr.hotel.domain.ReservationCommand;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService{
	
	@Resource
	private ReservationMapper reservationMapper;
	
	@Override
	public void insertReservation(ReservationCommand reservation) {
		reservationMapper.insertReservation(reservation);
		
	}

	@Override
	public void deleteReservation(int res_num) {
		reservationMapper.deleteReservation(res_num);
		
	}

}
