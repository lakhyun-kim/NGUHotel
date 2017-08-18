package kr.hotel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.LifeStyleMapper;
import kr.hotel.domain.LifeStyleCommand;



@Service("lifestyleService")
public class LifeStyleServiceImpl implements LifeStyleService{

	@Resource
	private LifeStyleMapper lifestyleMapper;
	
	@Override
	public List<LifeStyleCommand> list(Map<String, Object> map) {
		return lifestyleMapper.list(map);
	}

	@Override
	public void insert(LifeStyleCommand lifestyle) {
		lifestyleMapper.insert(lifestyle);
	}

	@Override
	public LifeStyleCommand selectLifeStyle(Integer seq) {
		return lifestyleMapper.selectLifeStyle(seq);
	}

	@Override
	public void update(LifeStyleCommand lifestyle) {
		lifestyleMapper.update(lifestyle);
	}

	@Override
	public void delete(Integer seq) {
		lifestyleMapper.delete(seq);
	}

	@Override
	public int getRowCount(Map<String, Object> map) {
		
		return lifestyleMapper.getRowCount(map);
	}

	/*@Override
	public LifeStyleCommand selectSlide(Integer seq) {
		return lifestyleMapper.selectSlide(seq);
	}*/

}
