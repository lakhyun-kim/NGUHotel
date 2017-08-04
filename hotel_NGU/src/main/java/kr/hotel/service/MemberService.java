package kr.hotel.service;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.MemberCommand;

@Transactional
public interface MemberService {

	public void insert(MemberCommand member);

	@Transactional(readOnly=true)
	public MemberCommand selectMember(String mem_id);
	
	public void update(MemberCommand member);
	
	public void delete(String mem_id);

	// 비밀번호 변경
	public void updatePwd(MemberCommand member);
	
}
