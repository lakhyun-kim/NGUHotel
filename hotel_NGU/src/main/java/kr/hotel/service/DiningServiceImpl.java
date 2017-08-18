package kr.hotel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.DiningMapper;
import kr.hotel.domain.DiningCommand;
import kr.hotel.domain.DiningReserveCommand;


@Service("diningService")
public class DiningServiceImpl implements DiningService {

	@Resource 
	private DiningMapper diningMapper;
	
	@Override
	public void insert(DiningCommand dining) {
		diningMapper.insert(dining);
		
	}

	@Override
	public List<DiningCommand> list(Map<String, Object> map) {
		
		return diningMapper.list(map);
	}

	@Override
	public int getRowCount(Map<String, Object> map) {
		
		return diningMapper.getRowCount(map);
	}
	
	@Override
	public DiningCommand selectDining(Integer seq) {
		
		return diningMapper.selectDining(seq);
	}

	@Override
	public void update(DiningCommand dining) {
		diningMapper.update(dining);
		
	}

	@Override
	public void delete(Integer seq) {
		diningMapper.delete(seq);
		
	}

	@Override
	public void insert(DiningReserveCommand diningReserve) {
		diningMapper.insert2(diningReserve);
		
	}

	@Override
	public List<DiningReserveCommand> result(Map<String, Object> map) {
		return diningMapper.result(map);
		
	}

	@Override
	public DiningReserveCommand selectDining2(Integer din_seq) {
		
		return diningMapper.selectDining2(din_seq);
	}

	@Override
	public void delete2(Integer din_seq) {
		
		diningMapper.delete2(din_seq);
		
	}

}
