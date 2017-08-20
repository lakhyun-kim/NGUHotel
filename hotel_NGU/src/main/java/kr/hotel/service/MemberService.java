package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.MemberCommand;
import kr.hotel.domain.MemberPointCommand;
import kr.hotel.domain.QnaCommand;
import kr.hotel.domain.ReservationCommand;

@Transactional
public interface MemberService {

	public void insert(MemberCommand member);

	@Transactional(readOnly=true)
	public MemberCommand selectMember(String mem_id);
	
	public void update(MemberCommand member);
	
	public void delete(String mem_id);

	// 회원목록
	@Transactional(readOnly=true)
	public List<MemberCommand> getMemberList(Map<String,Object> map);
	@Transactional(readOnly=true)
	public int getMemberCount();
	
	// 비밀번호 변경
	public void updatePwd(MemberCommand member);

	// 아이디 찾기
	@Transactional(readOnly=true)
	public MemberCommand selectFindId(MemberCommand member);

	// 비밀번호 찾기
	@Transactional(readOnly=true)
	public MemberCommand selectFindPwd(MemberCommand member);

	// 포인트 목록
	@Transactional(readOnly=true)
	public List<MemberPointCommand> getMemberPointList(Map<String, Object> map);
	@Transactional(readOnly=true)
	public int getMemberPointCount(String mem_id);

	// 포인트 1개 검색
	@Transactional(readOnly=true)
	public MemberPointCommand selectMemberPoint(String mem_id);
	
	// 마이페이지 예약확인
	@Transactional(readOnly=true)
	public List<ReservationCommand> selectMemberReservation(Map<String, Object> map);
	@Transactional(readOnly=true)
	public int getMemberReservation(String mem_id);

	// 비회원 예약확인
	@Transactional(readOnly=true)
	public ReservationCommand selectGuestReservation(Map<String, Object> map);
	
	// 마이페이지 문의내역목록
	@Transactional(readOnly=true)
	public List<QnaCommand> selectMemberQna(Map<String, Object> map);
	@Transactional(readOnly=true)
	public int getMemberQna(String mem_id);
	
	// 회원 포인트 적립/사용
	public void updatePoint(Map<String, Object> map);
	
	// 회원 포인트 테이블 insert
	public void insertPoint(MemberPointCommand memberPointCommand);

	// 회원 누적금액 
	public void updateMoney(Map<String, Object> moneymap);
	
	// 회원 등급 변환
	public void updateLev(Map<String, Object> map);
	
}
