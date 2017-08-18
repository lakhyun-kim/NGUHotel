package kr.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.hotel.domain.EventCommand;

public interface EventMapper {

	@Insert("INSERT INTO h_event(event_seq,event_price1,event_price2,event_date1,event_date2,event_division,event_subject,event_content1,event_content2,event_content3,event_content4,event_content5,event_filename1,event_filename2,event_filename3,event_filename4,event_filename5,event_upload1,event_upload2,event_upload3,event_upload4,event_upload5,mem_id)"
			+ " VALUES(h_event_seq.nextval,#{event_price1,jdbcType=VARCHAR},#{event_price2,jdbcType=VARCHAR},#{event_date1},#{event_date2},#{event_division},#{event_subject},#{event_content1},#{event_content2,jdbcType=VARCHAR},#{event_content3,jdbcType=VARCHAR},#{event_content4,jdbcType=VARCHAR},#{event_content5,jdbcType=VARCHAR},"
			+ "#{event_filename1},#{event_filename2,jdbcType=VARCHAR},#{event_filename3,jdbcType=VARCHAR},#{event_filename4,jdbcType=VARCHAR},#{event_filename5,jdbcType=VARCHAR},"
			+ "#{event_upload1},#{event_upload2,jdbcType=BLOB},#{event_upload3,jdbcType=BLOB},#{event_upload4,jdbcType=BLOB},#{event_upload5,jdbcType=BLOB},#{mem_id})")
	public void insert(EventCommand event);
	@Update("UPDATE h_event SET event_price1=#{event_price1,jdbcType=VARCHAR},event_price2=#{event_price2,jdbcType=VARCHAR},event_date1=#{event_date1},event_date2=#{event_date2},event_division=#{event_division},event_subject=#{event_subject},event_content1=#{event_content1},event_content2=#{event_content2,jdbcType=VARCHAR},event_content3=#{event_content3,jdbcType=VARCHAR},"
			+ "event_content4=#{event_content4,jdbcType=VARCHAR},event_content5=#{event_content5,jdbcType=VARCHAR},event_filename1=#{event_filename1},event_filename2=#{event_filename2,jdbcType=VARCHAR},event_filename3=#{event_filename3,jdbcType=VARCHAR},event_filename4=#{event_filename4,jdbcType=VARCHAR},event_filename5=#{event_filename5,jdbcType=VARCHAR},"
			+ "event_upload1=#{event_upload1},event_upload2=#{event_upload2,jdbcType=BLOB},event_upload3=#{event_upload3,jdbcType=BLOB},event_upload4=#{event_upload4,jdbcType=BLOB},event_upload5=#{event_upload5,jdbcType=BLOB},mem_id=#{mem_id} WHERE event_seq=#{event_seq}")
	public void update(EventCommand event_seq);
	@Delete("DELETE FROM h_event WHERE event_seq=#{event_seq}")
	public void delete(Integer seq);
	@Select("SELECT * FROM h_event WHERE event_seq=#{event_seq}")
	public EventCommand detail(Integer event_seq);
	@Select("SELECT * FROM h_event")
	public List<EventCommand> list();
}
