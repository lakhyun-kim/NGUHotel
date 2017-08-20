package kr.hotel.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.hotel.domain.MemberCommand;
import kr.hotel.domain.MemberPointCommand;
import kr.hotel.domain.QnaCommand;
import kr.hotel.domain.ReservationCommand;

public interface MemberMapper {

	// 회원관리
	@Insert("INSERT INTO h_member(mem_id) VALUES(#{mem_id})")
	public void insert(MemberCommand member);
	@Insert("INSERT INTO h_member_detail(mem_num, mem_id, mem_pw, mem_lastname, mem_firstname, mem_birth, mem_email, mem_p_cell, mem_h_cell, mem_zipcode, mem_addr1, mem_addr2, mem_regdate) VALUES(h_member_seq.nextval, #{mem_id}, #{mem_pw}, #{mem_lastname}, #{mem_firstname}, #{mem_birth}, #{mem_email}, #{mem_p_cell}, #{mem_h_cell, jdbcType=VARCHAR}, #{mem_zipcode}, #{mem_addr1}, #{mem_addr2}, sysdate)")
	public void insertDetail(MemberCommand member);
	@Select("SELECT * FROM h_member m LEFT OUTER JOIN h_member_detail d ON m.mem_id=d.mem_id LEFT OUTER JOIN h_level l ON d.mem_lev_num=l.mem_lev_num WHERE m.mem_id=#{mem_id}")
	public MemberCommand selectMember(String mem_id);
	@Update("UPDATE h_member_detail SET mem_birth=#{mem_birth}, mem_email=#{mem_email}, mem_p_cell=#{mem_p_cell}, mem_h_cell=#{mem_h_cell, jdbcType=VARCHAR}, mem_zipcode=#{mem_zipcode}, mem_addr1=#{mem_addr1}, mem_addr2=#{mem_addr2} WHERE mem_id=#{mem_id}")
	public void update(MemberCommand member);
	@Update("UPDATE h_member SET auth=0 WHERE mem_id=#{mem_id}")
	public void delete(String mem_id);
	@Delete("DELETE FROM h_member_detail WHERE mem_id=#{mem_id}")
	public void deleteDetail(String mem_id);
	
	// 회원 목록
	public List<MemberCommand> getMemberList(Map<String,Object> map);
	@Select("SELECT count(*) FROM h_member")
	public int getMemberCount();
	
	// 비밀번호 변경
	@Update("UPDATE h_member_detail SET mem_pw=#{mem_pw} WHERE mem_id=#{mem_id}")
	public void updatePwd(MemberCommand member);
	
	// 아이디 찾기
	@Select("SELECT mem_id, mem_num FROM h_member_detail WHERE mem_lastname=#{mem_lastname} AND mem_firstname=#{mem_firstname} AND mem_email=#{mem_email}")
	public MemberCommand selectFindId(MemberCommand member);
	
	// 비밀번호 찾기
	@Select("SELECT mem_pw FROM h_member_detail WHERE (mem_id=#{mem_id} OR mem_num=#{mem_num}) AND mem_lastname=#{mem_lastname} AND mem_firstname=#{mem_firstname} AND mem_email=#{mem_email}")
	public MemberCommand selectFindPwd(MemberCommand member);
	
	// 포인트 목록
	public List<MemberPointCommand> getMemberPointList(Map<String, Object> map);
	@Select("SELECT count(*) FROM h_point WHERE mem_id=#{mem_id}")
	public int getMemberPointCount(String mem_id);
	
	// 포인트 목록 삭제 - 회원 삭제하기위해 자식이 남아있으면 안됨
	@Delete("DELETE FROM h_point WHERE mem_id=#{mem_id}")
	public void deleteMemberPoint(String mem_id);
	
	// 포인트 1개 검색
	@Select("SELECT * FROM h_point WHERE mem_id=#{mem_id}")
	public MemberPointCommand selectMemberPoint(String mem_id);
	
	// 마이페이지 예약확인
	public List<ReservationCommand> selectMemberReservation(Map<String, Object> map);
	@Select("SELECT count(*) FROM h_reservation WHERE mem_id=#{mem_id}")
	public int getMemberReservation(String mem_id);
	
	// 비회원 예약확인
	@Select("SELECT * FROM h_payment a LEFT OUTER JOIN h_reservation d ON a.res_num=d.res_num LEFT OUTER JOIN h_guest_room c ON a.res_num=c.res_num WHERE a.res_num=#{res_num} AND a.pay_firstname=#{pay_firstname} AND a.pay_lastname=#{pay_lastname}")
	public ReservationCommand selectGuestReservation(Map<String, Object> map);

	// 마이페이지 문의내역목록
	public List<QnaCommand> selectMemberQna(Map<String, Object> map);
	@Select("SELECT count(*) FROM h_qna WHERE mem_id=#{mem_id}")
	public int getMemberQna(String mem_id);
	
	// 회원 포인트 적립/사용
	@Update("UPDATE h_member_detail SET mem_point=#{mem_point} WHERE mem_id=#{mem_id}")
	public void updatePoint(Map<String, Object> map);
	
	// 회원 포인트 테이블 insert
	@Insert("INSERT INTO h_point(mem_poi_num, mem_poi_usesave, mem_poi_history, mem_poi_price, mem_poi_usepoint, mem_poi_savepoint, mem_poi_regdate, mem_id ) VALUES(h_point_seq.nextval, #{mem_poi_usesave}, #{mem_poi_history}, #{mem_poi_price}, #{mem_poi_usepoint, jdbcType=INTEGER}, #{mem_poi_savepoint, jdbcType=INTEGER}, sysdate, #{mem_id})")
	public void insertPoint(MemberPointCommand memberPointCommand);
	
	// 회원 사용 누적금액
	@Update("UPDATE h_member_detail SET mem_accumulate=#{mem_accumulate} WHERE mem_id=#{mem_id}")
	public void updateMoney(Map<String, Object> moneymap);
	
	// 회원 등급변환
	@Update("UPDATE h_member_detail SET mem_lev_num=#{mem_lev_num} WHERE mem_id=#{mem_id}")
	public void updateLev(Map<String, Object> map);
	
}
