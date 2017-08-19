package kr.hotel.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.hotel.domain.GuestRoomCommand;
import kr.hotel.domain.GueststoreCommand;
import kr.hotel.domain.PaymentCommand;
import kr.hotel.domain.ReservationCommand;

public interface ReservationMapper {

	//예약 insert reservation 테이블, payment 테이블

	public void insertReservation(ReservationCommand reservation);
	
	@Select("SELECT reservation_seq.NEXTVAL FROM dual")
	public int selecseq1();
	
	public int selecseq();
	
	@Select("SELECT * FROM h_reservation WHERE res_num=#{res_num}")
	public ReservationCommand selectrsv(int res_num);
	
	@Insert("INSERT INTO h_payment(pay_num, mem_id, pay_cardtype, pay_cardnum, pay_p_cell, pay_h_cell, pay_lastname, pay_firstname, pay_email, pay_card_mon, pay_card_year, res_num) VALUES(payment_seq.nextval, #{mem_id}, #{pay_cardtype}, #{pay_cardnum}, #{pay_p_cell}, #{pay_h_cell}, #{pay_lastname}, #{pay_firstname}, #{pay_email}, #{pay_card_mon}, #{pay_card_year}, #{res_num})")
	public void insertPayment(PaymentCommand payment);
	
	
	//예약 취소 delete
	public void deleteReservation(int res_num);
	
	
	//객실 검색 리스트
	@Select("SELECT * FROM h_guest_store ORDER BY gue_num desc")
	public List<GueststoreCommand> list();
	
	@Select("SELECT * FROM h_guest_store WHERE gue_num=#{gue_num}")
	public GueststoreCommand selectGuest(int gue_num);
	
	// guest_room 부분
	@Insert("INSERT INTO h_guest_room(res_num, gue_title, res_in, res_out) VALUES(#{res_num}, #{gue_title}, #{res_in}, #{res_out})")
	public void room_res_insert(GuestRoomCommand guestroomCommand);
	
	
	//마지막 예약 확인페이지
	
	//예약된 방 리스트 뽑기
	@Select("SELECT * FROM h_guest_room")
	public List<GuestRoomCommand> roomlist();
	
	@Select("SELECT * FROM h_guest_store")
	public List<GueststoreCommand> storelist();
											//DB 체크인				 DB 체크아웃 
	@Select("SELECT * FROM h_guest_store WHERE NOT gue_title IN (SELECT gue_title FROM h_guest_room WHERE res_out>=#{check_in} AND res_in<=#{check_out})")
	public List<GueststoreCommand> SearchroomList(Map<String, Object> map);
	
	
	//방 전체 리스트
	@Select("SELECT * FROM h_reservation ORDER BY res_num DESC")
	public List<ReservationCommand> Rsvlist();
	
	   @Select("SELECT res_num FROM h_guest_room WHERE res_out < sysdate")
	   public List<GuestRoomCommand> sel_room_list(int res_num);
	   
	   
	   
	   @Delete("DELETE FROM h_guest_room WHERE res_num=#{res_num}")
	   public void delete_room(int res_num);
	   
	   
	   @Delete("DELETE FROM h_payment WHERE res_num=#{res_num}")
	   public void delete_pay(int res_num);
	   
	   
	   @Delete("DELETE FROM h_reservation WHERE res_num=#{res_num}")
	   public void delete_reservation(int res_num);
	   
}






















