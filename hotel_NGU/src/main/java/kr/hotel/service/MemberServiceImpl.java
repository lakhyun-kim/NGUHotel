package kr.hotel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.MemberMapper;
import kr.hotel.domain.MemberCommand;
import kr.hotel.domain.MemberPointCommand;

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
		// 포인트 목록 삭제
		memberMapper.deleteMemberPoint(mem_id);
		// 탈퇴회원 0으로 UPDATE
		memberMapper.delete(mem_id);
		// 회원정보 삭제
		memberMapper.deleteDetail(mem_id);
	}

	@Override
	public List<MemberCommand> getMemberList(Map<String, Object> map) {
		return memberMapper.getMemberList(map);
	}

	@Override
	public int getMemberCount() {
		return memberMapper.getMemberCount();
	}

	@Override
	public void updatePwd(MemberCommand member) {
		memberMapper.updatePwd(member);
	}

	@Override
	public MemberCommand selectFindId(MemberCommand member) {
		return memberMapper.selectFindId(member);
	}

	@Override
	public MemberCommand selectFindPwd(MemberCommand member) {
		return memberMapper.selectFindPwd(member);
	}

	@Override
	public List<MemberPointCommand> getMemberPointList(Map<String, Object> map) {
		return memberMapper.getMemberPointList(map);
	}

	@Override
	public int getMemberPointCount() {
		return memberMapper.getMemberPointCount();
	}

}
