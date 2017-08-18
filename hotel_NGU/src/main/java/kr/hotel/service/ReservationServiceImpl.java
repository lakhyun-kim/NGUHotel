package kr.hotel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.ReservationMapper;
import kr.hotel.domain.GuestCommand;
import kr.hotel.domain.GuestRoomCommand;
import kr.hotel.domain.GueststoreCommand;
import kr.hotel.domain.PaymentCommand;
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

	@Override
	public List<GueststoreCommand> list() {
		
		return reservationMapper.list();
	}

	@Override
	public GueststoreCommand selectGuest(int gue_num) {
		
		return reservationMapper.selectGuest(gue_num);
	}

	@Override
	public void insertPayment(PaymentCommand payment) {
		reservationMapper.insertPayment(payment);
		
	}

	@Override
	public ReservationCommand selectrsv(int res_num) {
		
		return reservationMapper.selectrsv(res_num);
	}

	@Override
	public int selecseq() {
		
		return reservationMapper.selecseq();
	}

	@Override
	public int selecseq1() {
		
		return reservationMapper.selecseq1();
	}

	@Override
	public void room_res_insert(GuestRoomCommand guestroomCommand) {
		reservationMapper.room_res_insert(guestroomCommand);
		
	}

	@Override
	public List<GuestRoomCommand> roomlist() {
		
		return reservationMapper.roomlist();
	}

	@Override
	public List<GueststoreCommand> storelist() {
		
		return reservationMapper.storelist();
	}

	@Override
	public List<GueststoreCommand> SearchroomList(Map<String, Object> map) {
		
		return reservationMapper.SearchroomList(map);
	}

	@Override
	public List<ReservationCommand> Rsvlist() {
		
		return reservationMapper.Rsvlist();
	}
	
	@Override
	   public List<GuestRoomCommand> sel_room_list(int res_num) {
	      
	      return reservationMapper.sel_room_list(res_num);
	   }

	   @Override
	   public void delete_room(int res_num) {
	      reservationMapper.delete_room(res_num);
	   }
	   @Override
	   public void delete_reservation(int res_num) {
	      reservationMapper.delete_reservation(res_num);
	      
	   }

	   @Override
	   public void delete_pay(int res_num) {
	      reservationMapper.delete_pay(res_num);
	      
	   }
	

}
