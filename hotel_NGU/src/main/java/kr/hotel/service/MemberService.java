package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.MemberCommand;
import kr.hotel.domain.MemberPointCommand;

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
	public int getMemberPointCount();
	
}
