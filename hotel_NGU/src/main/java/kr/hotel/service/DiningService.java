package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.DiningCommand;
import kr.hotel.domain.DiningReserveCommand;


@Transactional
public interface DiningService{

	public void insert(DiningCommand dining);
	
	@Transactional(readOnly=true)
	public List<DiningCommand> list(Map<String, Object> map);
	
	@Transactional(readOnly=true)
	public int getRowCount(Map<String,Object> map);
	@Transactional(readOnly=true)
	public DiningCommand selectDining(Integer seq);
	public void update(DiningCommand dining);
	public void delete(Integer seq);
	
	public void insert(DiningReserveCommand drCommand);
	
	@Transactional(readOnly=true)
	public List<DiningReserveCommand> result(Map<String, Object> map);
	public DiningReserveCommand selectDining2(Integer din_seq);
	public void delete2(Integer din_seq);
	
}
