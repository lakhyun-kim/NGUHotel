package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.WedingCommand;

@Transactional
public interface WedingService {
	@Transactional(readOnly=true)
	public List<WedingCommand> list(Map<String,Object> map);
	
	@Transactional(readOnly=true)
	public int getRowCount(Map<String, Object> map);
	
	public void insert(WedingCommand weding);
	
	@Transactional(readOnly=true)
	public WedingCommand selectWeding(Integer seq);
	
	public void update(WedingCommand weding);
	
	public void delete(Integer seq);
}
