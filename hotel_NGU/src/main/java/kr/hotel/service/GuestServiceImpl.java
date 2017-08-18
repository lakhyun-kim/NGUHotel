package kr.hotel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.guest.GuestMapper;
import kr.hotel.domain.GuestCommand;

@Service("guestService")
public class GuestServiceImpl implements GuestService{

	@Resource
	private GuestMapper gueMapper;
	
	@Override
	public void gueinsert(GuestCommand guest) {
		guest.setGue_num(gueMapper.getGue_num());
		gueMapper.gueinsert(guest);
		gueMapper.sliinsert(guest);
	}
	
	@Override
	public int getRowCount(Map<String, Object> map) {
		return gueMapper.getRowCount(map);
	}

	@Override
	public GuestCommand selectGuest(int gue_num) {
		return gueMapper.selectGuest(gue_num);
	}

	@Override
	public void gueUpdate(GuestCommand guest) {
		gueMapper.gueUpdate(guest);
		gueMapper.sliUpdate(guest);
	}

	@Override
	public void guedelete(int gue_num) {
		gueMapper.sliDelete(gue_num);
		gueMapper.guedelete(gue_num);
	}

	@Override
	public List<GuestCommand> list(Map<String, Object> map) {
		return gueMapper.gueList(map);
	}

	@Override
	public GuestCommand selectSlide(int gue_num) {
		return gueMapper.selectSlide(gue_num);
	}

}
