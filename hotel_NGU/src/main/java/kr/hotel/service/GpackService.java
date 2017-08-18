package kr.hotel.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import kr.hotel.domain.GpackCommand;

@Transactional
public interface GpackService {

	@Transactional(readOnly=true)
	public List<GpackCommand> list(Map<String, Object> map);
	public void gpInsert(GpackCommand gp);
	@Transactional(readOnly=true)
	public GpackCommand selectGpack(int gpa_seq);
	public void gpUpdate(GpackCommand gp);
	public void gpDelete(int gpa_seq);
	public int getRowCount(Map<String, Object> map);
}
