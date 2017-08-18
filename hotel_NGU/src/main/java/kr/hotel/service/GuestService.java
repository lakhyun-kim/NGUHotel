package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.GuestCommand;

@Transactional
public interface GuestService{
	
	@Transactional(readOnly=true)
	public List<GuestCommand> list(Map<String, Object> map);
	public void gueinsert(GuestCommand guest);
	@Transactional(readOnly=true)
	public GuestCommand selectGuest(int gue_num);	
	public void gueUpdate(GuestCommand guest);	
	public void guedelete(int gue_num);
	public int getRowCount(Map<String, Object> map);
	@Transactional(readOnly=true)
	public GuestCommand selectSlide(int gue_num);
}
