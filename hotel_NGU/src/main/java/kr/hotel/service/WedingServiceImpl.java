package kr.hotel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.WedingMapper;
import kr.hotel.domain.WedingCommand;

@Service("wedingService")
public class WedingServiceImpl implements WedingService{

	@Resource
	private WedingMapper wedingMapper;
	
	@Override
	public List<WedingCommand> list(Map<String, Object> map) {
		return wedingMapper.list(map);
	}

	@Override
	public int getRowCount(Map<String, Object> map) {
		return wedingMapper.getRowCount(map);
	}

	@Override
	public void insert(WedingCommand weding) {
		wedingMapper.insert(weding);
	}

	@Override
	public WedingCommand selectWeding(Integer seq) {
		return wedingMapper.selectWeding(seq);
	}

	@Override
	public void update(WedingCommand weding) {
		wedingMapper.update(weding);
	}

	@Override
	public void delete(Integer seq) {
		wedingMapper.delete(seq);
	}

}
