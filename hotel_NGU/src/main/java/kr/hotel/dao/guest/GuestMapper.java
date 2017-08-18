package kr.hotel.dao.guest;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.hotel.domain.GuestCommand;

public interface GuestMapper {
	
	public List<GuestCommand> gueList(Map<String, Object> map);
	
	public int getRowCount(Map<String, Object> map);
	
	@Select("SELECT guest_seq.nextval FROM dual")
	public int getGue_num();
	
	@Insert("INSERT INTO h_guest"
		  + "(gue_num,gue_sel,gue_title,gue_stitle,gue_type,gue_size,gue_date,gue_uploadfile,gue_filename,"
		  + "gue_ltopfile,gue_ltopfilename,gue_lbotfile,gue_lbotfilename,gue_rtopfile,gue_rtopfilename,gue_rbotfile,gue_rbotfilename,"
		  + "mem_id)"
		  + " VALUES (#{gue_num},#{gue_sel},#{gue_title},#{gue_stitle},#{gue_type},#{gue_size},sysdate,#{gue_uploadfile,jdbcType=BLOB},"
		  + "#{gue_filename,jdbcType=VARCHAR},#{gue_ltopfile,jdbcType=BLOB},#{gue_ltopfilename,jdbcType=VARCHAR},"
		  + "#{gue_lbotfile,jdbcType=BLOB},#{gue_lbotfilename,jdbcType=VARCHAR},#{gue_rtopfile,jdbcType=BLOB},#{gue_rtopfilename,jdbcType=VARCHAR},"
		  + "#{gue_rbotfile,jdbcType=BLOB},#{gue_rbotfilename,jdbcType=VARCHAR},#{mem_id})")
	public void gueinsert(GuestCommand guest);
	
	@Insert("INSERT INTO gue_slide"
			  + "(sli_file1,sli_file2,sli_file3,sli_file4,"
			  + "thum_file1,thum_file2,thum_file3,thum_file4,"
			  + "sli_fname1,sli_fname2,sli_fname3,sli_fname4,"
			  + "sli_thname1,sli_thname2,sli_thname3,sli_thname4,gue_num) VALUES "
			  + "(#{sli_file1,jdbcType=BLOB},#{sli_file2,jdbcType=BLOB},"
			  + "#{sli_file3,jdbcType=BLOB},#{sli_file4,jdbcType=BLOB},"
			  + "#{thum_file1,jdbcType=BLOB},#{thum_file2,jdbcType=BLOB},"
			  + "#{thum_file3,jdbcType=BLOB},#{thum_file4,jdbcType=BLOB},"
			  + "#{sli_fname1,jdbcType=VARCHAR},#{sli_fname2,jdbcType=VARCHAR},"
			  + "#{sli_fname3,jdbcType=VARCHAR},#{sli_fname4,jdbcType=VARCHAR},"
			  + "#{sli_thname1,jdbcType=VARCHAR},#{sli_thname2,jdbcType=VARCHAR},"
			  + "#{sli_thname3,jdbcType=VARCHAR},#{sli_thname4,jdbcType=VARCHAR},#{gue_num})")
		public void sliinsert(GuestCommand guest);
	
	@Select("SELECT * FROM h_guest WHERE gue_num=#{gue_num}")
	public GuestCommand selectGuest(int gue_num);
	
	@Select("SELECT * FROM gue_slide WHERE gue_num=#{gue_num}")
	public GuestCommand selectSlide(int gue_num);
	
	@Update("UPDATE h_guest SET "
		  + "gue_title=#{gue_title},gue_stitle=#{gue_stitle},"
		  + "gue_type=#{gue_type},gue_size=#{gue_size},"
		  + "gue_uploadfile=#{gue_uploadfile,jdbcType=BLOB},gue_filename=#{gue_filename,jdbcType=VARCHAR},"
		  + "gue_ltopfile=#{gue_ltopfile,jdbcType=BLOB},gue_ltopfilename=#{gue_ltopfilename,jdbcType=VARCHAR},"
		  + "gue_lbotfile=#{gue_lbotfile,jdbcType=BLOB},gue_lbotfilename=#{gue_lbotfilename,jdbcType=VARCHAR},"
		  + "gue_rtopfile=#{gue_rtopfile,jdbcType=BLOB},gue_rtopfilename=#{gue_rtopfilename,jdbcType=VARCHAR},"
		  + "gue_rbotfile=#{gue_rbotfile,jdbcType=BLOB},gue_rbotfilename=#{gue_rbotfilename,jdbcType=VARCHAR},mem_id=#{mem_id} "
		  + "WHERE gue_num=#{gue_num}")
	public void gueUpdate(GuestCommand guest);
	
	@Update("UPDATE gue_slide SET "
		  + "sli_file1=#{sli_file1,jdbcType=BLOB},sli_fname1=#{sli_fname1,jdbcType=VARCHAR},"
		  + "sli_file2=#{sli_file2,jdbcType=BLOB},sli_fname2=#{sli_fname2,jdbcType=VARCHAR},"
		  + "sli_file3=#{sli_file3,jdbcType=BLOB},sli_fname3=#{sli_fname3,jdbcType=VARCHAR},"
		  + "sli_file4=#{sli_file4,jdbcType=BLOB},sli_fname4=#{sli_fname4,jdbcType=VARCHAR},"
		  + "thum_file1=#{thum_file1,jdbcType=BLOB},sli_thname1=#{sli_thname1,jdbcType=VARCHAR},"
		  + "thum_file2=#{thum_file2,jdbcType=BLOB},sli_thname2=#{sli_thname2,jdbcType=VARCHAR},"
		  + "thum_file3=#{thum_file3,jdbcType=BLOB},sli_thname3=#{sli_thname3,jdbcType=VARCHAR},"
		  + "thum_file4=#{thum_file4,jdbcType=BLOB},sli_thname4=#{sli_thname4,jdbcType=VARCHAR},mem_id=#{mem_id} "
		  + "WHERE gue_num=#{gue_num}")
	public void sliUpdate(GuestCommand guest);
	
	@Delete("DELETE FROM h_guest WHERE gue_num=#{gue_num}")
	public void guedelete(int gue_num);
	@Delete("DELETE FROM gue_slide WHERE gue_num=#{gue_num}")
	public void sliDelete(int gue_num);	
}



