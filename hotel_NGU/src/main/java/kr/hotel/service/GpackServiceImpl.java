package kr.hotel.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.hotel.dao.gpack.GpackMapper;
import kr.hotel.domain.GpackCommand;

@Service("gpackService")
public class GpackServiceImpl implements GpackService{

	@Resource
	private GpackMapper gpMapper;
	
	@Override
	public List<GpackCommand> list(Map<String, Object> map) {
		return gpMapper.gpList(map);
	}

	@Override
	public void gpInsert(GpackCommand gp) {
		gp.setGpa_seq(gpMapper.getGpa_seq());
		gpMapper.gpInsert(gp);
	}

	@Override
	public GpackCommand selectGpack(int gpa_seq) {
		return gpMapper.selectGpack(gpa_seq);
	}

	@Override
	public void gpUpdate(GpackCommand gp) {
		gpMapper.gpUpdate(gp);
	}

	@Override
	public void gpDelete(int gpa_seq) {
		gpMapper.gpDelete(gpa_seq);
	}

	@Override
	public int getRowCount(Map<String, Object> map) {
		return gpMapper.getRowCount(map);
	}

}
