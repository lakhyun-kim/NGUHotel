package kr.hotel.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.hotel.domain.LifeStyleCommand;

public interface LifeStyleMapper {
	public List<LifeStyleCommand> list(Map<String,Object> map);
	
	public int getRowCount(Map<String, Object> map);
	
	@Insert("INSERT INTO h_lifestyle(lif_seq,lif_realtitle,lif_title,lif_retitle,"
			+ "lif_topname,lif_midname,lif_lowname,lif_extraname,"
			+ "lif_topload,lif_midload,lif_lowload,lif_extraload,"
			+ "lif_divide,mem_id,lif_sliname1,lif_sliname2,lif_sliname3,lif_sliname4,"
			+ "lif_thname1,lif_thname2,lif_thname3,lif_thname4,"
			+ "lif_sliload1,lif_sliload2,lif_sliload3,lif_sliload4,"
			+ "lif_thload1,lif_thload2,lif_thload3,lif_thload4) "
			+ "VALUES(h_lifestyle_seq.nextval,#{lif_realtitle},#{lif_title},#{lif_retitle},"
			+ "#{lif_topname},#{lif_midname,jdbcType=VARCHAR},#{lif_lowname,jdbcType=VARCHAR},"
			+ "#{lif_extraname,jdbcType=VARCHAR},#{lif_topload},#{lif_midload,jdbcType=BLOB},"
			+ "#{lif_lowload,jdbcType=BLOB},#{lif_extraload,jdbcType=BLOB},#{lif_divide},"
			+ "#{mem_id},#{lif_sliname1,jdbcType=VARCHAR},#{lif_sliname2,jdbcType=VARCHAR},"
			+ "#{lif_sliname3,jdbcType=VARCHAR},#{lif_sliname4,jdbcType=VARCHAR},"
			+ "#{lif_thname1,jdbcType=VARCHAR},#{lif_thname2,jdbcType=VARCHAR},"
			+ "#{lif_thname3,jdbcType=VARCHAR},#{lif_thname4,jdbcType=VARCHAR},"
			+ "#{lif_sliload1,jdbcType=BLOB},#{lif_sliload2,jdbcType=BLOB},"
			+ "#{lif_sliload3,jdbcType=BLOB},#{lif_sliload4,jdbcType=BLOB},"
			+ "#{lif_thload1,jdbcType=BLOB},#{lif_thload2,jdbcType=BLOB},"
			+ "#{lif_thload3,jdbcType=BLOB},#{lif_thload4,jdbcType=BLOB})")

	public void insert(LifeStyleCommand lifestyle);
	
	@Select("SELECT * FROM h_lifestyle WHERE lif_seq=#{lif_seq}")
	public LifeStyleCommand selectLifeStyle(Integer seq);
	
	@Update("UPDATE h_lifestyle SET lif_realtitle=#{lif_realtitle},lif_title=#{lif_title},"
			+ "lif_retitle=#{lif_retitle},lif_topname=#{lif_topname},"
			+ "lif_midname=#{lif_midname,jdbcType=VARCHAR},lif_lowname=#{lif_lowname,jdbcType=VARCHAR},"
			+ "lif_extraname=#{lif_extraname,jdbcType=VARCHAR},lif_topload=#{lif_topload},"
			+ "lif_midload=#{lif_midload,jdbcType=BLOB},lif_lowload=#{lif_lowload,jdbcType=BLOB},"
			+ "lif_extraload=#{lif_extraload,jdbcType=BLOB},lif_sliname1=#{lif_sliname1,jdbcType=VARCHAR},"
			+ "lif_sliname2=#{lif_sliname2,jdbcType=VARCHAR},"
			+ "lif_sliname3=#{lif_sliname3,jdbcType=VARCHAR},lif_sliname4=#{lif_sliname4,jdbcType=VARCHAR},"
			+ "lif_thname1=#{lif_thname1,jdbcType=VARCHAR},lif_thname2=#{lif_thname2,jdbcType=VARCHAR},"
			+ "lif_thname3=#{lif_thname3,jdbcType=VARCHAR},lif_thname4=#{lif_thname4,jdbcType=VARCHAR},"
			+ "lif_sliload1=#{lif_sliload1,jdbcType=BLOB},lif_sliload2=#{lif_sliload2,jdbcType=BLOB},"
			+ "lif_sliload3=#{lif_sliload3,jdbcType=BLOB},lif_sliload4=#{lif_sliload4,jdbcType=BLOB},"
			+ "lif_thload1=#{lif_thload1,jdbcType=BLOB},lif_thload2=#{lif_thload2,jdbcType=BLOB},"
			+ "lif_thload3=#{lif_thload3,jdbcType=BLOB},lif_thload4=#{lif_thload4,jdbcType=BLOB} "
			+ "WHERE lif_seq=#{lif_seq}")
	public void update(LifeStyleCommand lifestyle);
	
	@Delete("DELETE FROM h_lifestyle WHERE lif_seq=#{lif_seq}")
	public void delete(Integer seq);
	
	
}
