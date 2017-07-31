package kr.hotel.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.hotel.domain.MemberCommand;

public interface MemberMapper {

	@Insert("INSERT INTO h_member(mem_id) VALUES(#{mem_id})")
	public void insert(MemberCommand member);
	@Insert("INSERT INTO h_member_detail(mem_num, mem_id, mem_pw, mem_lastname, mem_firstname, mem_birth, mem_email, mem_p_cell, mem_h_cell, mem_zipcode, mem_addr1, mem_addr2, mem_regdate) VALUES(h_member_seq.nextval, #{mem_id}, #{mem_pw}, #{mem_lastname}, #{mem_firstname}, #{mem_birth}, #{mem_email}, #{mem_p_cell}, #{mem_h_cell, jdbcType=VARCHAR}, #{mem_zipcode}, #{mem_addr1}, #{mem_addr2}, sysdate)")
	public void insertDetail(MemberCommand member);
	@Select("SELECT * FROM h_member m LEFT OUTER JOIN h_member_detail d ON m.mem_id=d.mem_id WHERE m.mem_id=#{mem_id}")
	public MemberCommand selectMember(String mem_id);
	
	public void update(MemberCommand member);
	
	public void delete(String mem_id);
	
	public void deleteDetail(String mem_id);
	
}
