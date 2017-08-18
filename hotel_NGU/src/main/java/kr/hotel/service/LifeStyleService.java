package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.LifeStyleCommand;

@Transactional
public interface LifeStyleService {
	@Transactional(readOnly=true)
	public List<LifeStyleCommand> list(Map<String,Object> map);

	@Transactional(readOnly=true)
	public int getRowCount(Map<String, Object> map);
	
	public void insert(LifeStyleCommand lifestyle);
	
	@Transactional(readOnly=true)
	public LifeStyleCommand selectLifeStyle(Integer seq);
	
	public void update(LifeStyleCommand lifestyle);
	
	public void delete(Integer seq);
	
	//public LifeStyleCommand selectSlide(Integer seq);

	
}
