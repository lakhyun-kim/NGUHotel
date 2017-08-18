package kr.hotel.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.hotel.domain.DiningCommand;
import kr.hotel.domain.DiningReserveCommand;

public interface DiningMapper {

	public List<DiningCommand> list(Map<String, Object> map);
	
	public List<DiningReserveCommand> result(Map<String, Object> map);
	
	
	
	public int getRowCount(Map<String,Object> map);
	
	@Insert("INSERT INTO h_dining (seq,din_title,din_subtitle,din_class,din_loc,din_phone,din_uf1,din_fn1,din_time1,din_time2,din_seat,din_uf2,din_fn2,din_uf3,din_fn3,din_uf4,din_fn4,din_uf5,din_fn5,din_uf6,din_fn6,din_uf7,din_fn7,din_uf8,din_fn8,din_uf9,din_fn9,din_uf10,din_fn10,din_uf11,din_fn11,mem_id) "
			+ "VALUES (h_dining_seq.nextval,#{din_title}, #{din_subtitle}, #{din_class}, #{din_loc}, #{din_phone}, #{din_uf1}, #{din_fn1}, #{din_time1}, #{din_time2}, #{din_seat}, #{din_uf2}, #{din_fn2}, #{din_uf3}, #{din_fn3}, #{din_uf4}, #{din_fn4}, #{din_uf5}, #{din_fn5}, #{din_uf6}, #{din_fn6}, #{din_uf7}, #{din_fn7}, #{din_uf8}, #{din_fn8}, #{din_uf9}, #{din_fn9}, #{din_uf10}, #{din_fn10}, #{din_uf11}, #{din_fn11}, #{mem_id})")
	public void insert(DiningCommand h_dining);
	@Select("SELECT * FROM h_dining WHERE seq=#{seq}")
	public DiningCommand selectDining(Integer seq);
	@Update("UPDATE h_dining SET din_title=#{din_title},din_subtitle=#{din_subtitle},din_class=#{din_class},din_loc=#{din_loc},din_phone=#{din_phone},din_uf1=#{din_uf1},"
			+ "din_fn1=#{din_fn1},din_time1=#{din_time1},din_time2=#{din_time2},din_seat=#{din_seat},din_uf2=#{din_uf2},din_fn2=#{din_fn2},din_uf3=#{din_uf3},din_fn3=#{din_fn3},"
			+ "din_uf4=#{din_uf4},din_fn4=#{din_fn4},din_uf5=#{din_uf5},din_fn5=#{din_fn5},din_uf6=#{din_uf6},din_fn6=#{din_fn6},din_uf7=#{din_uf7},din_fn7=#{din_fn7},din_uf8=#{din_uf8},din_fn8=#{din_fn8},din_uf9=#{din_uf9},din_fn9=#{din_fn9},din_uf10=#{din_uf10},din_fn10=#{din_fn10},din_uf11=#{din_uf11},din_fn11=#{din_fn11},mem_id=#{mem_id} WHERE seq=#{seq}")
	public void update(DiningCommand dining);
	@Delete("DELETE FROM h_dining WHERE seq=#{seq}")
	public void delete(Integer seq);
	
	@Insert("INSERT INTO h_din_reserve(seq,din_res_date,din_res_time,din_res_person,din_res_name,din_res_phone,din_res_email,din_res_require,din_res_status,din_seq) "
			+ "VALUES (h_din_reserve_seq.nextval, #{din_res_date}, #{din_res_time}, #{din_res_person}, #{din_res_name}, #{din_res_phone}, #{din_res_email}, #{din_res_require}, #{din_res_status}, #{din_seq})")
	public void insert2(DiningReserveCommand h_din_reserve);
	@Select("SELECT * FROM h_din_reserve WHERE din_seq=#{din_seq}")
	public DiningReserveCommand selectDining2(Integer din_seq);
	@Delete("DELETE FROM h_din_reserve WHERE din_seq=#{din_seq}")
	public void delete2(Integer din_seq);
	
}
