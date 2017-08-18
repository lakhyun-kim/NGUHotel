package kr.hotel.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.hotel.domain.WedingCommand;

public interface WedingMapper {
	public List<WedingCommand> list(Map<String,Object> map);
	
	public int getRowCount(Map<String, Object> map);
	
	@Insert("INSERT INTO h_weding(wed_seq,wed_realtitle,wed_title,wed_retitle,"
			+ "wed_topname,wed_midname,wed_lowname,wed_extraname,"
			+ "wed_topload,wed_midload,wed_lowload,wed_extraload,"
			+ "wed_divide,mem_id,wed_sliname1,wed_sliname2,wed_sliname3,wed_sliname4,"
			+ "wed_thname1,wed_thname2,wed_thname3,wed_thname4,"
			+ "wed_sliload1,wed_sliload2,wed_sliload3,wed_sliload4,"
			+ "wed_thload1,wed_thload2,wed_thload3,wed_thload4) "
			+ "VALUES(h_weding_seq.nextval,#{wed_realtitle},#{wed_title},#{wed_retitle},"
			+ "#{wed_topname},#{wed_midname,jdbcType=VARCHAR},#{wed_lowname,jdbcType=VARCHAR},"
			+ "#{wed_extraname,jdbcType=VARCHAR},#{wed_topload},#{wed_midload,jdbcType=BLOB},"
			+ "#{wed_lowload,jdbcType=BLOB},#{wed_extraload,jdbcType=BLOB},#{wed_divide},"
			+ "#{mem_id},#{wed_sliname1,jdbcType=VARCHAR},#{wed_sliname2,jdbcType=VARCHAR},"
			+ "#{wed_sliname3,jdbcType=VARCHAR},#{wed_sliname4,jdbcType=VARCHAR},"
			+ "#{wed_thname1,jdbcType=VARCHAR},#{wed_thname2,jdbcType=VARCHAR},"
			+ "#{wed_thname3,jdbcType=VARCHAR},#{wed_thname4,jdbcType=VARCHAR},"
			+ "#{wed_sliload1,jdbcType=BLOB},#{wed_sliload2,jdbcType=BLOB},"
			+ "#{wed_sliload3,jdbcType=BLOB},#{wed_sliload4,jdbcType=BLOB},"
			+ "#{wed_thload1,jdbcType=BLOB},#{wed_thload2,jdbcType=BLOB},"
			+ "#{wed_thload3,jdbcType=BLOB},#{wed_thload4,jdbcType=BLOB})")
	public void insert(WedingCommand weding);
	
	@Select("SELECT * FROM h_weding WHERE wed_seq=#{wed_seq}")
	public WedingCommand selectWeding(Integer seq);
	
	
	@Update("UPDATE h_weding SET wed_realtitle=#{wed_realtitle},wed_title=#{wed_title},"
			+ "wed_retitle=#{wed_retitle},wed_topname=#{wed_topname},"
			+ "wed_midname=#{wed_midname,jdbcType=VARCHAR},wed_lowname=#{wed_lowname,jdbcType=VARCHAR},"
			+ "wed_extraname=#{wed_extraname,jdbcType=VARCHAR},wed_topload=#{wed_topload},"
			+ "wed_midload=#{wed_midload,jdbcType=BLOB},wed_lowload=#{wed_lowload,jdbcType=BLOB},"
			+ "wed_extraload=#{wed_extraload,jdbcType=BLOB},wed_sliname1=#{wed_sliname1,jdbcType=VARCHAR},"
			+ "wed_sliname2=#{wed_sliname2,jdbcType=VARCHAR},"
			+ "wed_sliname3=#{wed_sliname3,jdbcType=VARCHAR},wed_sliname4=#{wed_sliname4,jdbcType=VARCHAR},"
			+ "wed_thname1=#{wed_thname1,jdbcType=VARCHAR},wed_thname2=#{wed_thname2,jdbcType=VARCHAR},"
			+ "wed_thname3=#{wed_thname3,jdbcType=VARCHAR},wed_thname4=#{wed_thname4,jdbcType=VARCHAR},"
			+ "wed_sliload1=#{wed_sliload1,jdbcType=BLOB},wed_sliload2=#{wed_sliload2,jdbcType=BLOB},"
			+ "wed_sliload3=#{wed_sliload3,jdbcType=BLOB},wed_sliload4=#{wed_sliload4,jdbcType=BLOB},"
			+ "wed_thload1=#{wed_thload1,jdbcType=BLOB},wed_thload2=#{wed_thload2,jdbcType=BLOB},"
			+ "wed_thload3=#{wed_thload3,jdbcType=BLOB},wed_thload4=#{wed_thload4,jdbcType=BLOB} "
			+ "WHERE wed_seq=#{wed_seq}")
	public void update(WedingCommand weding);
	
	@Delete("DELETE FROM h_weding WHERE wed_seq=#{wed_seq}")
	public void delete(Integer seq);
}
