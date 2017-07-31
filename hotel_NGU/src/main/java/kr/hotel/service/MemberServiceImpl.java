package kr.hotel.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.MemberMapper;
import kr.hotel.domain.MemberCommand;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Resource
	private MemberMapper memberMapper;
	
	@Override
	public void insert(MemberCommand member) {
		memberMapper.insert(member);
		memberMapper.insertDetail(member);
	}

	@Override
	public MemberCommand selectMember(String mem_id) {
		return memberMapper.selectMember(mem_id);
	}

	@Override
	public void update(MemberCommand member) {
		memberMapper.update(member);
	}

	@Override
	public void delete(String mem_id) {
		memberMapper.delete(mem_id);
	}

}
