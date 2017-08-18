package kr.hotel.dao.gpack;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.hotel.domain.GpackCommand;

public interface GpackMapper {

	@Select("SELECT gpackage_seq.nextval FROM dual")
	public int getGpa_seq();
	
	public List<GpackCommand> gpList(Map<String, Object> map);
	
	@Insert("INSERT INTO h_gpackage"
		  + "(gpa_seq,gpa_filename,gpa_upfile,gpa_title,gpa_term,gpa_money,"
		  + "cnt1,cnt2,cnt3,gpa_demain,gpa_dmname,gpa_depro,gpa_dpname,"
		  + "gpa_reterm,gpa_rtname,mem_id,norr) VALUES "
		  + "(#{gpa_seq},#{gpa_filename},#{gpa_upfile},"
		  + "#{gpa_title},#{gpa_term},#{gpa_money},#{cnt1},#{cnt2},#{cnt3},"
		  + "#{gpa_demain},#{gpa_dmname},#{gpa_depro},#{gpa_dpname},"
		  + "#{gpa_reterm},#{gpa_rtname},"
		  + "#{mem_id},#{norr})")
	public void gpInsert(GpackCommand gp);
	
	@Select("SELECT * FROM h_gpackage WHERE gpa_seq=#{gpa_seq}")
	public GpackCommand selectGpack(int gpa_seq);
	
	@Update("UPDATE h_gpackage SET "
		  + "gpa_title=#{gpa_title},gpa_term=#{gpa_term},gpa_money=#{gpa_money},"
		  + "gpa_upfile=#{gpa_upfile},gpa_filename=#{gpa_filename},"
		  + "gpa_demain=#{gpa_demain},gpa_dmname=#{gpa_dmname},"
		  + "gpa_depro=#{gpa_depro},gpa_dpname=#{gpa_dpname},"
		  + "gpa_reterm=#{gpa_reterm},gpa_rtname=#{gpa_rtname},"
		  + "cnt1=#{cnt1},cnt2=#{cnt2},cnt3=#{cnt3} WHERE gpa_seq=#{gpa_seq}")
	public void gpUpdate(GpackCommand gp);
	
	@Delete("DELETE FROM h_gpackage WHERE gpa_seq=#{gpa_seq}")
	public void gpDelete(int gpa_seq);
	public int getRowCount(Map<String, Object> map);
}








