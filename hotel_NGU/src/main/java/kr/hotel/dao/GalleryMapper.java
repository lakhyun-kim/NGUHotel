package kr.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.hotel.domain.GalleryCommand;

public interface GalleryMapper {

	@Insert("INSERT INTO h_gallery(h_gallery_seq,h_gallery_type,h_gallery_filename1,h_gallery_filename2,h_gallery_filename3,h_gallery_filename4,h_gallery_filename5,h_gallery_filename6,h_gallery_filename7,h_gallery_filename8,h_gallery_filename9,h_gallery_filename10,h_gallery_filename11,h_gallery_filename12,"
			+ "h_gallery_upload1,h_gallery_upload2,h_gallery_upload3,h_gallery_upload4,h_gallery_upload5,h_gallery_upload6,h_gallery_upload7,h_gallery_upload8,h_gallery_upload9,h_gallery_upload10,h_gallery_upload11,h_gallery_upload12,h_gallery_subject,h_gallery_content,mem_id)"
			+ " VALUES(h_gallery_seq.nextval,#{h_gallery_type},#{h_gallery_filename1},#{h_gallery_filename2,jdbcType=VARCHAR},#{h_gallery_filename3,jdbcType=VARCHAR},#{h_gallery_filename4,jdbcType=VARCHAR},"
			+ "#{h_gallery_filename5,jdbcType=VARCHAR},#{h_gallery_filename6,jdbcType=VARCHAR},#{h_gallery_filename7,jdbcType=VARCHAR},#{h_gallery_filename8,jdbcType=VARCHAR},#{h_gallery_filename9,jdbcType=VARCHAR},#{h_gallery_filename10,jdbcType=VARCHAR},#{h_gallery_filename11,jdbcType=VARCHAR},#{h_gallery_filename12,jdbcType=VARCHAR},"
			+ "#{h_gallery_upload1},#{h_gallery_upload2,jdbcType=BLOB},#{h_gallery_upload3,jdbcType=BLOB},#{h_gallery_upload4,jdbcType=BLOB},#{h_gallery_upload5,jdbcType=BLOB},#{h_gallery_upload6,jdbcType=BLOB},#{h_gallery_upload7,jdbcType=BLOB},#{h_gallery_upload8,jdbcType=BLOB},#{h_gallery_upload9,jdbcType=BLOB},#{h_gallery_upload10,jdbcType=BLOB},#{h_gallery_upload11,jdbcType=BLOB},#{h_gallery_upload12,jdbcType=BLOB},"
			+ "#{h_gallery_subject},#{h_gallery_content},#{mem_id})")
	public void insert(GalleryCommand gallery);
	@Update("UPDATE h_gallery SET h_gallery_type=#{h_gallery_type},h_gallery_filename1=#{h_gallery_filename1},h_gallery_filename2=#{h_gallery_filename2,jdbcType=VARCHAR},h_gallery_filename3=#{h_gallery_filename3,jdbcType=VARCHAR},h_gallery_filename4=#{h_gallery_filename4,jdbcType=VARCHAR},"
			+ "h_gallery_filename5=#{h_gallery_filename5,jdbcType=VARCHAR},h_gallery_filename6=#{h_gallery_filename6,jdbcType=VARCHAR},h_gallery_filename7=#{h_gallery_filename7,jdbcType=VARCHAR},h_gallery_filename8=#{h_gallery_filename8,jdbcType=VARCHAR},h_gallery_filename9=#{h_gallery_filename9,jdbcType=VARCHAR},h_gallery_filename10=#{h_gallery_filename10,jdbcType=VARCHAR},h_gallery_filename11=#{h_gallery_filename11,jdbcType=VARCHAR},h_gallery_filename12=#{h_gallery_filename12,jdbcType=VARCHAR},"
			+ "h_gallery_upload1=#{h_gallery_upload1},h_gallery_upload2=#{h_gallery_upload2,jdbcType=BLOB},h_gallery_upload3=#{h_gallery_upload3,jdbcType=BLOB},"
			+ "h_gallery_upload4=#{h_gallery_upload4,jdbcType=BLOB},h_gallery_upload5=#{h_gallery_upload5,jdbcType=BLOB},h_gallery_upload6=#{h_gallery_upload6,jdbcType=BLOB},h_gallery_upload7=#{h_gallery_upload7,jdbcType=BLOB},h_gallery_upload8=#{h_gallery_upload8,jdbcType=BLOB},h_gallery_upload9=#{h_gallery_upload9,jdbcType=BLOB},h_gallery_upload10=#{h_gallery_upload10,jdbcType=BLOB},h_gallery_upload11=#{h_gallery_upload11,jdbcType=BLOB},h_gallery_upload12=#{h_gallery_upload12,jdbcType=BLOB},h_gallery_subject=#{h_gallery_subject},h_gallery_content=#{h_gallery_content},mem_id=#{mem_id} WHERE h_gallery_seq=#{h_gallery_seq}")
	public void update(GalleryCommand gallery);
	@Delete("DELETE FROM h_gallery WHERE h_gallery_seq=#{h_gallery_seq}")
	public void delete(Integer h_gallery_seq);
	@Select("SELECT * FROM h_gallery WHERE h_gallery_seq=#{h_gallery_seq}")
	public GalleryCommand detail(Integer h_gallery_seq);
	@Select("SELECT * FROM h_gallery")
	public List<GalleryCommand> list();
}
